## Capstone: Coursera Data Science
## Final Project

library(shiny)
library(markdown)

## SHINY UI
shinyUI(
    fluidPage(
        titlePanel("FINAL PROJECT - DATA SCIENCE CAPSTONE"),
        sidebarLayout(
            sidebarPanel(
                helpText("ENTER A WORD, TEXT OR A SENTENCE TO PREVIEW NEXT WORD PREDICTION"),
                hr(),
                textInput("inputText", "PUT THE TEXT, WORD OR SENTENCE HERE",value = ""),
                hr(),
                helpText("1 - YOU HAVE TO ENTER A PARTIALLY TEXT /SENTENCE TO SHOW THE NEXT WORD PREDICTION.", 
                         hr(),
                         "2 - AFTER THE TEXT INPUT THE PREDICT NEXT WORD WILL BE DISPLAYED."),
                hr(),
                hr()
            ),
            mainPanel(
                h2("NEXT PREDICTED WORD:"),
                verbatimTextOutput("prediction"),
                strong("SENTENCE ENTERED:"),
                strong(code(textOutput('sentence1'))),
                br(),
                hr(),
                strong("USING SEARCH AT N-GRAMS TO SHOW NEXT WORD:"),
                strong(code(textOutput('sentence2'))),
                #hr(),
                #hr(),
                hr(),
                img(src = 'swiftkey_logo.jpg', height = 101, width = 400),
                #hr(),
                #hr(),
                img(src = 'coursera_logo.png', height = 122, width = 400),
                #hr()
            )
        )
    )
)
