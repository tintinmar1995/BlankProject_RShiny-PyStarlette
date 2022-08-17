shinyServer(function(input, output, session) {

  output$content = renderText({
    return(tryCatch(expr = {"Communication réussie"}, error=function(e){
     "Communication en échec" 
    }))
  })
  
})
