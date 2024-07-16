Imports System.Web.UI.Page
Partial Class Change_password
    Inherits System.Web.UI.Page
    Dim obj As New Communicationclass

    Protected Sub btnchange_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnchange.Click
        Dim result As String
        Dim Qry As String
        Qry = "update signup set password='" & txtnewpwd.Text & "' WHERE UID='" & Session("UID") & "'"
        result = obj.IUD_Operation(Qry)
        If result = 0 Then
            Me.lblmsg.Text = "Password updated"
        Else
            Me.lblmsg.Text = result
        End If
    End Sub

  
End Class
