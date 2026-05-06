my_theme = theme_light(base_size=10) +
  theme(legend.position="bottom",
        legend.key.size=unit(0.3, "cm"),
        panel.background=element_rect(fill="white"),
        axis.text.x=element_text(size=8),
        axis.text.y=element_text(size=8),
        axis.title=element_text(size=10),
        legend.text=element_text(size=8),
        legend.title=element_text(size=10),
        text=element_text(size=10), 
        plot.title=element_text(size=12),
        plot.tag=element_text(size=18, face="bold"))


# clones_palette = c("Clones"="indianred3", "Clones+subclones"="dodgerblue3")
clones_palette = c("Clone"="deepskyblue4", "Subclone"="magenta4")

palette_lineages = RColorBrewer::brewer.pal(3, "Dark2")

filter_palette = c("Filtered"="darkorange", "Pass"="purple", "No filter"="#8FBC8B")
source_palette = c("indianred", "steelblue")

genvec = c("Cdkn2a-/- SF.LTR", "Cdkn2a-/- SIN.LV.PGK", "WT SF.LTR", "WT SIN.LV.PGK")
palette_genvec = c("#7fb3d5", "#FF8C00", "#8FBC8B", "#D98880")
palette_genvec = c(palette_genvec %>% setNames(genvec), 
                   palette_genvec %>% setNames(genvec %>% str_replace_all(" ", "\n")))


palette_validation = list("A"="#35978f", "B"="#ef6548", 
                          "C"="#e6ab02", "D"="#045a8d", "jy"="#7570b3",
                          "C3"="#35978f", "C4"="#ef6548", "C1"="#e6ab02", 
                          "C2"="#045a8d", "C0"="#7570b3") %>% unlist()


# branch_palette = ggsci::pal_simpsons()(5)
branch_palette = c("#7F58A5", "#D87F27", "#DFBB24", "#67ADA9", "#B5CDE3") %>% 
  setNames(c("WT->P1", "P1->P2", "P1->Myeloid", "P2->B", "P2->T"))


# tool palette
palette_tools = c("lineaGT"="forestgreen", "multIS"="goldenrod")
