class ListStarInfo{
  static List listOfStar = [];
  static final ListStarInfo starData = ListStarInfo._privateConstructor();
  ListStarInfo._privateConstructor();

  List receiveInfo(List starListInfo){
    listOfStar=starListInfo;
    return listOfStar;
  }
}