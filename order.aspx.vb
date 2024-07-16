
Partial Class order
    Inherits System.Web.UI.Page
    Dim obj As New Communicationclass

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        bindGrid()
    End Sub

    Private Sub bindGrid()
        Dim qry As String
        qry = "SELECT '~/ImgItem/' + A.IPATH as IPATH, B.IID, C.INAME, B.QTY, C.IPRICE*B.QTY AS TTOTAL FROM IMG_MASTER AS A, ADD_CART AS B, ITEM_MASTER AS C WHERE A.IID=B.IID AND B.IID=C.IID AND IMGID=(SELECT MIN(IMGID) FROM IMG_MASTER WHERE IID=B.IID) AND UID='" & Session("UID") & "'"
        Dim dt As Data.DataTable
        dt = obj.getTable(qry)
        Me.GridView1.DataSource = dt
        Me.GridView1.DataBind()
        qry = "SELECT sum(C.IPRICE*B.QTY) AS TTOTAL FROM ADD_CART AS B, ITEM_MASTER AS C WHERE C.IID=B.IID AND UID='" & Session("UID") & "'"
        Me.lblTotal.Text = "Total Rs. " & obj.getTable(qry).Rows(0).Item(0)
    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand
        Dim grow As GridViewRow = GridView1.Rows(e.CommandArgument)
        If e.CommandName = "Pluse" Then
            PluseItem(grow.Cells(1).Text)
        ElseIf e.CommandName = "Minus" Then
            MinusItem(grow.Cells(1).Text, grow.Cells(4).Text)
            bindGrid()
        End If
    End Sub

    Private Sub PluseItem(ByVal iid As Integer)
        Dim Qry As String = "UPDATE ADD_CART SET QTY=QTY+1 WHERE IID= " & iid & " AND UID='" & Session("UID") & "'"
        obj.IUD_Operation(Qry)
        bindGrid()
    End Sub

    Private Sub MinusItem(ByVal iid As Integer, ByVal Qty As Integer)
        If Qty = 1 Then
            Dim Qry As String = "DELETE FROM ADD_CART WHERE IID= " & iid & " AND UID='" & Session("UID") & "'"
            obj.IUD_Operation(Qry)
        Else
            Dim Qry As String = "UPDATE ADD_CART SET QTY=QTY-1 WHERE IID= " & iid & " AND UID='" & Session("UID") & "'"
            obj.IUD_Operation(Qry)
        End If
        bindGrid()
    End Sub

    Protected Sub btnorder_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnorder.Click
        If rdcod.Checked Then


            Dim Qry As String

            Dim OID As Integer = obj.PrimaryKey("ORDER_MASTER", "OID")
            Me.lblMsg.Text = ""
            For I = 0 To Me.GridView1.Rows.Count - 1
                Dim iid As Integer = Me.GridView1.Rows(I).Cells(1).Text
                Dim Qty As Integer = Me.GridView1.Rows(I).Cells(4).Text
                '====================================================
                Dim isock As Integer = obj.getTable("SELECT QTY FROM STOCK_MASTER WHERE IID=" & iid).Rows(0).Item(0)
                If (isock < Qty) Then
                    Me.lblMsg.Text = "Insuficiant Item Stock with item IID: " & iid & " available is Qty is: " & isock & " Please update Qty.."
                    Exit Sub
                End If
                '========================================================
                Dim Price As Integer = Me.GridView1.Rows(I).Cells(6).Text / Me.GridView1.Rows(I).Cells(4).Text
                Qry = String.Format("INSERT INTO ORDER_MASTER(OID,UID,IID,ODATE,QTY,PRICE) VALUES({0},{1},{2},'{3}',{4},{5})", OID, Session("UID"), iid, Now.Date.ToString("dd-MMM-yyyy"), Qty, Price)
                obj.IUD_Operation(Qry)
                obj.IUD_Operation("UPDATE STOCK_MASTER SET QTY = QTY-" & Qty & "  WHERE IID=" & iid)
            Next
            obj.IUD_Operation("DELETE FROM ADD_CART WHERE UID=" & Session("UID"))
            bindGrid()
            clear()
            lblMsg.Text = "Your order has been confirmed and will be delivered via Cash on Delivery"
        Else
            Me.lblMsg.Text = "Please select Cash on Delivery before confirming your order"
        End If

        
    End Sub

    Private Sub clear()
        rdcod.Checked = False
        lblTotal.Text = ""
        lblMsg.Text = ""
    End Sub
End Class
