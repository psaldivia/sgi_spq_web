Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Web.Security

Public Class Login1
    Inherits System.Web.UI.Page


    Protected Sub BtnAceptar_Click(sender As Object, e As EventArgs) Handles BtnAceptar.Click
        Dim cmd As New SqlClient.SqlCommand("sp_login")
        Dim Conexion As String = My.Settings.conexion

        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@nombre_usuario", SqlDbType.Char, 10).Value = TxtUsuario.Text
        cmd.Parameters.Add("@clave", SqlDbType.VarChar, 50).Value = TxtPassword.Text

        cmd.Connection = New SqlClient.SqlConnection(Conexion)
        cmd.Connection.Open()
        cmd.ExecuteNonQuery()

        Dim dr As SqlDataReader = cmd.ExecuteReader

        Try
            If dr.Read = False Then
                Page.ClientScript.RegisterStartupScript(Page.GetType(), "Scripts", "<script>alert('Usuario o Contraseña incorrecta');</script>")
            Else
                'Cierra conexion
                cmd.Connection.Close()

                System.Web.Security.FormsAuthentication.RedirectFromLoginPage(TxtUsuario.Text, False)
                'Response.Redirect("spq_web\Menu_principal.aspx", False)
                'System.Web.Security.FormsAuthentication.SetAuthCookie(UserName, Persist)
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub


End Class