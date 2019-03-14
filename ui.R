library(shiny)
# Definir la interfaz de para el despliegue
fluidPage(
  # Application title
  titlePanel("Ejemplo de datasets"),
  # Controles para mostrar las opciones de dataset
  sidebarLayout(
    sidebarPanel(
      selectInput("dataset", "Elegir un dataset:", 
                  choices = c("rock", "pressure", "cars")),
      numericInput("obs", "N?mero de observaciones para ver:", 10)
    ),
    #  Mostrar el resumtado de summary en un HTML
    # solicitar el numero de muestras
    mainPanel(
      verbatimTextOutput("summary"),
      tableOutput("view")
    )
  )
)

