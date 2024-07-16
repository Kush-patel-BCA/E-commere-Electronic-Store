
Partial Class confirmOrder
    Inherits System.Web.UI.Page
    Dim obj As New Communicationclass
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LoadData()
    End Sub


    Private Sub LoadData()
        Dim query As String
        query = "SELECT A.Oid, b.uname, b.address,  CONVERT(VARCHAR, A.Odate, 103) AS Odate, SUM(A.Qty) AS Qty, SUM(A.price) AS Total FROM  Order_master AS A INNER JOIN signup AS b ON A.uid = b.uid WHERE (A.OStatus IS NULL) GROUP BY b.uname, b.address, A.Oid, A.Odate"
        Try  
            gridView1.DataSource = obj.getTable(query)
            gridView1.DataBind()

        Catch ex As Exception
            Me.lblMsg.Text = ex.Message
        End Try

    End Sub

    Protected Sub btnModity_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim result As String = String.Empty
        Me.lblMsg.Text = Me.HiddenField1.Value
        result = obj.IUD_Operation("UPDATE ORDER_MASTER SET OStatus=1,cdate='" & Now.Date.ToString("dd/MMM/yyyy") & "', REMARK=  '" & Me.txtRemarks.Text & "' WHERE OID=" & Me.HiddenField1.Value)
        Me.lblMsg.Text = result
        LoadData()
    End Sub

   
    Protected Sub btnReject_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim result As String = String.Empty
        result = obj.IUD_Operation("UPDATE ORDER_MASTER SET OStatus=0,cdate='" & Now.Date.ToString("dd/MMM/yyyy") & "', REMARK=  '" & Me.txtRemarks.Text & "' WHERE OID=" & Me.HiddenField1.Value)
        LoadData()
    End Sub

    Protected Sub lnkEdit_Click(ByVal sender As Object, ByVal e As EventArgs)
        Me.txtRemarks.Text = ""
        Dim btnsubmit As LinkButton = TryCast(sender, LinkButton)
        Dim gRow As GridViewRow = DirectCast(btnsubmit.NamingContainer, GridViewRow)
        Dim query As String
        query = "SELECT * FROM SIGNUP WHERE UID = (SELECT DISTINCT UID FROM ORDER_MASTER WHERE OID=" & gridView1.DataKeys(gRow.RowIndex).Value.ToString() & ")"
        '  Me.lblMsg.Text = query
        Me.HiddenField1.Value = gridView1.DataKeys(gRow.RowIndex).Value.ToString()
        Try
            Dim dt As New Data.DataTable
            dt = obj.getTable(query)
            With dt.Rows(0)
                Me.lblUName.Text = .Item("UNAME")
                Me.lblMNo.Text = .Item("MOBILE")
                Me.lblEID.Text = .Item("EMAILID").ToString
                Me.lblAdd.Text = .Item("ADDRESS")
                Me.lblCity.Text = .Item("CITY")
                Me.lblState.Text = .Item("STATE") & "-" & .Item("PINCODE")
            End With

            query = "SELECT B.IID,A.INAME,A.IPRICE,B.QTY FROM ORDER_MASTER B,ITEM_MASTER A WHERE A.IID=B.IID AND OID=" & gridView1.DataKeys(gRow.RowIndex).Value.ToString()
            dt.Clear()
            dt = obj.getTable(query)

            Dim sb As New StringBuilder
            sb.Append("<table border='1' width='100%' height='100%'><tr><td>IID</td><td>Name</td><td>Qty.</td><td>Price</td></tr>")

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
