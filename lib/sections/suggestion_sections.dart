import 'package:facebook_ui/widgets/suggestion_card.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Column(
       children: [
        ListTile(
          title: Text("People you know"),
          trailing: IconButton
          (onPressed: (){},
           icon:Icon(
            Icons.more_horiz,
            color: Colors.grey[700],
            ),
           ),
        ),
        Container(
          height: 340,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
             SuggestionCard(),
            ],
          ),
        ),
       ], 
      ),
    );
  }
}