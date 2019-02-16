# Loading data from SVN from GIT repo
air_data = read.csv(url("https://raw.githubusercontent.com/iamrafael8/infoviz/master/air_quality_Nov2017.csv"), header = TRUE)

# Loading gglot2 library
library(ggplot2)

# Gatting maximum value of data
value_max <- max(air_data['NO2.Value'], na.rm = TRUE)

# Plotting the graph
ggplot(air_data, aes(air_data$NO2.Value)) +
    geom_histogram(
        breaks=seq(0, value_max, by=1),
        color='#173F5F',
        fill='#3CAEA3',
        alpha=.8) +
    labs(
        title="Histogram for Air Quality Value",
        x="Value",
        y="Frequency")
