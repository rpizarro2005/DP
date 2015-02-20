# ui.R

shinyUI(fluidPage(
  titlePanel("Exploring Spam DATA"),
  
  sidebarLayout(
    sidebarPanel(
      helpText(h6("To explore which variables are most likely to predict Spam messages. 
              Each variable is the % of appearance of a word (the same variable's name) in the total number of words of the message. 
              4601 observations (messages), 48 'words'. 
              If the variable name starts with num (e.g., num650) then it indicates the frequency of the corresponding number (e.g., 650).
              'Blue' is NOT SPAM, 'Red' is SPAM.
              DATA source: https://archive.ics.uci.edu/ml/datasets/Spambase")),
      
      selectInput("var", 
                  label = "Choose a variable to display",
                  choices = colnames(spam[1:48]),
                  selected = names(spam)[1])
      ),
    
    mainPanel(
      textOutput("text1"),
      plotOutput("distPlot")
    )
  )
))