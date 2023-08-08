import 'package:bubble/views/footer_view.dart';
import 'package:flutter/material.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: SizedBox(
              height: 150,
              width: 150,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/doctor.jpg"),
                minRadius: 1,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Dr. Sandeep",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          const Text(
            "MBBS, KIMS",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 130,
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll(
                  Theme.of(context).primaryColor,
                ),
              ),
              child: const Text(
                'Edit Profile',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ),
          ),
          const Divider(
            thickness: 1.5,
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 45, right: 45),
            child: ListTile(
              leading: Icon(
                Icons.settings,
                color: Theme.of(context).primaryColor,
                size: 25,
              ),
              title: const Text(
                "Settings",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              trailing: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor,
                ),
                child: const Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 45, right: 45),
            child: ListTile(
              leading: Icon(
                Icons.info_outline_rounded,
                color: Theme.of(context).primaryColor,
                size: 25,
              ),
              title: const Text(
                "App Information",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 45, right: 45),
            child: ListTile(
              leading: Icon(
                Icons.logout_sharp,
                color: Theme.of(context).primaryColor,
                size: 25,
              ),
              title: const Text(
                "Sign Out",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 45, right: 45),
            child: ListTile(
              leading: Icon(
                Icons.delete_forever,
                color: Theme.of(context).primaryColor,
                size: 25,
              ),
              title: const Text(
                "Delete Account",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const FooterView(3),
    );
  }
}
