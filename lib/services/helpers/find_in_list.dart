

bool compareLists(List<String> a, List<String> b){
  for(String s in a){
    if(b.contains(s)) {
      return true;
    }
  }
  return false;
}