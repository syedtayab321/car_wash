import 'package:fusionxcar/consts/contant.dart';
import 'package:flutter/material.dart';

import 'Sender_Bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var controller = Get.put(ChatController());
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: whiteColor),
        backgroundColor: purpleColor,
        title: "Cleanow Wash"
        //"${controller.friendname}"
            .text
            .fontWeight(FontWeight.bold)
            .color(whiteColor)
            .make(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Increased padding for web
        child: Column(
          children: [
            //////////////
            // Obx(
            //   () => controller.isloading.value
            //       ? Center(
            //           child: loadingIndicator(),
            //         )
            //       :

            Expanded(
              child: Container(
                // color: Colors.teal,
                child: ListView(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: senderbubble(),
                    ),
                  ],
                ),

                // StreamBuilder(
                //     stream: Firestoreservices.getChatMessages(
                //         controller.chatDocid.toString()),
                //     builder: (BuildContext context,
                //         AsyncSnapshot<QuerySnapshot> snapshot) {
                //       if (!snapshot.hasData) {
                //         return Center(
                //           child: loadingIndicator(),
                //         );
                //       } else if (snapshot.data!.docs.isEmpty) {
                //         return Center(
                //           child: "Send a message...."
                //               .text
                //               .color(darkFontGrey)
                //               .make(),
                //         );
                //       } else {
                //         return

                // ListView(
                //   children:
                //   snapshot.data!.docs
                //       .mapIndexed((currentValue, index)

                //        {
                //     var data = snapshot.data!.docs[index];
                //     return Align(
                //         alignment:
                //             data['uid'] == currentuser!.uid
                //                 ? Alignment.centerRight
                //                 : Alignment.centerLeft,
                //         child:
                //         senderbubble(data)

                //         );
                //   }).toList(),

                // );
                //   }
                //   ///////////
                // }),
              ),
            ),
            //),
            //////////////
            const SizedBox(height: 10), // Added a SizedBox for spacing

            ///////
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    // controller: controller.messagingcontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: textfieldGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: textfieldGrey),
                      ),
                      hintText: "Type a message ...",
                      hintStyle: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // controller.sendmessage(controller.messagingcontroller.text);
                    // controller.messagingcontroller.clear();
                  },
                  icon: const Icon(Icons.send),
                  color: whiteColor,
                ),
              ],
            )
                .box
                .height(80)
                .padding(const EdgeInsets.all(12))
                .margin(const EdgeInsets.only(bottom: 8))
                .make(),
          ],
        ),
      ),
    );
  }
}
