# README

This README would normally document whatever steps are necessary to get the
application up and running.

1-Creamos el proyecto, colocamos el superusuario y contraseña en YML,   generamos el comando db:create y commitiamos.

2-instalacion del devise, bundle add devise, despues revisamos el correo
generamos rails generate devise User (este crea migracion, modelo User y ruta) hacemos migracion, para requerir autenticacion en ciertas rutas usamos before_action en el controllador_ap
en la base de datos creamos dos operadores (email: 'operador1@gmail.com', password: '123456') y por ultimo generamos el 4to paso para tener devise "rails generate devise:views"
hicimos tambien la carpeta home de la app view donde tenemos nuestro index al cual no podemos ingresar si no hacemos log in "segundo commit"

3-colocamos bootstrap y realizamos el nav para poder tener un orden en el acceso de los usuarios

4- borrado en cascada 

5-<h1>Listado de Usuarios por Rango de Fechas</h1>

  <div>
    <label>Fecha de Inicio:</label>
    <%= date_field_tag :start_date, params[:start_date] %>
  </div>
  <div>
    <label>Fecha de Fin:</label>
    <%= date_field_tag :end_date, params[:end_date] %>
  </div>
  <%= submit_tag "Filtrar", class: "btn btn-primary" %>
<% end %>

<table>
  <thead>
    <tr>
      <th>Email</th>
      <th>Rol</th>
      <th>Fecha de Creación</th>
      <th>Última Actualización</th>
    </tr>
  </thead>
  <tbody>
    <% @users.each do |user| %>
      <tr>
        <td><%= user.email %></td>
        <td><%= user.role %></td>
        <td><%= user.created_at.strftime("%d/%m/%Y %H:%M") %></td>
        <td><%= user.updated_at.strftime("%d/%m/%Y %H:%M") %></td>
      </tr>
    <% end %>
  </tbody>
</table>