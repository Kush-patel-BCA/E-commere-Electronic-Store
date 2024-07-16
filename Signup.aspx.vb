
Partial Class Signup
    Inherits System.Web.UI.Page
    Dim obj As New Communicationclass
    Dim gen As Object

    Protected Sub btnsignup_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsignup.Click
        Dim result As String
        'Me.lblmsg.Text = ""

        'If rdrfemale.Checked = False And rdrmale.Checked = False Then
        '    Me.lblmsg.Text = "Plase select Gender."
        '    Me.lblmsg.BackColor = Drawing.Color.Gray
        '    Me.lblmsg.ForeColor = Drawing.Color.White

        '    Exit Sub
        'End If

        'Dim gen As String
        'If rdrfemale.Checked = True Then
        '    gen = "Female"
        'Else
        '    gen = "Male"
        'End If



        Dim Qry As String
        Dim pk As String = obj.PrimaryKey("signup", "uid")
        Qry = "insert into signup values(" & pk & ",'" & txtuname.Text & "','" & txtmob.Text & "','" & txtdob.Text & "','" & RadioButtonList1.SelectedItem.ToString & "','" & txtemail.Text & "','" & txtaddress.Text & "','" & txtcity.Text & "','" & dd1.SelectedItem.ToString & "','" & txtpincode.Text & "','" & txtpassword.Text & "')"

        result = obj.IUD_Operation(Qry)
        If result = "0" Then
            Me.lblmsg.Text = "Signup Successfully"
        Else
            Me.lblmsg.Text = result
        End If
    End Sub

    Protected Sub dd1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dd1.SelectedIndexChanged
        dd1.Focus()

    End Sub
End Class
