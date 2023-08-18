import '../../const/const.dart';

class ReminderScreen extends StatelessWidget {
  const ReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: reminder.text.color(whiteColor).size(20).fontFamily(bold).make(),
      ),
    );
  }
}
