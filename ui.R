shinyUI(fluidPage(
    titlePanel("Demographics by County, 2010"),
    sidebarLayout(
        sidebarPanel(
            p("The demographic map included here was populated with county-by-county data from the 2010 US Census."),
            selectInput("var", 
                        label="Choose a variable to display",
                        choices=c("Percent White", "Percent Black", 
                                  "Percent Hispanic", "Percent Asian"),
                        selected="Percent White"),
            sliderInput("range", label="Range of interest", min=0, max=100, value=c(0,100))
        ),
        mainPanel(
            plotOutput("map")
        )
    )
))