library(ggplot2)

hfi <- read.csv('./hfi_cc_2018.csv')

hfi_select <- subset(hfi, subset = pf_rol > 0)

ggplot(hfi_select, aes(pf_rol, ef_legal, color = hf_score)) + 
  scale_x_continuous(breaks = seq(1, 9, by = 0.5)) +
  scale_y_continuous(breaks = seq(1, 9, by = 1)) +
  geom_count(show.legend=T) + 
  geom_smooth(method="lm", se=F, color="grey") + 
  labs(
    title = "The Human Freedom Index",
    subtitle = "Rule of Law vs Legal System and Property Rights",
    x = "Rule of Law",
    y = "Legal System and Property Rights",
    color = "Human Freedom")
