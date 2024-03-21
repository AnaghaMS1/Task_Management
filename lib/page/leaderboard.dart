import 'package:flutter/material.dart';

class Leaderboard extends StatefulWidget {
  const Leaderboard({Key? key}) : super(key: key);

  @override
  State<Leaderboard> createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Leaderboard",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Color(0xFF186565),
      ),
      body: Container(

        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Color(0xFF186565),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top:10,
                    right:300,
                    child: _buildUserPosition(1),
                  ),
                  Positioned(
                    top: 20,
                    right: 150,
                    child: _buildUserPosition(2),
                  ),
                  Positioned(
                    top: 20,
                    left: 100,
                    child: _buildUserPosition(3),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: userItems.length-3,
                  itemBuilder: (context, index) {
                    final items = userItems[index+3];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        child: Row(
                          children: [
                            Text(
                              items.rank,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 15),
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(items.image),
                            ),
                            const SizedBox(width: 15),
                            Text(
                              items.name,
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 25,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 5),
                                  const RotatedBox(
                                    quarterTurns: 1,
                                    child: Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 255, 187, 0),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    items.point,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserPosition(int position) {
    final user = userItems[position - 1];
    return Column(
      children: [
        Text(
          user.rank,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(user.image),
        ),
        Text(
          user.name,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 15),
        Container(
          height: 25,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            children: [
              SizedBox(width: 5),
              RotatedBox(
                quarterTurns: 1,
                child: Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 255, 187, 0),
                ),
              ),
              SizedBox(width: 5),
              Text(
                user.point,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class UserItem {
  final String rank;
  final String image;
  final String name;
  final String point;

  UserItem({
    required this.rank,
    required this.image,
    required this.name,
    required this.point,
  });
}

final List<UserItem> userItems = [
  UserItem(rank: "1", image: "Images/g.jpeg", name: "Johnny Rios", point: "23131"),
  UserItem(rank: "2", image: "Images/k.jpeg", name: "Hodges", point: "12323"),
  UserItem(rank: "3", image: "Images/j.jpeg", name: "loram", point: "6343"),
  UserItem(rank: "4", image: "Images/j.jpeg", name: "anagha", point: "6343"),
  UserItem(rank: "5", image: "Images/j.jpeg", name: "Aparna", point: "6343"),
  UserItem(rank: "6", image: "Images/j.jpeg", name: "Mariya", point: "6343"),
  UserItem(rank: "7", image: "Images/j.jpeg", name: "Alex", point: "6343"),
];
