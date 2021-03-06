#add NEW DATA RELEASED FLAG to publication trello board
#also create card for processing data on the trello processing board

library(tidyverse)
library(trelloR)

LPPcards <- get_board_cards("https://trello.com/b/2tGgK1yy/lpp-publication-shedule")
BID <- get_id_board("https://trello.com/b/2tGgK1yy/lpp-publication-shedule")
LPP_Labels <- get_board_labels(BID)


gsheet_LPPdates <- read_sheet("1rzjtZdAyclF-RFuqZB32Wo0wiQNIXAqX-NFx03rQzAo", sheet = "RAW", col_types = "ccciccccDDcccccDcDcD")


#select cards where new data release has been released AND the fresh data hasn't been already processed. 
ready4update <- gsheet_LPPdates %>% filter(`Pulication month...18` > `Last update date` & `Pulication month...18` < Sys.Date() ) 




