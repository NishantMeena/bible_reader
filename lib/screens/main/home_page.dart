import 'package:bible_reading/screens/auth/login_page.dart';
import 'package:bible_reading/screens/drawer/about_page.dart';
import 'package:bible_reading/screens/drawer/contact_page.dart';
import 'package:bible_reading/screens/drawer/dashboard_page.dart';
import 'package:bible_reading/screens/drawer/header_drawer.dart';
import 'package:bible_reading/screens/drawer/help_page.dart';
import 'package:bible_reading/screens/drawer/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;
  late var container;
  late var title;
  static bool showAppBar = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    title = "Dashboard";
    var container = DashboardPage();
  }

  @override
  Widget build(BuildContext context) {
    if (currentPage == DrawerSections.dashboard) {
      title = "Dashboard";
      container = DashboardPage();
    } else if (currentPage == DrawerSections.contacts) {
      title = "Contact";
      container = ContactPage();
    } else if (currentPage == DrawerSections.profile) {
      title = "Profile";
      container = ProfilePage();
    } else if (currentPage == DrawerSections.aboutus) {
      title = "About Us";
      container = AboutPage();
    } else if (currentPage == DrawerSections.help) {
      title = "Help";
      container = HelpPage();
    } else if (currentPage == DrawerSections.logout) {
      print("Logout Clicked");
      Future.delayed(
        Duration(
          seconds: 1,
        ),
        () {
          showLogout();
        },
      );
    }

    setState(() {});
    return Scaffold(
      resizeToAvoidBottomInset: true,
      // enable keyboard resizing
      drawer: showAppBar ? Drawer(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      MyHeaderDrawer(),
                      MyDrawerList(),
                    ],
                  ),
                ),
              ),
            ) : null,
      appBar: showAppBar ? AppBar(title: Text(title),backgroundColor: Colors.green
      ,actions:[
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {
               // showSearch(context: context, delegate: PeopleRoomsDelegate());
              },
            ),
            IconButton(
              icon: const Icon(Icons.bookmark_add, color: Colors.white),
              onPressed: () {
              },
            ),
          ]) : null,

      body: SafeArea(
        child: GestureDetector(
          onTap: (){
            setState(() {
              showAppBar = !showAppBar;
            });
          },
          child: container,
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Contacts", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "Profile", Icons.account_circle,
              currentPage == DrawerSections.profile ? true : false),
          menuItem(4, "About Us", Icons.info_rounded,
              currentPage == DrawerSections.aboutus ? true : false),
          menuItem(5, "Help", Icons.help,
              currentPage == DrawerSections.help ? true : false),
          menuItem(6, "Logout", Icons.logout,
              currentPage == DrawerSections.logout ? true : false),
          Divider(),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.profile;
            } else if (id == 4) {
              currentPage = DrawerSections.aboutus;
            } else if (id == 5) {
              currentPage = DrawerSections.help;
            } else if (id == 6) {
              currentPage = DrawerSections.logout;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showLogout() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text('Are you sure you want to Logout?'),
          actions: <Widget>[
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context, false);
                  });
                },
                child: Text("No")),
            ElevatedButton(
                onPressed: () {
                  doUserLogout();
                },
                child: Text('Yes'))
          ],
        );
      },
    );
  }

  void doUserLogout() async {
    Get.offAll(() => const LoginPage());
  }
}
enum DrawerSections { dashboard, contacts, profile, aboutus, help, logout }
