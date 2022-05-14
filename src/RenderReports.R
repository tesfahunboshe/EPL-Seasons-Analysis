# install and load necessary packages
requiredPackages = c("knitr","rmarkdown")

for(i in requiredPackages){if(!require(i,character.only = TRUE)) install.packages(i)}
for(i in requiredPackages){if(!require(i,character.only = TRUE)) library(i,character.only = TRUE)}

# set the season and teams
seasons <- c("0910", "1011","1112", "1213","1314", "1415","1516", "1617", "1718","1819")
teams <- c("Man United", "Arsenal", "Liverpool","Man City", "Tottenham", "Huddersfield","Newcastle","Chelsea","Crystal Palace","Southampton")

# render in a loop
for (season in seasons[1:2]) {
  
  for (team in teams[1:2])
  {
    render(
      "ReportGenerator.Rmd",
      params = list(
        season = season,
        team = team
      ),
      output_format = "html_document",
      output_file = paste0("../output/",team," Analysis_season_",season, ".html"), # saves in output folder
    )
  }
  
}