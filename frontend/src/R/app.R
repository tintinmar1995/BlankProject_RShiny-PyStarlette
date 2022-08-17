#' @title Run App
#'
#' @description Cette fonction permet de lancer le serveur
#'
#' @param host \code{character}. See \code{\link{shinyAppDir}} (options).
#' @param port \code{integer}. See \code{\link{shinyAppDir}} (options)..
#'
#' @importFrom shiny shinyAppDir
#'
#' @export
runApp <- function(host="0.0.0.0", port=8050, backend=NULL, launch.browser=FALSE) {
  
  # Confiugration de l'URL du backend
  if(!is.null(backend)) Sys.setenv(URL_BACKEND=backend)

  shiny::shinyAppDir(
    appDir=system.file(file.path("shiny"), package="Squelette"),
    options=list(host=host, port=port, launch.browser=launch.browser))
}
