tags$style("@import url(https://use.fontawesome.com/releases/v5.7.2/css/all.css);")

dashboardPage(skin = "blue", 
              dashboardHeader(title = strong("TEKNOMEDIKA")),
            
                dashboardSidebar(
                sidebarMenu(
                  menuItem(text = "Home",
                           tabName = "home", 
                           icon = icon("home")), 
                  menuItem(text = "Dashboard", 
                           tabName = "plot",
                           icon = icon("chart-bar"))
                )),
              dashboardBody(
                
                tabItems(
                  tabItem(tabName = "home", 
                          h1("My First Shiny Dashboard"),
                          valueBox(value = 0,
                                   subtitle = "Kasus Terbanyak", 
                                   icon = icon("database"), color = "red"),
                          valueBox( value = 0,
                                    subtitle = "Total Kasus", 
                                    icon = icon("database"), color = "blue"),
                          valueBox( value = 0,
                                    subtitle = "Jumlah Hari", 
                                    icon = icon("database"), color = "green")
                  ), 
                  tabItem(tabName = "plot",
                          label = "Pilih Bulan", 
                          plotlyOutput(outputId = "plot1")
                          
                  )
                )
              )
)