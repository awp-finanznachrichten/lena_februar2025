grafiken_uebersicht <- read_excel("./Data/metadaten_grafiken_eidgenoessische_Abstimmungen.xlsx",sheet=2)

#grafiken_uebersicht <- datawrapper_codes %>%
#  filter(grepl("Kantonale Vorlage",Typ) == TRUE)

for (i in 1:nrow(grafiken_uebersicht)) {

metadata_chart <- dw_retrieve_chart_metadata(grafiken_uebersicht$ID[i])


dw_edit_chart(grafiken_uebersicht$ID[i],
              visualize = list("mapView" = "crop",
                               "hide-empty-regions" = TRUE))

dw_publish_chart(grafiken_uebersicht$ID[i])
}



