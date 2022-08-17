require(httr)

shinyServer(function(input, output, session) {

  output$content = renderText({
    return(tryCatch(expr = {
      backend = Sys.getenv('URL_BACKEND')
      response = httr::GET(backend)
      return(httr::content(response))
      }, error=function(e){
     "Communication en échec" 
    }))
  })
  
})
