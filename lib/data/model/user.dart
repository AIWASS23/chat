
class UserM{
  late String fname ;
  late String lname ;
  late String phone ;
  late String email ;
  late String password ;
  late bool login ;
  late List groups = [] ;
  late String profilePic = "" ;
  late String uid = "" ;

  UserM() ;

  // SaveData in Map >>> to insert D.B >> List<Map>

  Map<String , dynamic> toMap(){
    Map<String , dynamic> saveData = <String , dynamic>{} ;
    saveData['fname'] = fname ;
    saveData['lname'] = lname ;
    saveData['email'] = email ;
    saveData['groups'] = groups ;
    saveData['profilePic'] = profilePic ;
      return saveData ;
  }

  // fromMapData in Map >>> in readData D.B >> List<Map>
  
  UserM.fromFirestore(Map<String , dynamic> data ){
    fname = data['fname'] ;
    lname = data['lname'] ;
    phone = data['phone'] ;
    email = data['email'];
  }
}