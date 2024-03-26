
import 'package:flutter/material.dart';


class MyTask extends StatefulWidget {
  @override
  _MyTaskState createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Task',style: TextStyle(color: Colors.white),),
        backgroundColor:Color(0xFF186565), // Set tab bar color to green shade900
      ),
      body: DefaultTabController(
        length: 3, // Show only 3 tabs: All, Ongoing, Completed
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Ongoing',
                ),
                Tab(
                  text: 'Completed',
                ),
              ],
              labelColor: Colors.white, // Set selected tab text color to white
              unselectedLabelColor: Colors.grey, // Set unselected tab text color to grey
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Replace with your task list widgets
                  Container(

                    color: Colors.white,

                    child: ListView.builder(

                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return TaskCard(
                          taskId:"3456789",
                          taskName:'Replacement mouse required',
                          dueDate: 'Tomorrow - 12:45 pm',
                          avatar: " ",
                          progress: 75,
                          assignedby: 'Saad Ibn Sayeed',
                          department: 'Marketing Department',
                          //isCompleted: false,
                        );
                      },
                    ),
                  ),
                  Container(

                    color: Colors.white,

                    child: ListView.builder(

                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return TaskCard(
                          taskId:"3456789",
                          taskName:'Replacement mouse required',
                          dueDate: 'Tomorrow - 12:45 pm',
                          avatar: " ",
                          progress: 75,
                          assignedby: 'Saad Ibn Sayeed',
                          department: 'Marketing Department',
                          //isCompleted: false,
                        );
                      },
                    ),
                  ),Container(

                    color: Colors.white,

                    child: ListView.builder(

                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return TaskCard(
                          taskId:"3456789",
                          taskName:'Replacement mouse required',
                          dueDate: 'Tomorrow - 12:45 pm',
                          avatar: " ",
                          progress: 75,
                          assignedby: 'Saad Ibn Sayeed',
                          department: 'Marketing Department',
                          //isCompleted: false,
                        );
                      },
                    ),
                  ),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class TaskCard extends StatelessWidget {
  final String taskId;
  final String dueDate;
  final String taskName;
  final int progress;
  final String avatar;
  final String assignedby;
  final String department;

  TaskCard({
    required this.taskId,
    required this.dueDate,
    required this.taskName,
    required this.progress,
    required this.avatar,
    required this.assignedby,
    required this.department,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left Side
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8,),
                  Text(
                    taskId,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8,),
                  Text(dueDate),
                  SizedBox(height: 8,),
                  Text(taskName),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(avatar),
                      ),
                      Column(
                        children: [
                          Text(assignedby),
                          Text(department),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(width: 8.0), // Spacing between left and right sides
            // Right Side
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularProgressIndicator(
                    value: progress/100,
                    backgroundColor: Colors.grey,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
                  ),
                  SizedBox(width: 8),
                  Text(
                    progress.toString(), // Convert progress to string
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Ongoing',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
