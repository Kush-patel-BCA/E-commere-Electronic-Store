
Partial Class UpdateStock
    Inherits System.Web.UI.Page
    Dim obj As New Communicationclass

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then bindGrid()
    End Sub


    Protected Sub txtSearch_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtSearch.TextChanged
        bindGrid()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Me.ddlIID.Text = Me.GridView1.Rows(Me.GridView1.SelectedIndex).Cells(1).Text
        Me.txtStock.Text = obj.getTable("SELECT QTY FROM STOCK_MASTER WHERE IID=" & Me.ddlIID.Text).Rows(0).Item(0)
    End Sub

    Protected Sub ddlIID_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlIID.SelectedIndexChanged
        Dim dt As New Data.DataTable
        dt = obj.getTable("SELECT iid,iname,iprice,icategory FROM ITEM_MASTER WHERE iid=" & Me.ddlIID.Text)
        Me.GridView1.DataSource = dt
        Me.GridView1.DataBind()

        Me.txtStock.Text = obj.getTable("SELECT QTY FROM STOCK_MASTER WHERE IID=" & Me.ddlIID.Text).Rows(0).Item(0)
    End Sub

    Protected Sub btnUpdateStock_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdateStock.Click
        obj.IUD_Operation("UPDATE STOCK_MASTER SET QTY=" & Me.txtStock.Text & " WHERE IID=" & Me.ddlIID.Text)
        bindGrid()
    End Sub

    Private Sub bindGrid()
        Try

            Dim dt As New Data.DataTable
            dt = obj.getTable("SELECT iid,iname,iprice,icategory FROM ITEM_MASTER WHERE INAME + icategory LIKE '%" & Me.txtSearch.Text & "%'")
            Me.GridView1.DataSource = dt
            Me.GridView1.DataBind()
            Me.ddlIID.DataSource = dt
            Me.ddlIID.DataMember = "iid"
            Me.ddlIID.DataTextField = "iid"
            Me.ddlIID.DataBind()

            Me.txtStock.Text = obj.getTable("SELECT QTY FROM STOCK_MASTER WHERE IID=" & Me.ddlIID.Text).Rows(0).Item(0)
        Catch ex As Exception

        End Try

    End Sub


End Class
