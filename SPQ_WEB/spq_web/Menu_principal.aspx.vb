Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Web.Security

Public Class Menu_principal
    Inherits System.Web.UI.Page

    Private Sub BtnLogout_Click(sender As Object, e As EventArgs) Handles BtnLogout.Click
        System.Web.Security.FormsAuthentication.SignOut()
        Response.Redirect("../Login.aspx")
    End Sub
End Class