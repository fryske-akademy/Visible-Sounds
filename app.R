library(shiny)

################################################################################

ui <- fluidPage(
  includeCSS("www/styles.css"),

  titlePanel(title = NULL, windowTitle = "Visible Sounds"),
  
  img(src = 'FA1.png', height = 39, align = "right", style = 'margin-top: -1px; margin-right: 15px;'),
  titlePanel(title = HTML("<div class='title'>Visible Sounds<div>"), windowTitle = "Visible Sounds"),

  tags$head(
    tags$link(rel="icon", href="FA2.png"),
    
    tags$meta(charset="UTF-8"),
    tags$meta(name   ="description", content="Visible Sounds is a web app for the analysis of acoustic segment measurements. The app is an useful instrument for research in phonetics, sociolinguistics, dialectology, forensic linguistics, and speech-language pathology."),
    
    tags$style(tags$link(href='https://fonts.googleapis.com/css?family=Ubuntu', rel='stylesheet'))
  ),
  
  fluidPage
  (
    style = "border: 1px solid silver; padding: 6px; min-height: 767px; margin-left: 15px; margin-right: 15px; background-color: #eeeeee;",
    align = "center",
    
    div(style='height: 70px;'),
    
    fluidPage
    (
      style = "border: 1px solid silver; max-width: 670px; border-radius: 6px; background-image: linear-gradient(to bottom right, #94a4b8, #edf0f6);",

      br(), br(), br(),
      
      span(shiny::actionButton("visvow" , HTML("<br>Vowels    <br><br>"), class="tBut"), class="hPad", onclick="window.open('https://www.visiblevowels.org/', '_blank'); return false;"),
      
      div(class="vPad"),
      
      span(shiny::actionButton("viscons", HTML("<br>Consonants<br><br>"), class="tBut"), class="hPad", onclick="window.open('https://www.visibleconsonants.org/', '_blank'); return false;"),
      
      br(), br(), br(), br(), br()
    ),

    br(), br(),
        
    fluidPage
    (
      style = "max-width: 700px; background-color: #eeeeee;",
      align = "justify",
      
      p(style='font-size: 15px; color: #000000; font-family: Ubuntu;', "This site provides access to the twin web apps Visible Vowels and Visible Consonants. Visible Vowels is a web app for the analysis of acoustic vowel measurements: f0, formants and duration. Visible Consonants is a web app for the analysis of acoustic consonant measurements. For brief information about these two apps see", a("here", href = "https://www.visiblevowels.org/poster.pdf", target = "_blank"), "and",  a("here", href = "https://www.visibleconsonants.org/poster.pdf", target = "_blank"), ". Click", a("here", href = "https://www.fa.knaw.nl/fa-apps/tutorial/", target = "_blank"), "for a tutorial about Visible Vowels. Comments are welcome and can be sent to", img(src = 'email.png', height = 20, align = "center"),"."),
      br()      
    ),

    br(), br()
  )
)

################################################################################

server <- function(input, output, session)
{
}

################################################################################

options(shiny.sanitize.errors = TRUE)
options(shiny.usecairo=FALSE)

shinyApp(ui = ui, server = server)

################################################################################
