import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../constants.dart';

class SocialBottomSheet extends StatelessWidget {
  const SocialBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 12),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
        ),
        height: 160,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                " -----  Sign with  -----",
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SocialButton(
                      text: 'Sign In with Facebook',
                      onPress: () {
                        //controller.facebookSignInMethod();
                      },
                      imageName: 'assets/images/facebook.png',
                    ),
 /*
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesome.getIconData("facebook"),
                          color: Color(0xFF3b5998),
                        )),

  */

                    Text("Facebook")
                  ],
                ),
                Column(
                  children: <Widget>[
                    SocialButton(
                      onPress: () {
                        //this controller from GetWidget<AuthController>------
                        //controller.googleSignInMethod();
                      },
                      text: 'Sign In with Google',
                      imageName: 'assets/images/google.png',
                    ),
             /*
                    IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesome.getIconData("google"),
                            color: Color(0xFFdd4b39))),
             */
                    Text("Google")
                  ],
                ),
                Column(
                  children: <Widget>[
/*
                    IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesome.getIconData("twitter"),
                            color: Color(0xFF00aced))),
 */
                    Text("Twitter")
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
