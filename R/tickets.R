#' Gets Zendesk tickets via increment API
#'
#' @export
#' @param subdomain organisation subdomain on zendesk
#' @param start.time starting point for new tickets based on the update_date
#' @return data.table with zendesk tickets
zdGetTickets <- function(subdomain, start.time) {
  ticket.fields <- c("id", "created_at", "updated_at", "type", "status", "subject")
  tickets <- zdGetObjects("tickets", subdomain, start.time)
  if(length(tickets) == 0) {
    return(NULL)
  }
  dt <- zdExtractData(tickets, ticket.fields)
  return(dt)
}
