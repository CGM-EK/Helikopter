group_sum <- function(data, group_var, value_var) {
  dplyr::summarise(
    dplyr::group_by(data, {{ group_var }}),
    sum_value = sum({{ value_var }}, na.rm = TRUE)
  )
}
