
import 'package:flutter/material.dart';
import 'package:taskmanagementproject/page/MyProfile.dart';
import 'package:taskmanagementproject/page/MyTask.dart';
import 'package:taskmanagementproject/page/leaderboard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(

            margin: EdgeInsets.only(top:20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height:20 ,),
                      Text(
                        "Hello,",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,

                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Anagha M S",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Monday, 17 Jan 2022",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TaskCard(taskcount: "50", title: "All Task ", onPress: (){
                      }),
                      TaskCard(taskcount: "20", title: "Ongoing ", onPress: (){}),
                      TaskCard(taskcount: "30", title: "Completed ", onPress: (){}),

                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFF186565),

    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    )),
                child: ListView(
                  children: [
                    SizedBox(height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyTask()));
                          },
                          icon: Icons.tab,
                          title: 'My Task',
                          subtitle: '34 new task added',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfile()));
                          },
                          icon: Icons.person,
                          title: 'My Profile',
                          subtitle: 'Your profile',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: Icons.feedback,
                          title: 'Feedback',
                          subtitle: 'See all your feedback',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Leaderboard()));
                          },
                          icon: Icons.auto_graph,
                          title: 'LeaderBoard',
                          subtitle: 'See your rank',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    required this.onPress,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final VoidCallback onPress;
  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 5   ,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.green.shade900, size: 25),
            Text(title, style: TextStyle(fontSize: 20, color: Colors.black), textAlign: TextAlign.center),
            Text(subtitle, style: TextStyle(fontSize: 15, color: Colors.black), textAlign: TextAlign.center),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.taskcount, required this.title, required this.onPress});
  final String taskcount;
  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onPress,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.8,
        height: MediaQuery.of(context).size.height / 5,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              taskcount,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
                color: Colors.white,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
