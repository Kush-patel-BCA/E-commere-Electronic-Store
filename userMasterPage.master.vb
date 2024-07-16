
Partial Class userMasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Status") <> "T" Then
            Response.Redirect("login.aspx")
        End If
    End Sub

    

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Session("UID") = ""
        Session("Status") = ""
        Response.Redirect("index.aspx")
    End Sub

    'Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click
    '    Session("UID") = ""
    '    Session("Status") = ""
    '    Response.Redirect("index.aspx")
    'End Sub

End Class

