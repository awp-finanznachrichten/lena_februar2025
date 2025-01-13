#Load Libraries and Functions
source("./Config/load_libraries_functions.R",encoding = "UTF-8")

###Set Constants###
source("./Config/set_constants.R",encoding = "UTF-8")

###Load texts and metadata###
source("./Config/load_texts_metadata.R",encoding = "UTF-8")

#Votes Metadata
mydb <- connectDB(db_name="sda_votes")
rs <- dbSendQuery(mydb, paste0("SELECT * FROM datawrapper_codes WHERE date = '",voting_date,"'"))
datawrapper_codes <- DBI::fetch(rs,n=-1)
dbDisconnectAll()

for (i in 1:nrow(datawrapper_codes)) {
dw_publish_chart(datawrapper_codes$ID[i])  
}  