
Partial Class displayItem
    Inherits System.Web.UI.Page
    Dim obj As New Communicationclass
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If IsPostBack = False Then
            addCatInMenu()
            Me.Literal1.Text = disPlayItem()
        End If
    End Sub

    Public Function disPlayItem() As String
        Dim sb As New StringBuilder
        Dim dt, idt As New Data.DataTable
        dt = obj.getTable("SELECT * FROM ITEM_MASTER WHERE 1 = 1 " & Me.hfWR.Value & " " & Me.hfPrice.Value & " " & Me.hfFind.Value & " " & Me.hfSort.Value)
        sb.Append("<TABLE border='0' WIDTH='100%' cellpadding='5' cellspacing='35px' class='box-shadow'>")
        Dim I As Integer = 0
        Dim imgClass As String = "product-image"
        
        If dt.Rows.Count = 1 Then
            sb.Append("<TR align='center'>")
            sb.Append("<TD WIDTH='200'>")
            sb.Append("<a href='itemDetail.aspx?iid=" & dt.Rows(I).Item("iid") & "' target='_blank' style='text-decoration:none''>")
            'sb.Append(dt.Rows(I).Item("Iname"))
            idt.Clear()

            idt = obj.getTable("SELECT IPATH FROM IMG_MASTER WHERE IID=" & dt.Rows(I).Item("IID"))
            sb.Append("<br/><img src='ImgItem/" & idt.Rows(0).Item(0) & "' class='" & imgClass & "'/><br/><br/>")
            sb.Append("<span style='font-weight:bold;'>" & dt.Rows(I).Item("Iname") & "</span><br/>")
            'sb.Append("Price: " & dt.Rows(I).Item("Iprice"))
            ' sb.Append(dt.Rows(I).Item("Idesc"))
            sb.Append("₹<span style='font-weight:bold;'>" & dt.Rows(I).Item("Iprice") & "</span>")
            sb.Append("</a>")
            sb.Append("</TD>")
        ElseIf dt.Rows.Count = 2 Then
            Try
                sb.Append("<TR align='center'>")
                sb.Append("<TD WIDTH='200'>")
                sb.Append("<a href='itemDetail.aspx?iid=" & dt.Rows(I).Item("iid") & "' target='_blank' style='text-decoration:none''>")
                'sb.Append(dt.Rows(I).Item("Iname"))
                idt.Clear()
                idt = obj.getTable("SELECT IPATH FROM IMG_MASTER WHERE IID=" & dt.Rows(I).Item("IID"))
                sb.Append("<br/><img src='ImgItem/" & idt.Rows(0).Item(0) & "' class='" & imgClass & "'/><br/><br/>")
                sb.Append("<span style='font-weight:bold;'>" & dt.Rows(I).Item("Iname") & "</span><br/>")
                'sb.Append("Price: " & dt.Rows(I).Item("Iprice"))
                'sb.Append(dt.Rows(I).Item("Idesc"))
                sb.Append("₹<span style='font-weight:bold;'>" & dt.Rows(I).Item("Iprice") & "</span>")
                sb.Append("</a>")
                sb.Append("</TD>")
                I += 1
                sb.Append("<TD WIDTH='200'>")
                sb.Append("<a href='itemDetail.aspx?iid=" & dt.Rows(I).Item("iid") & "' target='_blank' style='text-decoration:none'>")
                'sb.Append(dt.Rows(I).Item("Iname"))
                idt.Clear()
                idt = obj.getTable("SELECT IPATH FROM IMG_MASTER WHERE IID=" & dt.Rows(I).Item("IID"))
                sb.Append("<br/><img src='ImgItem/" & idt.Rows(0).Item(0) & "' class='" & imgClass & "'/><br/><br/>")
                sb.Append("<span style='font-weight:bold;'>" & dt.Rows(I).Item("Iname") & "</span><br/>")
                'sb.Append("Price: " & dt.Rows(I).Item("Iprice"))
                'sb.Append(dt.Rows(I).Item("Idesc"))
                sb.Append("₹<span style='font-weight:bold;'>" & dt.Rows(I).Item("Iprice") & "</span>")
                sb.Append("</a>")
                sb.Append("</TD>")
            Catch ex As Exception
            End Try
        End If

        For I = 0 To dt.Rows.Count - 3

            sb.Append("<TR align='center'>")
            sb.Append("<TD WIDTH='200'>")
            sb.Append("<a href='itemDetail.aspx?iid=" & dt.Rows(I).Item("iid") & "' target='_blank' style='text-decoration:none''>")
            'sb.Append(dt.Rows(I).Item("Iname"))
            idt.Clear()
            idt = obj.getTable("SELECT IPATH FROM IMG_MASTER WHERE IID=" & dt.Rows(I).Item("IID"))
            sb.Append("<br/><img src='ImgItem/" & idt.Rows(0).Item(0) & "' class='" & imgClass & "'/><br/><br/>")
            sb.Append("<span style='font-weight:bold;'>" & dt.Rows(I).Item("Iname") & "</span><br/>")
            'sb.Append("Price: " & dt.Rows(I).Item("Iprice"))
            'sb.Append(dt.Rows(I).Item("Idesc"))
            sb.Append("₹<span style='font-weight:bold;'>" & dt.Rows(I).Item("Iprice") & "</span>")
            sb.Append("</a>")
            sb.Append("</TD>")
            I += 1
            sb.Append("<TD WIDTH='200'>")
            sb.Append("<a href='itemDetail.aspx?iid=" & dt.Rows(I).Item("iid") & "' target='_blank' style='text-decoration:none'>")
            'sb.Append(dt.Rows(I).Item("Iname"))
            idt.Clear()
            idt = obj.getTable("SELECT IPATH FROM IMG_MASTER WHERE IID=" & dt.Rows(I).Item("IID"))
            sb.Append("<br/><img src='ImgItem/" & idt.Rows(0).Item(0) & "' class='" & imgClass & "'/><br/><br/>")
            sb.Append("<span style='font-weight:bold;'>" & dt.Rows(I).Item("Iname") & "</span><br/>")
            'sb.Append("Price: " & dt.Rows(I).Item("Iprice"))
            'sb.Append(dt.Rows(I).Item("Idesc"))
            sb.Append("₹<span style='font-weight:bold;'>" & dt.Rows(I).Item("Iprice") & "</span>")
            sb.Append("</a>")
            sb.Append("</TD>")

            I += 1
            sb.Append("<TD WIDTH='200'>")
            sb.Append("<a href='itemDetail.aspx?iid=" & dt.Rows(I).Item("iid") & "' target='_blank' style='text-decoration:none'>")
            '            sb.Append(dt.Rows(I).Item("Iname"))
            idt.Clear()
            idt = obj.getTable("SELECT IPATH FROM IMG_MASTER WHERE IID=" & dt.Rows(I).Item("IID"))
            sb.Append("<br/><img src='ImgItem/" & idt.Rows(0).Item(0) & "' class='" & imgClass & "'/><br/><br/>")
            sb.Append("<span style='font-weight:bold;'>" & dt.Rows(I).Item("Iname") & "</span><br/>")
            'sb.Append("Price: " & dt.Rows(I).Item("Iprice"))
            'sb.Append(dt.Rows(I).Item("Idesc"))
            sb.Append("₹<span style='font-weight:bold;'>" & dt.Rows(I).Item("Iprice") & "</span>")
            sb.Append("</a>")
            sb.Append("</TD>")
            sb.Append("</TR>")

            ' I += 1
            ' sb.Append("<TD WIDTH='200'>")
            'sb.Append("<a href='itemDetail.aspx?iid=" & dt.Rows(I).Item("iid") & "' target='_blank' style='text-decoration:none'>")
            'sb.Append(dt.Rows(I).Item("Iname"))
            'idt.Clear()
            'idt = obj.getTable("SELECT IPATH FROM IMG_MASTER WHERE IID=" & dt.Rows(I).Item("IID"))
            'sb.Append("</BR><IMG SRC='ImgItem/" & idt.Rows(0).Item(0) & "' WIDTH='100PX' HEIGHT='100PX'></BR>")
            'sb.Append(dt.Rows(I).Item("Idesc"))
            'sb.Append("</BR>Price: " & dt.Rows(I).Item("Iprice"))
            'sb.Append("</a>")
            'sb.Append("</TD>")
            'sb.Append("</TR>")
        Next


        I = dt.Rows.Count - 1

        If dt.Rows.Count Mod 3 = 1 And I > 3 Then
            sb.Append("<TR align='center'>")
            sb.Append("<TD WIDTH='200'>")
            sb.Append("<a href='itemDetail.aspx?iid=" & dt.Rows(I).Item("iid") & "' target='_blank' style='text-decoration:none''>")
            'sb.Append(dt.Rows(I).Item("Iname"))
            idt.Clear()
            idt = obj.getTable("SELECT IPATH FROM IMG_MASTER WHERE IID=" & dt.Rows(I).Item("IID"))
            sb.Append("<br/><img src='ImgItem/" & idt.Rows(0).Item(0) & "' class='" & imgClass & "'/><br/><br/>")
            sb.Append("<span style='font-weight:bold;'>" & dt.Rows(I).Item("Iname") & "</span><br/>")
            'sb.Append("Price: " & dt.Rows(I).Item("Iprice"))
            'sb.Append(dt.Rows(I).Item("Idesc"))
            sb.Append("₹<span style='font-weight:bold;'>" & dt.Rows(I).Item("Iprice") & "</span>")
            sb.Append("</a>")
            sb.Append("</TD>")
        ElseIf dt.Rows.Count Mod 3 = 2 And I > 3 Then
            Try
                sb.Append("<TR align='center'>")
                sb.Append("<TD WIDTH='200'>")
                sb.Append("<a href='itemDetail.aspx?iid=" & dt.Rows(I).Item("iid") & "' target='_blank' style='text-decoration:none''>")
                'sb.Append(dt.Rows(I).Item("Iname"))
                idt.Clear()
                idt = obj.getTable("SELECT IPATH FROM IMG_MASTER WHERE IID=" & dt.Rows(I).Item("IID"))
                sb.Append("<br/><img src='ImgItem/" & idt.Rows(0).Item(0) & "' class='" & imgClass & "'/><br/><br/>")
                sb.Append("<span style='font-weight:bold;'>" & dt.Rows(I).Item("Iname") & "</span><br/>")
                'sb.Append("Price: " & dt.Rows(I).Item("Iprice"))
                'sb.Append(dt.Rows(I).Item("Idesc"))
                sb.Append("₹<span style='font-weight:bold;'>" & dt.Rows(I).Item("Iprice") & "</span>")
                sb.Append("</a>")
                sb.Append("</TD>")
                I += 1
                sb.Append("<TD WIDTH='200'>")
                sb.Append("<a href='itemDetail.aspx?iid=" & dt.Rows(I).Item("iid") & "' target='_blank' style='text-decoration:none'>")
                'sb.Append(dt.Rows(I).Item("Iname"))
                idt.Clear()
                idt = obj.getTable("SELECT IPATH FROM IMG_MASTER WHERE IID=" & dt.Rows(I).Item("IID"))
                sb.Append("<br/><img src='ImgItem/" & idt.Rows(0).Item(0) & "' class='" & imgClass & "'/><br/><br/>")
                sb.Append("<span style='font-weight:bold;'>" & dt.Rows(I).Item("Iname") & "</span><br/>")
                'sb.Append("Price: " & dt.Rows(I).Item("Iprice"))
                'sb.Append(dt.Rows(I).Item("Idesc"))
                sb.Append("₹<span style='font-weight:bold;'>" & dt.Rows(I).Item("Iprice") & "</span>")
                sb.Append("</a>")
                sb.Append("</TD>")
            Catch ex As Exception
            End Try
        End If

        sb.Append("</TABLE>")

        Return sb.ToString
    End Function

    Protected Sub lbtnL2H_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtnL2H.Click
        Me.hfSort.Value = " Order by iprice"
        Me.Literal1.Text = disPlayItem()
    End Sub

    Protected Sub lbtnH2L_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtnH2L.Click
        Me.hfSort.Value = " Order by iprice desc"
        Me.Literal1.Text = disPlayItem()
    End Sub

    Protected Sub lbtnNewFirst_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtnNewFirst.Click
        Me.hfSort.Value = " Order by iid desc"
        Me.Literal1.Text = disPlayItem()
    End Sub

    Private Sub addCatInMenu()
        Dim Qry As String = "SELECT DISTINCT Icategory FROM ITEM_MASTER"
        Dim dt As New Data.DataTable
        dt = obj.getTable(Qry)

        For I = 0 To dt.Rows.Count - 1
            Dim mi As New MenuItem
            mi.Text = dt.Rows(I).Item(0)
            mi.Value = dt.Rows(I).Item(0)
            Me.Menu2.Items(0).ChildItems.Add(mi)
        Next
    End Sub

    Protected Sub Menu2_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu2.MenuItemClick
        Me.hfWR.Value = " AND ICATEGORY='" & e.Item.Text & "'"
        Me.Literal1.Text = disPlayItem()
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Me.hfWR.Value = ""
        Me.hfSort.Value = ""
        Me.hfPrice.Value = ""
        Me.hfFind.Value = ""
        Me.Literal1.Text = disPlayItem()
    End Sub

    Protected Sub btnSarch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSarch.Click
        Me.hfPrice.Value = " AND IPrice between " & Me.TextBox1.Text & " and " & Me.TextBox2.Text
        Me.Literal1.Text = disPlayItem()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Me.hfFind.Value = " AND Iname + idesc + icategory like '%" & Me.txtFind.Text & "%'"
        Me.Literal1.Text = disPlayItem()
    End Sub
End Class
