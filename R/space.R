#' Insert HTML Space
#' 
#' Insert n iterations of HTML spacing into a document. 
#' 
#' @param n Number of spaces to insert.
#' @param copy2clip logical.  If \code{TRUE} attempts to copy the output to the 
#' clipboard. 
#' @details \code{HS} returns horizontal space (using \code{&nbsp;}) and \code{VS}
#' returns vertical space (using \code{</br>}).
#' @export
#' @rdname space
#' @examples
#' paste0("reports", HS(10), "end")
#' cat(paste0("the", VS(), "end"))
#' cat(paste0("the", VS(3), "end"))
HS <- function(n=1, copy2clip = interactive()) {
    x <- paste(rep("&nbsp;", n), collapse="")
    if(copy2clip){
        write_clip(x)
    }
    return(x)
}

#' @export
#' @rdname space
VS <- function(n=1, copy2clip = interactive()) {
    x <- paste(rep("</br>", n), collapse="")
    if(copy2clip){
        write_clip(x)
    }
    x
}
