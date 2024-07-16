
Partial Class itemMaster
    Inherits System.Web.UI.Page
    Dim obj As New Communicationclass
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim Itemresult As String
        Dim Qry As String
        Dim pk As String = obj.PrimaryKey("Item_master", "Iid")
        ' Qry = "insert into Item_master values(" & pk & ",'" & txtIName.Text & "','" & txtDesc.Text & "','" & txtPrice.Text & "','" & txtSpec.Text & "','" & txtCatagory.Text & "','" & txtWarranty.Text & "','" & Me.txtSrNo.Text.Trim & "')"

        Qry = String.Format("insert into Item_master values({0},'{1}','{2}','{3}','{4}','{5}','{6}','{7}')", pk, Me.txtIName.Text.Trim, Me.txtDesc.Text.Trim, Me.txtPrice.Text.Trim, Me.txtSpec.Text.Trim, Me.txtCatagory.Text.Trim, Me.txtWarranty.Text.Trim, Me.txtSrNo.Text.Trim)

        Itemresult = obj.IUD_Operation(Qry)
        If Itemresult = "0" Then
            obj.IUD_Operation("INSERT INTO STOCK_MASTER VALUES(" & pk & ",0)")
            Me.lblMsg.Text = "Item Add Successfully"
        Else
            Me.lblMsg.Text = Itemresult
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
