import 'package:flutter/material.dart';
import 'package:flutterappfirebase/Services/auth.dart';

class Signin extends StatefulWidget {
  Signin({Key key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {

  AuthService _authService=AuthService();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: RaisedButton(
              child: Text('sign in annonymously'),
              onPressed: () async{
                dynamic result =await _authService.signInAnnonymously();
                if(result==null)
                  {
                    print('sign in failled');
                  }
                else
                  {
                    print('sign in successful');
                    print(result.userId);
                  }
          })),
    );
  }
}
