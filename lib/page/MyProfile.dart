import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green.shade900,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: double.infinity,

              height: 150,
              decoration: BoxDecoration(
                color:Color(0xFF186565),

                  borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 40.0,
                    minRadius: 40.0,
                    backgroundColor: Colors.white,
                    //backgroundImage: ,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Anagha M S",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      Text("XXXXXXXXX"),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  CardListTile(
                    icon: Icons.language,
                    title: 'Account Settings',
                    onTap: () {
                      // Handle language setup
                    },
                  ),
                  CardListTile(
                    icon: Icons.lock,
                    title: 'Change Password',
                    onTap: () {
                      // Handle password change
                    },
                  ),
                  CardListTile(
                    icon: Icons.privacy_tip,
                    title: 'Privacy Policy',
                    onTap: () {
                      // Handle privacy policy
                    },
                  ),
                  CardListTile(
                    icon: Icons.description,
                    title: 'Terms and Conditions  ',
                    onTap: () {
                      // Handle terms and conditions
                    },
                  ),

                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
                height: 60,
                child: ElevatedButton(onPressed: (){}, child: Text("Logout")))
          ],
        ),
      ),
    );
  }
}

class CardListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const CardListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}
