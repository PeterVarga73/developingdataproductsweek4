library(shiny)

shinyUI(fluidPage(
  titlePanel("Plot of Ovarall Ratings versus 6 variables"),
  sidebarLayout(
    sidebarPanel(
  
      p("Select the X variable:") ,   
      radioButtons("xvar", "X variable:",
                   c("Complaints" = "com",
                     "Privileges" = "pri",
                     "Learning" = "lea",
                     "Raises" = "rai",
                     "Critical"="cri",
                     "Advancel"="adv")),
      p("Complaints: Handling of employee complaints"),
      p("Privileges: Does not allow special privileges"),
      p("Learning: Opportunity to learn"),
      p("Raises: Raises based on performance"),
      p("Critical: Too critical"),
      p("Advancel: Advancement")
      
    ),
    mainPanel(
      p("From a survey of the clerical employees of a large financial organization, the data are aggregated from the questionnaires of the approximately 35 employees for each of 30 (randomly selected) departments. The numbers give the percent proportion of favourable responses to seven questions in each department."),
      h3("Graph of Overall Ratings versus the selected x variable"),

      plotOutput("plot2")
    )
  )
))