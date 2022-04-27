# data was hand typed from the following workbooks
#"~\\Removal\\data-raw\\Data for Capture program.xls" for ds., df., ss., and sf. catches
#"~\\Removal\\data-raw\\Copy of Calcs for net evaluation.xlsx" for ds., df., ss., and sf. effort
#"~\\Removal\\data-raw\\Copy of 10_ Pike Control  Netting.xls" for tf10 and hf10 data

ds5 <- list(c = c(34, 6, 3, 35, 22, 14, 17, 5, 1, 6), sa = 32.94, nets = 12, hours = 24)
df5 <- list(c = c(36, 25, 14, 18, 28, 10, 22, 25, 32, 27, 19, 19, 12, 10, 15), sa = 32.94, nets = 12, hours = 24)
ss5 <- list(c = c(179, 141, 122, 84, 36, 24, 12, 13, 5, 5, 4, 5, 2, 3, 3, 5), sa = 72.23, nets = 12, hours = 24)
sf5 <- list(c = c(100, 166, 113, 140, 74, 96, 136, 157, 96, 100, 92, 79, 27, 27), sa = 72.23, nets = 12, hours = 24)
ds6 <- list(c = c(13, 12, 7, 3, 1, 1, 6, 8, 9, 10, 3, 1), sa = 32.94, nets = 12, hours = 24)
df6 <- list(c = c(64, 46, 26, 27, 24, 12, 8, 16, 14, 15, 12), sa = 32.94, nets = 12, hours = 24)
ss6 <- list(c = c(74, 35, 50, 42, 30, 23, 41, 8, 17, 12, 5, 7), sa = 72.23, nets = 12, hours = 24)
sf6 <- list(c = c(15, 12, 8, 3), sa = 72.23, nets = 12, hours = 24)
ds7 <- list(c = c(48, 10, 12, 10), sa = 32.94, nets = 24, hours = 24)
df7 <- list(c = c(49, 41, 38, 28, 37, 26, 56, 31, 26, 30, 17, 21, 22, 15, 32), sa = 32.94, nets = 24, hours = 24)
tf10 <- list(c = c(11, 10, 2, 1, 2, 0, 0), sa = 4.63, nets = c(4, 16, 16, 16, 16, 12, 10), hours = c(18, 23, 22, 25, 23, 72, 48))
hf10 <- list(c = c(2, 16, 1, 4, 1, 1), sa = 42.73, nets = c(4, 36, 36, 36, 36, 11), hours = c(22, 22, 24, 25, 24, 167))
dat_remove <- list(ds5 = ds5,
                   df5 = df5,
                   ss5 = ss5,
                   sf5 = sf5,
                   ds6 = ds6,
                   df6 = df6,
                   ss6 = ss6,
                   sf6 = sf6,
                   ds7 = ds7,
                   df7 = df7,
                   tf10 = tf10,
                   hf10 = hf10)

devtools::use_data(dat_remove, overwrite = TRUE)
