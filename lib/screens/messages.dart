import 'package:flutter/material.dart';
import 'package:project_managment/models/contacts_model.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  _searchContainer() {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(223, 233, 231, 231),
        borderRadius: BorderRadius.circular(20),
        // border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              cursorHeight: 20.0,
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              style: const TextStyle(
                fontSize: 16,
              ),
              // ignore: prefer_const_constructors
              decoration: InputDecoration.collapsed(
                hintText: 'Search in your messages..',
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 18, 16, 7),
        // ignore: prefer_const_literals_to_create_immutables

        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'My Messages',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Icon(Icons.edit_note_rounded, size: 28)
              ],
            ),
            _searchContainer(),
            Expanded(
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage(chats[index].sender.imageUrl),
                      ),
                      Container(
                        width: 235,
                        height: 80,
                        decoration: const BoxDecoration(
                          // color: Colors.green,
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    chats[index].sender.name,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 5.0),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    child: chats[index].time == 'Now'
                                        ? Text(
                                            chats[index].message,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                                color: Colors.amber,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          )
                                        : Text(
                                            chats[index].message,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500),
                                          ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 85,
                        height: 80,
                        decoration: const BoxDecoration(
                          // color: Colors.green,
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              // strokeAlign: StrokeAlign.outside,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            chats[index].time == 'Now'
                                ? const CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.amber,
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                      ),
                                    ),
                                  )
                                : Text(
                                    chats[index].time,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                            chats[index].type == 'S'
                                ? Icon(
                                    chats[index].read
                                        ? Icons.check_rounded
                                        : Icons.check_rounded,
                                    size: 20.0,
                                    color: Colors.green,
                                  )
                                : const Text('')
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
