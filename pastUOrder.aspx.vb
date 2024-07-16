
Partial Class pastUOrder
    Inherits System.Web.UI.Page
    Dim obj As New Communicationclass

    Private Sub LoadData()
        Dim query As String
        query = "SELECT Oid,CONVERT(VARCHAR, Odate, 103) AS Odate,SUM(Qty) AS Qty, SUM(price) AS Total FROM Order_master  WHERE DStatus=1 AND UID=" & Session("UID") & " GROUP BY OID,ODATE"
        Try
            gridView1.DataSource = obj.getTable(query)
            gridView1.DataBind()

        Catch ex As Exception
            Me.lblMsg.Text = ex.Message
        End Try

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LoadData()
    End Sub


    Protected Sub lnkEdit_Click(ByVal sender As Object, ByVal e As EventArgs)

        Dim btnsubmit As LinkButton = TryCast(sender, LinkButton)
        Dim gRow As GridViewRow = DirectCast(btnsubmit.NamingContainer, GridViewRow)
        Dim query As String
        query = "SELECT * FROM ORDER_MASTER WHERE OID=" & gridView1.DataKeys(gRow.RowIndex).Value.ToString()
        '  Me.lblMsg.Text = query
        Me.HiddenField1.Value = gridView1.DataKeys(gRow.RowIndex).Value.ToString()
        Try
            Dim dt As New Data.DataTable
            dt = obj.getTable(query)
            With dt.Rows(0)
                Me.lblOID.Text = .Item("OID")
                Me.lblODate.Text = .Item("ODate")
                Me.lblCID.Text = .Item("CID").ToString
                Me.lblCDate.Text = .Item("CDate")
                Me.lblDDate.Text = .Item("DDate")
                Me.lblADate.Text = .Item("ADate")
            End With

            query = "SELECT B.IID,A.INAME,A.IPRICE,B.QTY FROM ORDER_MASTER B,ITEM_MASTER A WHERE A.IID=B.IID AND OID=" & gridView1.DataKeys(gRow.RowIndex).Value.ToString()
            dt.Clear()
            dt = obj.getTable(query)

            Dim sb As New StringBuilder
            sb.Append("<table border='1' width='100%'><tr><td>IID</td><td>Name</td><td>Qty.</td><td>Price</td></tr>")

            For I = 0 To dt.Rows.Count - 1
                sb.Append("<tr><td>" & dt.Rows(I).Item(0) & "</td><td>" & dt.Rows(I).Item(1) & "</td><td>" & dt.Rows(I).Item(3) & "</td><td>" & dt.Rows(I).Item(2) & "</td></tr>")
            Next
            sb.Append("</table>")
            Me.Literal1.Text = sb.ToString
        Catch ex As Exception
            'Me.lblMsg.Text = ex.Message
        End Try
        Me.ModalPopupExtender1.Show()
    End Sub


End Class
