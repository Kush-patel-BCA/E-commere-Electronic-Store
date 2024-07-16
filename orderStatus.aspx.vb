
Partial Class orderStatus
    Inherits System.Web.UI.Page
    Dim obj As New Communicationclass

    Private Sub LoadData()
        Dim query As String
        query = "SELECT Oid,CONVERT(VARCHAR, Odate, 103) AS Odate,SUM(Qty) AS Qty, SUM(price) AS Total FROM Order_master  WHERE DSTATUS IS NULL AND (OSTATUS IS NULL OR OSTATUS <> 0) AND UID=" & Session("UID") & " GROUP BY OID,ODATE"
        Try
            gridView1.DataSource = obj.getTable(query)
            gridView1.DataBind()

        Catch ex As Exception
            Me.lblMsg.Text = ex.Message
        End Try

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LoadData()
    End Sub


    Protected Sub lnkEdit_Click(ByVal sender As Object, ByVal e As EventArgs)
        Me.lblODate.Text = ""
        Me.lblCDate.Text = ""
        Me.lblDDate.Text = ""
        Me.lblADate.Text = ""
        Dim btnsubmit As LinkButton = TryCast(sender, LinkButton)
        Dim gRow As GridViewRow = DirectCast(btnsubmit.NamingContainer, GridViewRow)
        Dim query As String
        query = "SELECT * FROM ORDER_MASTER WHERE OID=" & gridView1.DataKeys(gRow.RowIndex).Value.ToString()


        Me.HiddenField1.Value = gridView1.DataKeys(gRow.RowIndex).Value.ToString()

        Try
            Dim dt As New Data.DataTable
            dt = obj.getTable(query)
            With dt.Rows(0)
                Me.lblEx.Text = "Expected Delivery On: " & CDate(.Item("ODate").ToString).Date.AddDays(7)
                If IsDBNull(.Item("OStatus")) Then
                    Me.Image1.ImageUrl = "~/1.jpg"
                ElseIf (Not IsDBNull(.Item("cdate"))) And IsDBNull(.Item("ddate")) And IsDBNull(.Item("adate")) Then
                    Me.Image1.ImageUrl = "~/2.jpg"
                ElseIf (Not IsDBNull(.Item("cdate"))) And Not IsDBNull(.Item("ddate")) And IsDBNull(.Item("adate")) Then
                    Me.Image1.ImageUrl = "~/3.jpg"
                Else
                    Me.Image1.ImageUrl = "~/4.jpg"
                End If

                Me.lblODate.Text = CDate(.Item("ODate").ToString).Date
                'Me.lblCID.Text = .Item("CID").ToString
                Me.lblCDate.Text = CDate(.Item("CDate").ToString).Date
                Me.lblDDate.Text = CDate(.Item("DDate").ToString).Date
                Me.lblADate.Text = CDate(.Item("ADate").ToString).Date
            End With

           
        Catch ex As Exception

        End Try
        Me.ModalPopupExtender1.Show()
    End Sub
End Class
