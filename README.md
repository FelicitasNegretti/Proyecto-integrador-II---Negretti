# TRAILERFLIX - PROYECTO INTEGRADOR II
Integrantes del proyecto integrador II: 
- Negretti Felicitas
- Negretti Milagros

Para realizar este proyecto utilizamos Visual Studio Code, Express.js, DB Designer, MySQL Workbench, Sequelize  y Postman.

## Instalación
En la terminal escribir lo siguiente para instalar las dependencias necesarias.
```shell
npm i
```
Crear un archivo ".env" tomando como ejemplo el ".env-example". 

## Ejecución
Para ejecutar en modo desarrollo
```shell
npm run dev
```

Para ejecutar en modo producción
```shell
node server.js
```
## Postman
Para leer, crear, modificar o eliminar un contenido deberá utilizar Postman. En la siguiente tabla se detalla el método y la URL(ruta) a usar para cada objetivo: 
| Objetivo | Método | Ruta |
| :-------: | :-: | :---: |
| Obtener todos los contenidos | GET | http://localhost:3000/contenidos |
| Obtener un contenido por su id | GET | http://localhost:3000/contenidos/:contenidoID |
| Filtrar contenidos por su nombre completo o parcial | GET | http://localhost:3000/contenidos/titulo/:titulo |
| Agregar un nuevo contenido (*) | POST | http://localhost:3000/contenidos |
| Modificar un contenido | PUT | http://localhost:3000/contenidos/:contenidoID |
| Eliminar un contenido | DELETE | http://localhost:3000/contenidos/:contenidoID |


(*)La estructura del contenido a agregar debe ser la siguiente:
```json
{
    "poster": "/poster/36.jpg",
    "titulo": "Merlina",
    "idCategoria": 1,
    "resumen": "Merlina Addams investiga una ola de asesinatos mientras hace nuevos amigos (y enemigos) en la Academia Nunca Más",
    "temporadas": 1,
    "trailer": ""
},
```
Si se quiere modificar una parte del contenido, se debe escribir la estructura completa.

Cuando se agregue un nuevo contenido a la base de datos automaticamente se le asignará un código al azar que lo identifique(id).