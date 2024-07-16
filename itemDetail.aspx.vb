
Partial Class itemDetail
    Inherits System.Web.UI.Page
    Dim obj As New Communicationclass
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim iid As Integer = Request.QueryString("iid")
        Dim dt, imgdt As New Data.DataTable
        dt = obj.getTable("SELECT * FROM ITEM_MASTER WHERE IID=" & iid)
        imgdt = obj.getTable("SELECT * FROM IMG_MASTER WHERE IID=" & iid)

        '=========================================
        Dim sqty As Integer = obj.getTable("SELECT QTY FROM STOCK_MASTER WHERE IID=" & iid).Rows(0).Item(0)
        Me.lblOutofStock.Text = ""
        If (sqty <= 0) Then
            Me.btnAddCart.Enabled = False
            Me.lblOutofStock.ForeColor = Drawing.Color.Red
            Me.lblOutofStock.Text = "Out of stock"
        Else
            Me.lblOutofStock.ForeColor = Drawing.Color.Green
            Me.lblOutofStock.Text = "Only " & sqty & " left"
        End If
        '================================================
        Dim sb As New StringBuilder
        For I = 0 To imgdt.Rows.Count - 1
            sb.Append("<a href='ImgItem/" & imgdt.Rows(I).Item("ipath") & "'> <img style='width:29%' src='ImgItem/" & imgdt.Rows(I).Item("ipath") & "' alt=''/></a>")
        Next
        Me.Literal1.Text = sb.ToString
        Dim sb1 As New StringBuilder
        For I = 0 To 2
            Try
                sb1.Append("<a href='ImgItem/" & imgdt.Rows(I).Item("ipath") & "'> <img style='width:29%' src='ImgItem/" & imgdt.Rows(I).Item("ipath") & "' alt=''/></a>")
            Catch ex As Exception
            End Try
        Next
        Me.Literal3.Text = "<a href='ImgItem/" & imgdt.Rows(0).Item("ipath") & "' title=''><img src='ImgItem/" & imgdt.Rows(0).Item("ipath") & "' style='width:100%' alt=''/></a>"
        Me.Literal2.Text = sb1.ToString

        With dt.Rows(0)
            Me.lblIName.Text = .Item("Iname")
            Me.lblIdesc.Text = .Item("idesc")
            Me.lblPrice.Text = "Price: " & .Item("iPrice") & "/-"
        End With

        Dim spec() As String = dt.Rows(0).Item("Ispec").ToString.Split(",")

        For I = 0 To spec.Length - 1
            Dim s() As String = spec(I).Split(":")
            Try
                Me.Literal4.Text += "<TR><TD><b>" & s(0) & "</b></TD><TD>: " & s(1) & "</TD></TR>"
            Catch ex As Exception

            End Try

        Next

    End Sub

    Protected Sub btnAddCart_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddCart.Click
        Dim iid As Integer = Request.QueryString("iid")
        Dim qry As String = String.Format("INSERT INTO ADD_CART VALUES({0},{1},1)", Session("UID"), iid)
        
        Dim result As String = obj.getTable("SELECT COUNT(*) FROM ADD_CART WHERE UID=" & Session("UID") & " AND IID=" & iid).Rows(0).Item(0)
        If result = 0 Then
            obj.IUD_Operation(qry)
        End If
        Response.Redirect("order.aspx")
    End Sub
End Class
