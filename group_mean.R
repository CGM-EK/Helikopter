#' Compute group-wise mean
#' @export
group_mean <- function(data, group_var, value_var) {
  dplyr::summarise(
    dplyr::group_by(data, {{ group_var }}),
    mean_value = mean({{ value_var }}, na.rm = TRUE)
  )
}
