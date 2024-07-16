
Partial Class UserReport
    Inherits System.Web.UI.Page
    Dim obj As New Communicationclass

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        load_data()
    End Sub

    Private Sub load_data()
        Dim Qry As String
        Qry = "SELECT * FROM SIGNUP"
        Try
            GridView1.DataSource = obj.getTable(Qry)
            GridView1.DataBind()

        Catch ex As Exception
            Me.lblMsg.Text = ex.Message
        End Try
    End Sub
End Class
