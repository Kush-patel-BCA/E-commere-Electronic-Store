Imports Microsoft.VisualBasic
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Web.UI.Page
Imports System

Public Class Communicationclass
    Inherits Connectionclass

    Public Function PrimaryKey(ByVal TableName As String, ByVal FieldName As String) As String
        Dim pk As String = ""
        Dim Qry As String = String.Format("SELECT COUNT(*) FROM {0}", TableName)
        Dim dt As New Data.DataTable
        dt = getTable(Qry)
        If dt.Rows(0).Item(0) = 0 Then
            pk = 1
        Else
            pk = getTable(String.Format("SELECT MAX({1}) FROM {0}", TableName, FieldName)).Rows(0).Item(0) + 1
        End If
        Return pk
    End Function

    Public Function getTable(ByVal Qry As String) As Data.DataTable
        Dim dt As New Data.DataTable
        Dim da As New SqlDataAdapter(Qry, OpenConn)
        da.Fill(dt)
        CloseConn()
        Return dt
    End Function

    Public Function IUD_Operation(ByVal Qry As String) As String
        Dim cmd As SqlCommand
        Dim result As String = "0"
        Try
            cmd = New SqlCommand(Qry, OpenConn())
            cmd.ExecuteNonQuery()
            CloseConn()
        Catch ex As Exception
            result = ex.Message
        End Try
        Return result
    End Function

    Public Function userAuthentication(ByVal UID As String, ByVal Password As String) As String
        Dim result As String = "0"
        Dim qry As String = String.Format("SELECT COUNT(*) FROM SIGNUP WHERE EMAILID='{0}' AND PASSWORD='{1}'", UID, Password)
        Dim dt As New Data.DataTable
        dt = getTable(qry)
        If dt.Rows(0).Item(0) <> 0 Then
            Session("UID") = getTable("SELECT UID FROM SIGNUP WHERE EMAILID='" & UID & "'").Rows(0).Item(0)
            Session("UNAME") = getTable("SELECT UNAME FROM SIGNUP WHERE EMAILID='" & UID & "'").Rows(0).Item(0)
            Session("Status") = "T"
            result = "1"
        Else
            result = "User name and password not valid."
        End If
        Return result
    End Function
End Class
