import 'package:shared_preferences/shared_preferences.dart';

class SharePreference{

  static final SharePreference starPer = SharePreference._privateConstructor();
  SharePreference._privateConstructor();
  static Future<SharedPreferences> prefs= SharedPreferences.getInstance();
  static List<String> listID = [];

<<<<<<< .merge_file_PPQf93
=======
  static const String KEY_RECENT_VIEWED_LIST = 'RecentViewed';

>>>>>>> .merge_file_JG8c7t
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
<<<<<<< .merge_file_PPQf93
      if(v.getStringList('RecentViewed')!=null) {
        return v.getStringList('RecentViewed');
=======
      if(v.getStringList(KEY_RECENT_VIEWED_LIST)!=null) {
        return v.getStringList(KEY_RECENT_VIEWED_LIST);
>>>>>>> .merge_file_JG8c7t
      }
      else return[];
    } );
  }

}