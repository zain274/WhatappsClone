import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatappsclone/chatModel.dart';

class chart_view extends StatelessWidget {
  const chart_view({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 4,
      child: Scaffold(appBar: AppBar(title: const  Text("WhatsApp"),
      backgroundColor: Color(0xFF128c7e),
       actions: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Icon(Icons.wifi_outlined),
            ),
            Padding(padding: const EdgeInsets.all(14.0),
            child: Icon(Icons.dark_mode_outlined),
            ),
              Padding(padding: const EdgeInsets.all(14.0),
            child: Icon(Icons.search),
            ),

          PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("GB Settings")),
                PopupMenuItem(child: Text("Message Scheduler")),
                PopupMenuItem(child: Text("Auto Reply")),
                PopupMenuItem(child: Text("Restart WhatsApp")),
                PopupMenuItem(child: Text("Message a number")),
                PopupMenuItem(child: Text("Mass Message Sender")),
                
                
                
                
                
                
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("New broadcast")),
                PopupMenuItem(child: Text("Linked devices")),
                PopupMenuItem(child: Text("Starred messages")),
                PopupMenuItem(child: Text("Settings"))
              ];
            })

                
       ],

         bottom: TabBar(tabs: [
             Tab(
              child: Text("Groups"),
            ),
            Tab(
              child: Text("Chats"),
            ),
           
            Tab(
              child: Text("Status"),
            ),
            Tab(
              child: Text("Calls"),
            )
         ]
      )
      
      ),

      body: Container(
          child: TabBarView(children: [
            Center(
              child: Text(
                "Groups",
                
              ),
            ),
 chat_view(),
            status_view(),
            calls_view(),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Color(0xFF128c7e),
        ),
      ),
    );
  }
}



chat_view() {
  return ListView.builder(
    itemCount: chatdata.length,
    itemBuilder: (
      context,
      index,
    ) {
      return ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(chatdata[index].profile_pic),
          radius: 25,
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Text(chatdata[index].title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                fontFamily: "Helvetica Neue",
              )),
        ),
        subtitle: Text(chatdata[index].message),
        trailing: Text(
          chatdata[index].time,
          style: TextStyle(
            height: -1,
          ),
        ),
        
      );
    },
  );
}

status_view() {
  return ListView.builder(
    itemCount: chatdata.length,
    itemBuilder: (
      context,
      index,
    ) {
      return ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(chatdata[index].profile_pic),
          radius: 25,
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Text(chatdata[index].title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                fontFamily: "Helvetica Neue",
              )),
        ),
        subtitle: Text(chatdata[index].time),
      );
    },
  );
}

calls_view() {
  return ListView.builder(
    itemCount: chatdata.length,
    itemBuilder: (
      context,
      index,
    ) {
      return ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(chatdata[index].profile_pic),
          radius: 25,
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Text(chatdata[index].title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                fontFamily: "Helvetica Neue",
              )),
        ),
        subtitle: Text(chatdata[index].time),
        trailing: Icon(
          Icons.call,
          color: Color(0xFF128c7e),
        ),
      );
    },
  );
}
