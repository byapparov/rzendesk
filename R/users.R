#' Gets Zendesk users via increment API
#' 
#' @export
#' @param subdomain organisation subdomain on zendesk
#' @param start.time starting point for new users based on the update_date
#' @return data.table with zendesk users
zdGetUsers <- function(subdomain, start.time) {
  users <- zdGetObjects("users", subdomain, start.time)
  if(length(users) == 0) {
    return(NULL)
  }
  dt <- zdExtractData(users, c("id", "email", "created_at", "updated_at", "role"))
  return(dt)
}
