import 'package:message_apps/Models/userModels.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool unread;
  final String relation;

  Message({
    this.sender,
    this.time,
    this.text,
    this.unread,
    this.relation,
  });
}

List<Message> chats = [
  Message(
    sender: shopia,
    time: '2:30 AM',
    text: 'I like you',
    unread: true,
  ),
  Message(
    sender: yunul,
    time: '5:30 AM',
    text: 'Hey How Are you?',
    unread: true,
  ),
  Message(
    sender: james,
    time: '8:30 AM',
    text: 'Hi',
    unread: false,
  ),
  Message(
    sender: steven,
    time: '22:30 AM',
    text: 'Where You from?',
    unread: false,
  ),
];

List<Message> messages = [
  Message(
    sender: currentUser,
    time: '04.00 PM',
    text: 'Hallo Apa kabar?',
    unread: true,
    relation: 'shopia',
  ),
  Message(
    sender: shopia,
    time: '04.02 PM',
    text: 'Sehat selalu',
    unread: true,
    relation: 'Current User'
  ),
  Message(
    sender: currentUser,
    time: '04.10 PM',
    text: 'Do cillum nisi est ut exercitation dolor duis.',
    unread: true,
    relation: 'shopia',
  ),
  Message(
    sender: shopia,
    time: '04.15 PM',
    text: 'Lagi duduk ajaa',
    unread: true,
    relation: 'Current User'
  ),
  Message(
    sender: shopia,
    time: '04.15 PM',
    text: 'And Youu??',
    unread: true,
    relation: 'Current User'
  ),
  Message(
    sender: currentUser,
    time: '04.10 PM',
    text: 'Jadilah pribadi yang menantang masa depan, bukan pengecut yang aman di zona nyaman',
    unread: false,
    relation: 'shopia',
  ),
];