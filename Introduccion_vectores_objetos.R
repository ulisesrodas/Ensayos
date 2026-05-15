# =========================================================
# TÍTULO: Introducción a Vectores y Objetos en R
# OBJETIVO: Ensayo de sintaxis básica para control de versiones
# =========================================================

# 1. VECTORES (La estructura más simple en R)
# Un vector es un objetivo: una colección de elementos del mismo tipo.

# Vector numérico (ej. edades de una muestra)
edades <- c(25, 30, 18, 45, 22)

# Vector de caracteres (ej. distritos de Lima)
distritos <- c("Lince", "Surco", "Cercado", "Breña", "Miraflores")

# Vector lógico (ej. ¿Es mayor de edad?)
es_mayor <- c(TRUE, TRUE, FALSE, TRUE, TRUE)


# 2. OBJETOS COMPUESTOS
# Los objetos pueden almacenar diferentes tipos de datos.

# Data Frame: Es como una tabla de Excel (muy usado en ciencias sociales)
encuesta_piloto <- data.frame(
  ID = 1:5,
  Edad = edades,
  Ubigeo = distritos,
  Estado = es_mayor
)

# 3. OPERACIONES BÁSICAS CON OBJETOS
media_edad <- mean(edades)

# Ver la estructura del objeto principal
str(encuesta_piloto)