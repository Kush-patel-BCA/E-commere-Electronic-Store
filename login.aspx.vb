
Partial Class login
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click
        Dim obj As New Communicationclass
        Dim result As String = obj.userAuthentication(Me.txtUName.Text.Trim, Me.txtPassword.Text.Trim)

        If result = "1" And Session("UID") = "1" Then
            Response.Redirect("AdminHome.aspx")
        ElseIf result = "1" And Session("UID") <> "1" Then
            Response.Redirect("userHome.aspx")
        Else
            Me.lblMsg.Text = result
        End If

    End Sub

   
End Class
