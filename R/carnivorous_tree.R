#'Plots a phylogenetic tree of species
#'
#'@param Vspec A vector of species names
#'@return product A plotted phylogenetic tree of those species
#'@Usage
#'species<-c("Pinguicula lutea","Sarracenia alata", "Drosera tracyi","Pinguicula pumila")
#'carnivorous_tree(species)

carnivorous_tree<-function(species){
  species_resolved<-rotl::tnrs_match_names(species)
  tr <- tol_induced_subtree(ott_ids = ott_id(species_resolved))
  tree<-plot(tr)
  if(length(tr$tip.label)>0){
    return("Error-tips-found")
  }
   return(tree)
}