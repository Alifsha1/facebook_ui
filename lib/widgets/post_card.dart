

import 'package:facebook_ui/sections/headerButtonSections.dart';

import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/widgets/blueTick.dart';
import 'package:facebook_ui/widgets/headerButton.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
   final String avatar;
   final String name;
   final String publishedAt;
   final String postTitle;
   final String postImage;
   final bool showBlueTick;
   final String likeCount;
   final String shareCount;
   final String commentcount;
   PostCard({
    required  this.avatar,
    required this.name,
    required this.publishedAt,
    required this.postTitle,
     required this.postImage,
    this.showBlueTick = false,
    required this.likeCount,
    required this.shareCount,
    required this.commentcount,


   
    
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          const Divider(color: Colors.grey,
          thickness: 1,),
          HeaderButtonSection(
            buttonOne: HeaderButton(
              buttonText: "Like",
               buttonIcon: Icons.thumb_up_alt_outlined,
                buttonAction: (){},
                 buttonColor: Colors.grey),
            buttonTwo: HeaderButton(
              buttonText: "Comment",
               buttonIcon: Icons.chat,
                buttonAction: (){},
                 buttonColor: Colors.grey),
            buttonThree: HeaderButton(
              buttonText: "share",
               buttonIcon: Icons.share_outlined,
                buttonAction: (){},
                 buttonColor: Colors.grey),
          ),
        ],
      ),
    );
  }
Widget footerSection(){
  return Container(
    height: 50,
    padding: const EdgeInsets.only(
      left: 10,
      right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Container(
          width: 15,
          height: 15,
          decoration: const BoxDecoration(
            color: Colors.blue,
          shape: BoxShape.circle),
          child: const Icon(
            Icons.thumb_up,
            color: Colors.white,
            size: 10,
            ),
            ),
            const SizedBox(width: 5,),
        displayText(label: likeCount),
            ],
          ),
        ),
          Container(
            child: Row(
              children: [
                displayText(label: commentcount),
                const SizedBox(width: 5,),
                displayText(label: "comments"),
                const SizedBox(width: 10,),
                displayText(label: shareCount),
                const SizedBox(width: 5,),
                displayText(label: "shares"),
                const SizedBox(width: 10,),
                Avatar(
                  displayImage: avatar,
                   displayStatus: false,
                   width: 25,
                   height: 25,
                   ),
                   IconButton(
                    onPressed: (){},
                     icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey[700],
                      ),
                    )

              ],
            ),
          )
      ],
    ),
  );
}

  Widget displayText({String? label}){
  return Text(
        label ?? "",
          style: TextStyle(
           color: Colors.grey[700]
        ),
    );          
}

  Widget imageSection(){
    return Container(
      padding: const EdgeInsets.only(top: 5,bottom: 5),
      child: Image.asset(postImage),
    );
  }



   Widget titleSection(){
    return postTitle != null && postTitle != "" ? Container(
      padding: const EdgeInsets.only(bottom: 5,),
      child: Text(
        postTitle == null ? "": postTitle,
        style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),),
    ): const SizedBox();
   } 

  Widget postCardHeader(){
    return ListTile(
            leading: Avatar(
              displayImage: avatar,
               displayStatus: false),
               title: Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.black,
                      ),
                      ),
                      const SizedBox(width: 10,),
                     showBlueTick ? BlueTick(): const SizedBox(),
                ],
               ),
               subtitle: Row(
                children: [
                  Text(publishedAt == null ? "":publishedAt),
                  const SizedBox(width: 10,),
                  Icon(
                    Icons.public,
                    color: Colors.grey[700],
                    size: 15,)
                ],
               ),
               trailing: IconButton(
                onPressed: (){},
                 icon: Icon(Icons.more_horiz,color: Colors.grey[700],)),
          );
  }
}