# =========================================================
# TÍTULO: Introducción a Vectores y Objetos en R
# OBJETIVO: Ensayo de sintaxis básica para control de versiones
# =========================================================

# LIBRERÍAS
# install.packages("ggplot2")
library(ggplot2)

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


# 4. GRÁFICO

# De puntos
ggplot(encuesta_piloto, aes(x = Edad, y = reorder(Ubigeo, Edad))) +
  geom_point(size = 4, color = "darkorange") +
  theme_bw() +
  labs(
    title = "Distribución de edades según distrito",
    x = "Edad",
    y = "Distrito"
  )

# Barras horizontales
ggplot(encuesta_piloto, aes(x = reorder(Ubigeo, Edad), y = Edad)) +
  geom_col(fill = "steelblue", width = 0.7) +
  coord_flip() + # Voltea el gráfico para que las barras sean horizontales
  theme_minimal() + # Un diseño limpio sin fondo gris
  labs(
    title = "Edad de los encuestados por distrito",
    subtitle = "Muestra piloto de 5 observaciones",
    x = "Distrito (Ubigeo)",
    y = "Edad (años)"
  )
