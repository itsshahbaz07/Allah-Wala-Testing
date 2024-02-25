import 'package:allah_wala_biryani_app/common/widgets/text_boxx.dart';
import 'package:allah_wala_biryani_app/common/widgets/without_edit_box.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
            "Profile Page",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: ListView(
        children: [
          // profile picture
          const SizedBox(
            height: 50,
          ),
          Icon(
            Icons.person,
            size: 72,
          ),

          const SizedBox(
            height: 10,
          ),

          Text(
            "awala@gmail.com",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[700]
            ),
          ),
          
          // Heading
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 25.0
            ),
            child: Text(
                "Name",
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),

          // Name
          MyTextBoxx(
              text: 'Henriette',
              sectionName: 'UserName',
            onSaved: (String newText) {},
          ),

          // Email
          MyWithoutEditBoxx(
            text: 'henriette.bast@example.com',
            sectionName: 'Email',
            onPressed: () {},
          ),

          // Phone Number
          MyWithoutEditBoxx(
            text: '9974',
            sectionName: 'Phone',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
