Public Class Itinerario
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub BtnLogout_Click(sender As Object, e As EventArgs) Handles BtnLogout.Click
        System.Web.Security.FormsAuthentication.SignOut()
        Response.Redirect("../Login.aspx")
    End Sub

    Private Sub GridView1_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridView1.RowDataBound
        If e.Row.RowType = DataControlRowType.DataRow Then

            '*********** 4 Celdas con colores **************'''''''''

            If e.Row.Cells(1).Text = "ESPERANDO" Then
                e.Row.Cells(1).BackColor = Drawing.Color.Red
            End If

            If e.Row.Cells(1).Text = "DESCARGANDO" Then
                e.Row.Cells(1).BackColor = Drawing.Color.Green
            End If



        End If
    End Sub
End Class