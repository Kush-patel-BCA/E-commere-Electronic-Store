
Partial Class Contact_US
    Inherits System.Web.UI.Page
    Dim obj As New Communicationclass
    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim result As String
        Dim Qry As String
        Dim pk As String = obj.PrimaryKey("Feedback", "Fid")
        Qry = "insert into Feedback values(" & pk & ",'" & txtname.Text & "','" & txtemail.Text & "','" & txtcomment.Text & "')"
        result = obj.IUD_Operation(Qry)
        If result = 0 Then
            Me.lblmsg.Text = "Feedback received"
        Else
            Me.lblmsg.text = result
        End If
    End Sub
End Class
