Imports System.Web.UI.Page
Partial Class ForgotPassword
    Inherits System.Web.UI.Page
    Dim obj As New Communicationclass

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim dt As Data.DataTable
        dt = obj.getTable("SELECT COUNT(*) FROM SIGNUP WHERE EMAILID='" & txtemail.Text & "' AND DOB='" & txtdob.Text & "' ")

        If dt.Rows(0).Item(0) = 1 Then
            Me.Panel1.Visible = True
        Else
            Me.lblmsg.Text = "Detail is not valid"
        End If

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim result As String
        Dim Qry As String
        Qry = "update signup set password='" & txtnewpwd.Text & "' WHERE EMAILID='" & txtemail.Text & "'"
        result = obj.IUD_Operation(Qry)
        If result = 0 Then
            lblmsg.Text = "Password has been updated"
        Else
            lblmsg.Text = result
        End If

    End Sub
End Class
