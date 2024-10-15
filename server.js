const express = require("express")
const app = express()

const PORT = process.env.PORT || 3000

const sequelize = require("./src/conexion/connection")
const Contenido = require("./src/modelos/contenido")

const { Op } = require("sequelize")

app.use(express.json())

//Middleware que va a autenticarse y hacer la sincronizacion de todos los modelos
app.use( async (req, res, next) => {
    try{
        await sequelize.authenticate()
        await Contenido.sync()
        next()
    } catch (error) {
        res
        .status(500)
        .json({ error: "Error en el servidor", description: error.message,})
    }
})

//endpoint para ver todos los contenidos
app.get("/contenidos", async (req, res) => {
    try {
        const allContenidos = await Contenido.findAll()
        const allContenidosData = allContenidos.map((contenido) => contenido.dataValues)
        
        allContenidosData.length !== 0
            ? res.status(200).json(allContenidosData)
            : res.status(404).json({error: "No se encontraron contenidos"})       
    } catch(error){
        res
        .status(500)
        .json({
            error: "Error al conectar o consultar la base de datos",
            description: error.message,
        })
    }finally{
        sequelize.close()
    }
})

//endpoint para buscar un contenido por clave primaria a traves de su ID
app.get("/contenidos/:contenidoID", async (req, res) => {
    try {
        const {contenidoID} = req.params
        const contenido = await Contenido.findByPk(contenidoID)

        !contenido
            ? res.status(404).json({error: "Contenido no encontrado"})
            : res.status(200).json(contenido)       
    } catch(error){
        res
        .status(500)
        .json({error: "Error en el servidor", description: error.message,})
    }
})


//endpoint para filtrar un contenido por titulo
app.get("/contenidos/titulo/:titulo", async (req, res) => {
    try {
        const {titulo} = req.params
        const contenidos = await Contenido.findAll({
            where: {
                titulo: {
                    [Op.like]: `%${titulo}%`
                }
            }
        })

        contenidos.length !== 0
            ? res.status(200).json(contenidos) 
            : res.status(404).json({error: "No se encontraron contenidos para listar"})      
    } catch(error){
        res
        .status(500)
        .json({error: "Error en el servidor", description: error.message,})
    }
})

//endpoint para agregar un nuevo contenido
app.post("/contenidos/", async (req, res) => {
 try{
    const {
        poster,
        titulo,
        idCategoria,
        resumen,
        temporadas,
        trailer,
    } = req.body;

    const contenido = await Contenido.create({
        poster,
        titulo,
        idCategoria,
        resumen,
        temporadas,
        trailer,
    });

    res.status(201).json(contenido)
 } catch (error) {
    res.status(500).json({
        error: "Error en el servidor",
        description: error.message
    })
 }
});

//endpoint para modificar un contenido
app.put("/contenidos/:contenidoID", async (req, res) => {
    try {
        const { contenidoID } = req.params

        const {
            poster,
            titulo,
            idCategoria,
            resumen,
            temporadas,
            trailer,    
        } = req.body;

    const [contenidoAModificar] = await Contenido.update(
        {
            poster,
            titulo,
            idCategoria,
            resumen,
            temporadas,
            trailer,    
        },
    {
        where: { idContenido : contenidoID }
    }
    );
    if (contenidoAModificar === 0) {
        return res.status(404).json({ error: "Producto no encontrado."})
    }

    const contenidoModificado = await Contenido.findByPk(contenidoID)
    res.status(200).json(contenidoModificado)
    } catch (error) {
        res.status(500).json({
            error: "Error en el servidor",
            description: error.message
        })
    } 
})

//endpoint para eliminar un contenido
app.delete("/contenidos/:contenidoID", async (req, res) => {
    const { contenidoID } = req.params;

    try{
        const contenidoAEliminar = await Contenido.findByPk(contenidoID);

        if(!contenidoAEliminar){
            return res.status(404).json({error: "Contenido no encontrado"})
        }

        await contenidoAEliminar.destroy();

        res.status(204).send();
    } catch (error) {
        res.status(500).json({
            error: "Error en el servidor",
            description: error.message
        });
    }
})

app.listen(PORT, () =>{
    console.log(`http://localhost:${PORT}`)
})



