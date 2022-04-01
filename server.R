function(input, output) {
  
  output$plot1 <- renderPlotly({
    
    mcn5 <- kie %>% 
      ggplot(mapping = aes(x = waktu, y = qty))+
      geom_line(linetype = "dashed")+
      geom_point(color = "red")+
      theme_fivethirtyeight()
    
  })
  
  
}