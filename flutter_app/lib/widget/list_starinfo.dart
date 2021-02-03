class ListStarInfo{
  static List listOfStar = [];
  static List newList = [];
  static List liveList = [];
  static List pickList = [];
  static List listTemp = [];
  static final ListStarInfo starData = ListStarInfo._privateConstructor();
  ListStarInfo._privateConstructor();

  List receiveInfo(List starListInfo){
    listOfStar=starListInfo;
    return listOfStar;
  }


  void buildList(){
    listTemp.addAll(listOfStar);
    listTemp.sort((a, b) => a.firstApprovedAt.compareTo(b.firstApprovedAt));
    int len=listTemp.length;
    if (listTemp.isNotEmpty) {
      for (int i = len-1; i >len-1-2; i--) {
        newList.add(listTemp[i]);
        listTemp.removeAt(i);
      }

      for (int i = 0; i < len -2 -4; i++) {
        if(listTemp[i].liveStatus == 1&&liveList.length<4){
          liveList.add(listTemp[i]);
          listTemp.removeAt(i);
          i--;
        }
      }

      for (int i = 0; i < len - 2-4-6; i++) {
        if(pickList.length<6){
          pickList.add(listTemp[i]);
          listTemp.removeAt(i);
          i--;
        }
      }
    }

  }


}