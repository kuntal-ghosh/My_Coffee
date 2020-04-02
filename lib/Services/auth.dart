import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterappfirebase/model/user.dart';

class AuthService{
  final FirebaseAuth _auth =FirebaseAuth.instance ;

  User _user(FirebaseUser user){
    return user!=null?User(user.uid):null;
  }

  //sign in annonymous
  Future signInAnnonymously () async{
    try{
      var result=  await _auth.signInAnonymously();
      FirebaseUser user =result.user;
      return _user(user);
    }
    catch(e){
        print(e.toString());
        return null;
    }
  }


  // sign in with email password
//sign in with social networking
//sign up
}