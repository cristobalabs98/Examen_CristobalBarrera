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