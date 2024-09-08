import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final String profileImageUrl;
  final String userName;
  final bool isViewed;

  const StoryWidget({
    required this.profileImageUrl,
    required this.userName,
    this.isViewed = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isViewed ? Colors.grey : Colors.red,
                width: 3.0,
              ),
            ),
            child: CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage(profileImageUrl),
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            userName,
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}