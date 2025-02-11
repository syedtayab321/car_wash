import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Chat_Screen.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        backgroundColor: purpleColor,
        iconTheme: const IconThemeData(color: whiteColor),
        title: "Messages"
            .text
            .fontWeight(FontWeight.w600)
            .color(whiteColor)
            .make(),
      ),
      body:
      // StreamBuilder(
      //     stream: Firestoreservices.getAllMessages(),
      //     builder:
      //         (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
      //       if (!snapshot.hasData) {
      //         return Center(
      //           child: loadingIndicator(),
      //         );
      //       } else if (snapshot.data!.docs.isEmpty) {
      //         return "No Messages Yet!".text.color(darkFontGrey).makeCentered();
      //       } else {
      //         var data = snapshot.data!.docs;
      //         return

      Padding(
        padding: const EdgeInsets.all(16.0), // Increased padding for web
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 7, // Replace with data.length later
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 2, // Add elevation for a more defined look
                    child: ListTile(
                      onTap: () {
                        Get.to(
                              () => const ChatScreen(),
                          // arguments: [
                          //   data[index]['friend_name'],
                          //   data[index]['toid']
                          // ],
                        );
                      },
                      leading: const CircleAvatar(
                        backgroundColor: purpleColor,
                        child: Icon(
                          Icons.person,
                          color: whiteColor,
                        ),
                      ),
                      title: "Cleanow Wash"
                      //"${data[index]['friend_name']}"
                          .text
                          .fontWeight(FontWeight.bold)
                          .color(purpleColor)
                          .make(),
                      subtitle: "Hey Sir! What's Going on?"
                      //"${data[index]['last_message']}"
                          .text
                          .color(purpleColor.withOpacity(0.8))
                          .make(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      //   }
      // }),
    );
  }
}
