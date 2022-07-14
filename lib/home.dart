import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'mail/mail_list/mail_sreen.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(//휴대폰에 따라 ui가 다 보여질 수 있게 해줌.
        child: ListView(
          children: [
            Padding(
            padding : const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: (){},
                          icon: Icon(
                              CupertinoIcons.square_arrow_left,
                              size:20,
                              color: Colors.blueAccent
                          )
                      ),
                      Text(
                          '안녕',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 15,
                          )
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '메일상자',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                        ),
                      )
                    ],
                  ),

                  SizedBox (
                    height: 10,
                  ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child : Container(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      color: Colors.white,
                      child: Column(
                        children:[
                          _mainButton(CupertinoIcons.tray, "받은 편지함"),
                          Divider(indent: 50, color: Colors.grey),
                          _mainButton(CupertinoIcons.star,"VIP"),
                          Divider(indent: 50, color: Colors.grey),
                          _mainButton(CupertinoIcons.flag,"깃발 표시됨"),
                          Divider(indent: 50, color: Colors.grey),
                        ],
                      )
                    )
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Gmail',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                      ],
                  ),

                      SizedBox(
                        height: 10
                      ),

                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          color: Colors.white,
                          child: Column(
                            children:[
                              _mainButton(CupertinoIcons.doc, "임시 저장"),
                              Divider(indent: 50, color: Colors.grey),

                              _mainButton(CupertinoIcons.paperplane, "보낸 편지함"),
                              Divider(indent: 50, color: Colors.grey),

                              _mainButton(CupertinoIcons.bin_xmark, "정크"),
                              Divider(indent: 50, color: Colors.grey),

                              _mainButton(CupertinoIcons.delete, "휴지통"),
                              Divider(indent: 50, color: Colors.grey),

                              _mainButton(CupertinoIcons.archivebox, "모든 메일"),
                              Divider(indent: 50, color: Colors.grey),

                              _mainButton(CupertinoIcons.folder, "발표 편지함"),
                              Divider(indent: 50, color: Colors.grey),

                            ]

                          )
                        ),
                      )



                ],
              )
            )

          ],
        )

      )

    );
  }
}

Widget _mainButton(IconData icon, String title){
  return GestureDetector(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(15, 2, 15, 0),
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size:20,
                color:Colors.blueAccent,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                title,
                style:TextStyle(fontSize:15),
              )
            ],

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                CupertinoIcons.chevron_right,
                size:15,
                color: Colors.grey,
              )
            ],
          )
        ],
      ),
    ),
  onTap:(){
     Get.to(MailScreen(title));
  }
  );
}