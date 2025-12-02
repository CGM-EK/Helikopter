group_median <- function(data, group_var, value_var) {
  dplyr::summarise(
    dplyr::group_by(data, {{ group_var }}),
    median_value = median({{ value_var }}, na.rm = TRUE)
  )
}
