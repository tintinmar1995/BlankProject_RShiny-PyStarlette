header <- dashboardHeader(title="Squelette")

sidebar <- dashboardSidebar(sidebarMenu(
  menuItem("Default", tabName="default")
))

body <- dashboardBody(
  tabItems(
    tabItem(
      tabName = "default",
      verbatimTextOutput('content'))
  )
)

dashboardPage(
  header=header,
  sidebar=sidebar,
  body=body,
  title="Squelette")