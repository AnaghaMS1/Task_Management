import 'package:flutter/material.dart';

class Task {
  final String taskId;
  final String dueDate;
  final String taskName;
  final int progress;
  final String avatar;
  final String status;
  final String assignedBy;
  final String department;
  final String note; // New field for note

  Task({
    required this.taskId,
    required this.dueDate,
    required this.taskName,
    required this.progress,
    required this.status,
    required this.avatar,
    required this.assignedBy,
    required this.department,
    required this.note, // Initialize note in constructor
  });
}

class MyTask extends StatefulWidget {
  @override
  _MyTaskState createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Task',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF186565), // Set tab bar color to green shade900
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
                  ListView.builder(
                    itemCount: allTasks.length,
                    itemBuilder: (context, index) {
                      return TaskCard(
                        task: allTasks[index],
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: ongoingTasks.length,
                    itemBuilder: (context, index) {
                      return TaskCard(
                        task: ongoingTasks[index],
                      );
                    },
                  ),
                  ListView.builder(
                    itemCount: completedTasks.length,
                    itemBuilder: (context, index) {
                      return TaskCard(
                        task: completedTasks[index],
                      );
                    },
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
  final Task task;

  TaskCard({required this.task});

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
                  SizedBox(height: 8),
                  Text(
                    task.taskId,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(task.dueDate),
                  SizedBox(height: 8),
                  Text(task.taskName),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(task.avatar),
                      ),
                      Column(
                        children: [
                          Text(task.assignedBy),
                          Text(task.department),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Note: ${task.note}',
                    style: TextStyle(color: Colors.blue),
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
                    value: task.progress / 100,
                    backgroundColor: Colors.grey,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
                  ),
                  SizedBox(width: 8),
                  Text(
                    '${task.progress}%', // Convert progress to string
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    task.status,
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
List<Task> allTasks = [
  Task(
    taskId: "005",
    taskName: 'Roofing and Waterproofing',
    dueDate: 'Yesterday',
    avatar: "assets/g.jpeg",
    progress: 100,
    status:"Completed",
    assignedBy: 'Roofing Contractor',
    department: 'Construction Department',
    note: 'Check for any leaks and apply waterproof coating.',
  ),
  Task(
    taskId: "5671",
    taskName: 'Foundation Excavation',
    dueDate: 'Today - 2:00 pm',
    avatar: "assets/e.jpeg",
    progress: 60,
    status:"Ongoing",
    assignedBy: 'Construction Manager',
    department: 'Construction Department',
    note: 'Ensure proper depth and alignment as per blueprint.',
  ),
  Task(
    taskId: "5672",
    taskName: 'Concrete Pouring for Pillars',
    dueDate: 'Tomorrow',
    avatar: "assets/a.png",
    progress: 40,
    status:"Ongoing",
    assignedBy: 'Project Engineer',
    department: 'Civil Engineering Department',
    note: 'Use reinforced concrete mix for durability.',
  ),
  Task(
    taskId: "6783",
    taskName: 'Steel Structure Installation',
    dueDate: 'Next Week',
    avatar: "assets/g.jpeg",
    progress: 20,
    status:"Ongoing",
    assignedBy: 'Site Supervisor',
    department: 'Construction Department',
    note: 'Follow safety protocols during installation.',
  ),
  Task(
    taskId: "6664",
    taskName: 'Electrical Wiring and Fixtures',
    dueDate: 'Next Month',
    avatar: "assets/d.png",
    progress: 10,
    status:"Ongoing",
    assignedBy: 'Electrical Engineer',
    department: 'Electrical Engineering Department',
    note: 'Ensure compliance with building codes and standards.',
  ),
  // Add more tasks with notes as needed
];

List<Task> ongoingTasks = [
  Task(
    taskId: "6783",
    taskName: 'Steel Structure Installation',
    dueDate: 'Next Week',
    avatar: "assets/a.png",
    progress: 20,
    status:"Ongoing",
    assignedBy: 'Site Supervisor',
    department: 'Construction Department',
    note: 'Follow safety protocols during installation.',
  ),
  Task(
    taskId: "6664",
    taskName: 'Electrical Wiring and Fixtures',
    dueDate: 'Next Month',
    avatar: "assets/d.png",
    progress: 10,
    status:"Ongoing",
    assignedBy: 'Electrical Engineer',
    department: 'Electrical Engineering Department',
    note: 'Ensure compliance with building codes and standards.',
  ),
  // Add more tasks with notes as needed
];

List<Task> completedTasks = [
  Task(
    taskId: "7605",
    taskName: 'Roofing and Waterproofing',
    dueDate: 'Yesterday',
    avatar: "assets/g.jpeg",
    progress: 100,
    status:"Completed",
    assignedBy: 'Roofing Contractor',
    department: 'Construction Department',
    note: 'Check for any leaks and apply waterproof coating.',
  ),
  Task(
    taskId: "5606",
    taskName: 'Interior Finishing Works',
    dueDate: 'Last Week',
    avatar: "assets/i.jpeg",
    progress: 100,
    status:"Completed",
    assignedBy: 'Interior Designer',
    department: 'Interior Design Department',
    note: 'Coordinate with clients for design approvals.',
  ),
  // Add more tasks with notes as needed
];
