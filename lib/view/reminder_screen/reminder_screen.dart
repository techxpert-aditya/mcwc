import '../../const/const.dart';
import '../group_chat/group_chat_screen.dart';
import '../profile_screen/profile_screen.dart';

class ReminderScreen extends StatelessWidget {
  const ReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGreyColor,
      appBar: AppBar(
        title: "Home".text.color(whiteColor).size(32).fontFamily(bold).make(),
        actions: [
          IconButton(
            icon: const CircleAvatar(
                backgroundColor: whiteColor,
                foregroundColor: primaryColor,
                child: Icon(Icons.group)),
            onPressed: () {
              Get.to(() => const GroupChatScreen());
            },
          ).box.make(),
          IconButton(
            icon: const CircleAvatar(
                backgroundColor: whiteColor,
                foregroundColor: primaryColor,
                child: Icon(Icons.person)),
            onPressed: () {
              Get.to(() => const ProfileScreen());
            },
          ).box.margin(const EdgeInsets.only(right: 16)).make(),
        ],
      ),
      body: Center(
        child: reminder.text.color(whiteColor).size(20).fontFamily(bold).make(),
      ),
    );
  }
}
