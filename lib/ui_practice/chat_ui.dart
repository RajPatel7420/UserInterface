import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'list_chat.dart';

class ChatUI extends StatefulWidget {
  const ChatUI({Key key}) : super(key: key);

  @override
  _ChatUIState createState() => _ChatUIState();
}

class _ChatUIState extends State<ChatUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text('Chats',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: ListView.builder(
          itemCount: UiData.UiDataList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16,bottom: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 32.r,
                        backgroundImage: NetworkImage(
                            // 'https://images.unsplash.com/photo-1480074568708-e7b720bb3f09?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1053&q=80'),
                      UiData.UiDataList[index].imagepath),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              // 'James',
                              UiData.UiDataList[index].name
                              ,style: TextStyle(
                                  fontSize: 13.sp, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                                // 'Thank you! That was very helpful!',
                                UiData.UiDataList[index].description,
                                // overflow: Overflow,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 13.sp, fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(color: Color.fromRGBO(0, 0, 0, 0.3)),],
            );
          },
        ),
      ),
    );
  }
}
