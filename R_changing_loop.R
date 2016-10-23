for(i in 1:nrow(treningowa)){
  val1<-attr(alc_var$alc_niski[treningowa$alcohol[i]],"memberships");
  val2<-attr(alc_var$alc_wysoki[treningowa$alcohol[i]],"memberships");
  print(val1);
  print(val2);
  if(val1<val2){
    treningowa$alcohol[i]="alc_wysoki"
  }else{
    treningowa$alcohol[i]="alc_niski"
  }
  val1<-attr(acid_var$acid_niski[treningowa$malic_acid[i]],"memberships");
  val2<-attr(acid_var$acid_sredni[treningowa$malic_acid[i]],"memberships");
  val3<-attr(acid_var$acid_wysoki[treningowa$malic_acid[i]],"memberships");
  
  if(val1>val2){
    treningowa$malic_acid[i]="acid_niski"
  }else if(val2>val3){
    treningowa$malic_acid[i]="acid_sredni"
  }else{
    treningowa$malic_acid[i]="acid_wysoki"
  }
  val1<-attr(intensity_var$intensity_niskie[treningowa$color_intensity[i]],"memberships");
  val2<-attr(intensity_var$intensity_srednie[treningowa$color_intensity[i]],"memberships");
  val3<-attr(intensity_var$intensity_wysokie[treningowa$color_intensity[i]],"memberships");
  
  if(val1>val2){
    treningowa$color_intensity[i]="intensity_niskie"
  }else if(val2>val3){
    treningowa$color_intensity[i]="intensity_srednie"
  }else{
    treningowa$color_intensity[i]="intensity_wysokie"
  }
}

