import 'package:facebook_ui/sections/headerButtonSections.dart';
import 'package:facebook_ui/sections/roomSection.dart';
import 'package:facebook_ui/sections/statusSection.dart';
import 'package:facebook_ui/sections/storySection.dart';
import 'package:facebook_ui/widgets/assets.dart';
import 'package:facebook_ui/widgets/circularButton.dart';
import 'package:facebook_ui/widgets/headerButton.dart';
import 'package:facebook_ui/widgets/post_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

   Widget thinDivider = Divider(thickness: 1,color: Colors.grey);
  Widget thickDivider = Divider(thickness: 10,color: Colors.grey,);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:const Text('facebook',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
        ),
        actions: [
          CircularButton(buttonIcon: Icons.search,
          buttonAction: (){},),
           CircularButton(buttonIcon: Icons.chat,
          buttonAction: (){},)
        ],
      ),
      body: ListView(
        children: [
          StatusSection(),
          thinDivider,
          HeaderButtonSection(
            buttonOne: HeaderButton(
              buttonAction: (){},
              buttonColor: Colors.red,
              buttonIcon: Icons.video_call,
              buttonText: "Live"
              ),
              buttonTwo: HeaderButton(
                buttonText: "photo",
                 buttonIcon: Icons.photo_library,
                  buttonAction: (){},
                   buttonColor: Colors.green
                   ),
                   buttonThree: HeaderButton(
                    buttonText: "Room",
                     buttonIcon: Icons.room,
                      buttonAction: (){},
                       buttonColor: Colors.purple),
          ),
           thickDivider,
           RoomSection(),
           thickDivider,
           StorySection(),
           thickDivider,
           PostCard(
            avatar: one,
            name: "Alifsha",
            publishedAt: "5h",
            postTitle: "Happy",
            postImage: me2,
            showBlueTick: true,
            likeCount: "10k",
            shareCount: "1k",
            commentcount: "2k",
            ),
            thickDivider,
            PostCard(
            avatar: two,
            name: "Alifsha",
            publishedAt: "3h",
            postTitle: "",
            postImage: me3,
            showBlueTick: true,
            likeCount: "15k",
            shareCount: "1.5k",
            commentcount: "2.3k",
            ),
            thickDivider,
            // SuggestionSection(),
            // thickDivider,
            PostCard(
            avatar: three,
            name: "Alifsha",
            publishedAt: "3h",
            postTitle: "",
            postImage: me4,
            showBlueTick: false,
            likeCount: "15k",
            shareCount: "1.5k",
            commentcount: "2.3k",
            ),
            thickDivider,
            PostCard(
            avatar: four,
            name: "Arif",
            publishedAt: "3h",
            postTitle: "",
            postImage: me,
            showBlueTick: true,
            likeCount: "15k",
            shareCount: "1.5k",
            commentcount: "2.3k",
            ),

        ],
      ),
    );
  }
}