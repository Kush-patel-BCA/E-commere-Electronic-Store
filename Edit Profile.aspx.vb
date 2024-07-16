Imports System.Web.UI.Page
Partial Class Edit_Profile
    Inherits System.Web.UI.Page
    Dim obj As New Communicationclass
    Protected Sub btnedit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnedit.Click
        Dim result As String
        Dim Qry As String
        Qry = "update signup set uname='" + txtuname.Text + "',mobile='" + txtmob.Text + "',address='" + Txtadd.Text + "',city='" + Txtcity.Text + "',state='" _
          + dd1.SelectedItem.ToString + "',pincode='" + txtpincode.Text + "' WHERE UID='" & Session("UID") & "'"
        result = obj.IUD_Operation(Qry)
        If result = 0 Then
            Me.lblmsg.Text = "Update Successfully"
        Else
            Me.lblmsg.Text = result
        End If
    End Sub
End Class
