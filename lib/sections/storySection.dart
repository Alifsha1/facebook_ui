import 'package:facebook_ui/widgets/assets.dart';
import 'package:facebook_ui/widgets/story_card.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to story",
            avatar: me,
            story: me,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Alifsha",
            avatar: one,
            story: me1,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Arif muhammed",
            avatar: two,
            story: me2,
            createStoryStatus: false,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Arshi",
            avatar: three,
            story: me3,
            createStoryStatus: false,
            displayBorder: true,
          ),
           StoryCard(
            labelText: "Althaf",
            avatar: four,
            story: me4,
            createStoryStatus: false,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}