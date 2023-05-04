import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileScreen();
  }
}

class ProfileScreen extends State<ProfilePage> {
  var mEmail = TextEditingController();
  var mPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            profileImage(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: mEmail,
                enabled: true,
                cursorColor: Colors.green.shade400,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.green, width: 1)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.grey)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.grey)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.grey)),
                  prefixIcon: Icon(Icons.email, color: Colors.green),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: mEmail,
                enabled: true,
                cursorColor: Colors.green.shade400,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.green, width: 1)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.grey)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.grey)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.grey)),
                  prefixIcon: Icon(Icons.email, color: Colors.green),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: mEmail,
                enabled: true,
                cursorColor: Colors.green.shade400,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.green, width: 1)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.grey)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.grey)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.grey)),
                  prefixIcon: Icon(Icons.email, color: Colors.green),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget profileImage() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 250,
          child: Card(
            elevation: 1,
            shadowColor: Colors.grey.shade200,
            child: Image.network(
              'https://picsum.photos/seed/picsum/200/300',
              width: double.infinity,
              height: 250,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned.fill(
            child: Align(
          alignment: Alignment.bottomCenter,
          child: getCircleAvatar(),
        )),
      ],
    );
  }

  Widget getCircleAvatar() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Stack(
        children: [
          CircleAvatar(
            radius: 55,
            backgroundColor: Colors.green,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/icons/app_icon.png'),
            ),
          ),
          Positioned.fill(
              child: Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.green,
              child: CircleAvatar(
                radius: 15,
                child: Icon(Icons.edit),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
