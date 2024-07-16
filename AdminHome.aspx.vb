
Partial Class AdminHome
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.lblwelcome.Text = "Welcome to " & Session("uname")
    End Sub
End Class
