ui = bootstrapPage(fluidPage(
      titlePanel('Nomogram predicting prognosis in glioblastoma'),
      titlePanel('Tunthanathip et al.'),
           sidebarLayout(sidebarPanel(uiOutput('manySliders'),
           checkboxInput('trans', 'Alpha blending (transparency)', value = FALSE),
           actionButton('add', 'Predict',class = "btn-warning"),
           br(), br(),
           helpText('Press Quit to exit the application'),
           actionButton('quit', 'Quit',class = "btn-danger")
           ),
           mainPanel(tabsetPanel(id = 'tabs',
           tabPanel('Survival plot', plotOutput('plot')),
           tabPanel('Predicted Survival', plotlyOutput('plot2')),
           tabPanel('Numerical Summary', verbatimTextOutput('data.pred')),
           tabPanel('Model Summary', verbatimTextOutput('summary'))
           )
           )
           )))
