import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Feedback',style: TextStyle(color: Colors.white),),
        backgroundColor:Color(0xFF186565), // Set tab bar color to green shade900
      ),
      body: ListView(
        children: [
          FeedbackItem(
            taskId: "543210",
            taskName: "Renovate kitchen area in apartment unit 3C",
            avatar: "assets/a.png",
            feedbackby: "Michael Johnson",
            department: "Renovation Team",
            feedback: "The renovation work in unit 3C has several issues. The paint job is uneven, and some tiles are not properly installed.",
          ),
          FeedbackItem(
            taskId: "543211",
            taskName: "Install new flooring in living room",
            avatar: "assets/d.png",
            feedbackby: "Emily Thompson",
            department: "Flooring Department",
            feedback: "The new flooring installation is incomplete. Some areas are not leveled properly.",
          ),
          FeedbackItem(
            taskId: "123456",
            taskName: "Install HVAC system in building A",
            avatar: "assets/e.png",
            feedbackby: "John Doe",
            department: "Engineering",
            feedback: "The HVAC system installation went smoothly. Great work by the team!",
          ),

        ],
      ),
    );
  }
}
class FeedbackItem extends StatelessWidget {
  final String taskId;
  final String taskName;
  final String avatar;
  final String feedbackby;
  final String department;
  final String feedback;

  FeedbackItem({
    required this.taskId,
    required this.taskName,
    required this.avatar,
    required this.feedbackby,
    required this.department,
    required this.feedback,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Section
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        taskId,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(taskName),
                      SizedBox(height: 8),
                      Text(feedbackby),
                      Text(department),
                    ],
                  ),
                ),
                SizedBox(width: 8.0), // Spacing between left and right sides
                CircleAvatar(
                  backgroundImage: AssetImage(avatar),
                  radius: 20, // Adjust the size as needed
                ),
              ],
            ),
            Divider(), // Horizontal divider
            // Bottom Section (Feedback)
            SizedBox(height: 8),
            Text('Feedback:'),
            SizedBox(height: 4),
            Text(feedback),
          ],
        ),
      ),
    );
  }
}

