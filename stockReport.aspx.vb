
Partial Class stockReport
    Inherits System.Web.UI.Page
    Dim obj As New Communicationclass
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            gridDataBind("")

            Me.DropDownList1.Items.Add("")
            Dim dt As New Data.DataTable
            dt = obj.getTable("SELECT DISTINCT ICATEGORY FROM ITEM_MASTER")
            For I = 0 To dt.Rows.Count - 1
                Me.DropDownList1.Items.Add(dt.Rows(I).Item(0))
            Next
        End If

    End Sub

    Private Sub gridDataBind(ByRef WR As String)
        Dim Qry As String
        Qry = "SELECT B.IID, A.INAME,A.ICATEGORY,A.iprice, B.QTY FROM ITEM_MASTER A, STOCK_MASTER B WHERE A.IID=B.IID " & WR
        Me.GridView1.DataSource = obj.getTable(Qry)
        Me.GridView1.DataBind()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If Me.rbtnAll.Checked = False And Me.rbtnStock.Checked = False And Me.rbtnOutOfStock.Checked = False And Me.rbtnCategory.Checked = False And Me.rbtnCategory.Checked = False Then
            Me.lblMsg.Text = "Please select any one option..."
            Exit Sub
        End If
        Dim check As String = ""
        If rbtnAll.Checked = True Then
            check = " ORDER BY IID"
        ElseIf Me.rbtnStock.Checked = True Then
            check = "AND B.QTY > 0 ORDER BY IID"
        ElseIf Me.rbtnOutOfStock.Checked = True Then
            check = "AND B.QTY = 0 ORDER BY IID"
        ElseIf Me.rbtnCategory.Checked = True Then
            If Me.DropDownList1.SelectedIndex = 0 Then
                Me.lblMsg.Text = "Please select Category."
                Exit Sub
            End If
            check = "AND A.ICATEGORY = '" & Me.DropDownList1.Text & "' ORDER BY IID"
        Else
            check = ""
        End If
        gridDataBind(check)
    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As GridViewEditEventArgs) Handles GridView1.RowEditing
        GridView1.EditIndex = e.NewEditIndex
        gridDataBind("")
    End Sub

    Protected Sub GridView1_RowCancelingEdit(ByVal sender As Object, ByVal e As GridViewCancelEditEventArgs) Handles GridView1.RowCancelingEdit
        GridView1.EditIndex = -1
        gridDataBind("")
    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        ' Get the IID of the row to be deleted
        Dim IID As Integer = Convert.ToInt32(GridView1.DataKeys(e.RowIndex).Value.ToString())

        ' SQL query to delete the record
        Dim Qry As String = String.Format("DELETE FROM ITEM_MASTER WHERE IID = {0}; DELETE FROM STOCK_MASTER WHERE IID = {0}", IID)

        ' Execute the delete operation
        obj.IUD_Operation(Qry)

        ' Rebind the GridView
        gridDataBind("")
    End Sub

    Protected Sub GridView1_RowUpdating(ByVal sender As Object, ByVal e As GridViewUpdateEventArgs) Handles GridView1.RowUpdating
        Dim IID As Integer = Convert.ToInt32(GridView1.DataKeys(e.RowIndex).Value.ToString())

        Dim txtINAME As TextBox = DirectCast(GridView1.Rows(e.RowIndex).FindControl("txtINAME"), TextBox)
        Dim txtICATEGORY As TextBox = DirectCast(GridView1.Rows(e.RowIndex).FindControl("txtICATEGORY"), TextBox)
        Dim txtIPRICE As TextBox = DirectCast(GridView1.Rows(e.RowIndex).FindControl("txtIPRICE"), TextBox)
        Dim txtQTY As TextBox = DirectCast(GridView1.Rows(e.RowIndex).FindControl("txtQTY"), TextBox)

        ' Check if TextBox controls are not null
        If txtINAME Is Nothing Or txtICATEGORY Is Nothing Or txtIPRICE Is Nothing Or txtQTY Is Nothing Then
            ' Handle the error, such as by displaying a message or logging it
            lblMsg.Text = "An error occurred while updating the record."
            Return
        End If

        ' Retrieve values from TextBox controls
        Dim INAME As String = txtINAME.Text
        Dim ICATEGORY As String = txtICATEGORY.Text
        Dim IPRICE As Decimal = Convert.ToDecimal(txtIPRICE.Text)
        Dim QTY As Integer = Convert.ToInt32(txtQTY.Text)

        Dim Qry As String = String.Format("UPDATE ITEM_MASTER SET INAME = '{0}', ICATEGORY = '{1}', iprice = {2} WHERE IID = {3}; UPDATE STOCK_MASTER SET QTY = {4} WHERE IID = {3}", INAME, ICATEGORY, IPRICE, IID, QTY)

        obj.IUD_Operation(Qry)

        GridView1.EditIndex = -1
        gridDataBind("")

    End Sub
End Class
