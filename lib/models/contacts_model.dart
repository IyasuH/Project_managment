import 'package:project_managment/models/projects_model.dart';
import 'package:project_managment/screens/messages.dart';

class Contacts {
  int id;
  String name;
  String imageUrl;

  Contacts({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
}

// class Groups {
//   int id;
//   String name;
//   String imageUrl;

//   Groups({required this.id, required this.name, required this.imageUrl});
// }

class Message {
  int id;
  Contacts sender;
  String message;
  String time;
  bool read;
  String type;

  Message(
      {required this.id,
      required this.sender,
      required this.message,
      required this.time,
      required this.read,
      required this.type});
}

List<Message> chats = [
  Message(
    id: 1,
    sender: dora,
    message: 'We will have meetting at 5:00 AM',
    time: 'Now',
    read: false,
    type: 'R',
  ),
  Message(
    id: 1,
    sender: technologyBoxs,
    message: 'Elon Musk: New Rocket Engine Coming soon',
    time: '16:02',
    read: true,
    type: 'R',
  ),
  Message(
    id: 1,
    sender: edwin,
    message: '🎙 Voice Message',
    time: '10:27',
    read: true,
    type: 'S',
  ),
  Message(
    id: 2,
    sender: cody,
    message: 'The portifolio is amazing',
    time: 'Yesterday',
    read: true,
    type: 'R',
  ),
  Message(
    id: 3,
    sender: olivia,
    message: ' 📷 Photo',
    time: 'Saturday',
    read: true,
    type: 'R',
  ),
  Message(
    id: 2,
    sender: creedorian,
    message: 'Barry: Thanks guys!',
    time: 'Friday',
    read: true,
    type: 'R',
  ),
  Message(
    id: 2,
    sender: kristen,
    message: 'Not bad for start',
    time: '26/11/2022',
    read: false,
    type: 'S',
  ),
  Message(
    id: 4,
    sender: clarence,
    message: 'Review my new deisgn for the engine',
    time: '20/11/2022',
    read: true,
    type: 'R',
  ),
  Message(
    id: 3,
    sender: subZeroSoftware,
    message: 'Marshall Hayes: Let\'s update sandbox !',
    time: '19/11/2022',
    read: false,
    type: 'R',
  ),
];
