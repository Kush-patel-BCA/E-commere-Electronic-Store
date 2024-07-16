Imports System.IO
Partial Class uploadItemImage
    Inherits System.Web.UI.Page
    Dim obj As New Communicationclass
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Dim dt As Data.DataTable
            dt = obj.getTable("SELECT INAME,IID FROM ITEM_MASTER")
            Me.ddlItem.Items.Add("Select Item")
            For I = 0 To dt.Rows.Count - 1
                With dt.Rows(I)
                    Me.ddlItem.Items.Add(.Item(0) & " - " & .Item(1))
                    Me.ddlItem.Items(I + 1).Value = .Item(1)
                End With
            Next
        End If
    End Sub

    Protected Sub btnUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpload.Click
        Dim ipath As String
        Dim imgid As String = obj.PrimaryKey("IMG_MASTER", "IMGID")
        Dim ext As String = Path.GetExtension(Me.FileUpload1.FileName.ToUpper)
        ipath = Server.MapPath("ImgItem") & "\img" & imgid & ext
        If ext = ".JPG" Or ext = ".JPEG" Or ext = ".PNG" Then
            Me.FileUpload1.SaveAs(ipath)
            obj.IUD_Operation("INSERT INTO IMG_MASTER VALUES(" & imgid & "," & Me.ddlItem.SelectedValue & ",'" & "img" & imgid & ext & "')")
            Me.lblMsg.Text = "Image uploaded successful."
        Else
            Me.lblMsg.Text = "Upload only .JPG or .JPEG or .PNG file.."
        End If
        ' Me.lblMsg.Text = ipath
    End Sub
End Class
