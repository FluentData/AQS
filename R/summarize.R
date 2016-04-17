#' Summarize an AQDM object
#' @export
summarize.AQDM <- function(data){
  # df_aqdm <- makeAQDM(df)
  # data <- df_aqdm
  summary <- data %>%
    mutate(Monitor = paste0(str_pad(State_Code, 2, "left", "0"),
                            str_pad(County_Code, 3, "left", "0"),
                            str_pad(Site_Num, 4, "left", "0"),
                            POC)) %>%
    group_by(Monitor, Parameter_Code, Sample_Duration) %>%
    mutate(Begin_Date_Local = min(as.Date(Date_Local), rm.na = TRUE),
           End_Date_Local = max(as.Date(Date_Local), rm.na = TRUE)) %>%
    ungroup() %>%
    select(Monitor, AQS_Parameter_Desc, Sample_Duration, Begin_Date_Local,
           End_Date_Local) %>% distinct()




}
