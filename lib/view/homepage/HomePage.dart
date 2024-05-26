import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ChatUser user = ChatUser(
    id: '1',
    firstName: 'Kods',
    lastName: 'Bechri',
  );

  List<ChatMessage> messages = <ChatMessage>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Row(
          children: [
            Image.asset("assets/images/parachat.png",width: 24,height: 36,),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("paraChat",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff3369FF),fontFamily: "Poppins"),),
                Text('• Online' , style: TextStyle(color: Color(0xff3ABF38),fontSize: 18,fontWeight: FontWeight.bold),),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.logout)),
        ],
      ),
      body: DashChat(

      /*  typingUsers: [
        ChatUser(
        id: 'x',
        firstName: 'Para',
        lastName: 'chat',
      ),
        ],*/
        currentUser: user,
        onSend: (ChatMessage m) {
          setState(() {
            messages.insert(0, m);
          });
        },
        messages: messages,
      ),
    );
  }
}