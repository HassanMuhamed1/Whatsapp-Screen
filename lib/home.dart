import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "WhatsApp",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            size: 25,
            color: Colors.white,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.more_vert_outlined,
            size: 25,
            color: Colors.white,
          ),
          SizedBox(width: 5,)
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 10),
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.camera_alt_rounded,
                      size: 30,
                      color: Colors.white60,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "CHATS",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "STATUS",
                            style: TextStyle(
                                color: Colors.white60,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "CALLS",
                            style: TextStyle(
                                color: Colors.white60,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              for (var user in [
                {"name": "Ahmed Salah", "message": "Hello", "time": "07:47 PM"},
                {"name": "User", "message": "Hello", "time": "07:47 PM"},
                {"name": "User 2", "message": "Hello User2", "time": "07:47 PM"},
                {"name": "User3", "message": "Hello User3", "time": "07:47 PM"},
                {"name": "User4", "message": "Hello User4", "time": "07:47 PM"},
                {"name": "User5", "message": "Hello User5", "time": "07:47 PM"},
              ])
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 27,
                            backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
                          ),
                          SizedBox(width: 25,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      user["name"] ?? "No Name",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                      user["time"] ?? "No Time",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 3),
                                Text(
                                  user["message"] ?? "No Message",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 19
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(color: Colors.grey, thickness: 1, indent: 88),
                  ],
                ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Tap and Hold on chat to more options",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
              SizedBox(height: 5,),
              ListTile(
                  trailing: FloatingActionButton(
                    onPressed: (){},
                    child: Icon(Icons.message, size: 30, color: Colors.white),
                    backgroundColor: Colors.green,
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}
