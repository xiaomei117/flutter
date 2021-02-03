import 'package:shared_preferences/shared_preferences.dart';

class SharePreference{

  static final SharePreference starPer = SharePreference._privateConstructor();
  SharePreference._privateConstructor();
  static Future<SharedPreferences> prefs= SharedPreferences.getInstance();
  static List<String> listID = [];


  static const String KEY_RECENT_VIEWED_LIST = 'RecentViewed';

  writeList(String key,String value) async{
    for(int i=0;i<listID.length;i++){
      if(listID[i] == value) listID.remove(value);
    }
    listID.add(value);
    if(listID.length>10) listID.removeAt(0);
    SharePreference.prefs.then((v) => v.setStringList(key, listID));
  }
  Future<List> readList() async{
    return await prefs.then((v) {
      if(v.getStringList(KEY_RECENT_VIEWED_LIST)!=null) {
        return v.getStringList(KEY_RECENT_VIEWED_LIST);
      }
      else return[];
    } );
  }

}