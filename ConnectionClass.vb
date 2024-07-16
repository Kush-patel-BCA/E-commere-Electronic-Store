Imports Microsoft.VisualBasic
Imports System.Data.Sql
Imports System.Data.SqlClient

Public Class Connectionclass
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection
    Public Function OpenConn() As SqlConnection
        cn = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=D:\E-commerce Electronic Store\App_Data\MyDatabase.mdf;Integrated Security=True;User Instance=True")
        cn.Open()
        Return cn
    End Function

    Public Sub CloseConn()
        cn.Close()
    End Sub
End Class
