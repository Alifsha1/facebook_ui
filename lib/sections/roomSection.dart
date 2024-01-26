import 'package:facebook_ui/widgets/assets.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
         CreateRoomButton(),
           Avatar(displayImage: me,displayStatus: true,),
           Avatar(displayImage: one,displayStatus: true,),
           Avatar(displayImage: two,displayStatus: true,),
           Avatar(displayImage: three,displayStatus: true,),
           Avatar(displayImage: four,displayStatus: true,),
           Avatar(displayImage: me,displayStatus: true,),
           Avatar(displayImage: one,displayStatus: true,),
           Avatar(displayImage: two,displayStatus: true,),
           Avatar(displayImage: three,displayStatus: true,),
           Avatar(displayImage: four,displayStatus: true,),

          //  Avatar(displayImage: five),
          //  Avatar(displayImage: six),
        ],
        ),
    );
  }

  Widget CreateRoomButton(){
      return Container(
        padding: EdgeInsets.only(left: 5,right: 5),
        child: OutlinedButton.icon(
          
            onPressed: (){},
             icon:const Icon
             (Icons.room,
             color: Colors.purple,
             ),
              label:const Text('Create \nRoom',
              style: TextStyle(
                color: Colors.blue
              ),
              
              )),
      );
  }
}
