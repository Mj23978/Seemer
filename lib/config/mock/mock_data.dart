import '../../models/user/user.dart';
import '../../models/chat/chat.dart';
import '../../models/enums.dart';
import '../../models/message/message.dart';
import 'package:dartx/dartx.dart';

List users = const [
  User(
    uid: "1",
    displayName: "John Doe",
  ),
  User(
    uid: "2",
    displayName: "Jenny Wilson",
  ),
];

// List<Chat> chatsData = [
//   Chat(
//     name: "Jenny Wilson",
//     lastMessage: "Hope you are doing well...",
//     image: "assets/images/user.png",
//     time: DateTime.now() - 3.minutes,
//     isActive: false,
//   ),
//   Chat(
//     name: "Esther Howard",
//     lastMessage: "Hello Abdullah! I am...",
//     image: "assets/images/user_2.png",
//     time:  DateTime.now() - 8.minutes,
//     isActive: true,
//   ),
//   Chat(
//     name: "Ralph Edwards",
//     lastMessage: "Do you have update...",
//     image: "assets/images/user_3.png",
//     time:  DateTime.now() - 5.days,
//     isActive: false,
//   ),
//   Chat(
//     name: "Jacob Jones",
//     lastMessage: "You’re welcome :)",
//     image: "assets/images/user_4.png",
//     time: DateTime.now() - 5.days,
//     isActive: true,
//   ),
//   Chat(
//     name: "Albert Flores",
//     lastMessage: "Thanks",
//     image: "assets/images/user_5.png",
//     time: DateTime.now() - 6.days,
//     isActive: false,
//   ),
//   Chat(
//     name: "Jenny Wilson",
//     lastMessage: "Hope you are doing well...",
//     image: "assets/images/user.png",
//     time: DateTime.now() - 3.minutes,
//     isActive: false,
//   ),
//   Chat(
//     name: "Esther Howard",
//     lastMessage: "Hello Abdullah! I am...",
//     image: "assets/images/user_2.png",
//     time: DateTime.now() - 8.minutes,
//     isActive: true,
//   ),
//   Chat(
//     name: "Ralph Edwards",
//     lastMessage: "Do you have update...",
//     image: "assets/images/user_3.png",
//     time: DateTime.now() - 3.days,
//     isActive: false,
//   ),
// ];

List demeChatMessages = [
  Message(
    id: "",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    text: "Hi Sajol,",
    status: MessageStatus.viewed,
    from: users[0],
  ),
  Message(
    id: "",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    text: "Hello, How are you?",
    status: MessageStatus.viewed,
    from: users[1],
  ),
  Message(
    id: "",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    text: "",
    status: MessageStatus.viewed,
    from: users[0],
  ),
  Message(
    id: "",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    text: "",
    status: MessageStatus.viewed,
    from: users[0],
  ),
  Message(
    id: "",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    text: "Error happend",
    status: MessageStatus.notSent,
    from: users[1],
  ),
  Message(
    id: "",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    text: "This looks great man!!",
    status: MessageStatus.viewed,
    from: users[1],
  ),
  Message(
    id: "",
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    text: "Glad you like it",
    status: MessageStatus.notViewed,
    from: users[0],
  ),
];
