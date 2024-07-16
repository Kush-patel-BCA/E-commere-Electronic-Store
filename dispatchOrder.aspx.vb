
Partial Class dispatchOrder
    Inherits System.Web.UI.Page
    Dim obj As New Communicationclass
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then bindDDL()
    End Sub

    Private Sub bindDDL()
        Me.DropDownList1.Items.Clear()
        Dim dt As New Data.DataTable
        dt = obj.getTable("SELECT DISTINCT OID FROM ORDER_MASTER WHERE CID IS NULL AND OSTATUS=1")
        Me.DropDownList1.Items.Add("")
        For I = 0 To dt.Rows.Count - 1
            Me.DropDownList1.Items.Add(dt.Rows(I).Item(0))
        Next
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Me.lblLable.Text = obj.IUD_Operation("UPDATE ORDER_MASTER SET CID=" & Me.txtCID.Text & " , DDATE='" & Me.txtDate.Text & "' WHERE OID=" & Me.DropDownList1.Text)

        bindDDL()
        clear()

    End Sub

    Private Sub clear()
        txtDate.Text = ""
        txtCID.Text = ""
    End Sub
End Class
