const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const Contenido = sequelize.define( "Contenido", {
    idContenido: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    poster: {
        type: DataTypes.STRING,
        allowNull: false
    },
    titulo: {
        type: DataTypes.STRING,
        allowNull: false
    },
    idCategoria: {
        type: DataTypes.INTEGER,
    },
    resumen: {
        type: DataTypes.STRING,
        allowNull: false
    },
    temporadas: {
        type: DataTypes.STRING,
        allowNull: false
    },
    trailer: {
        type: DataTypes.STRING,
        allowNull: true
    },   
},
{
   tableName: "Contenidos",
   timestamps: false, 
}
)

module.exports = Contenido;