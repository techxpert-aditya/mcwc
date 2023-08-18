import '../../const/const.dart';

class FocusScreen extends StatelessWidget {
  const FocusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: "Focus".text.color(whiteColor).size(20).fontFamily(bold).make(),
      ),
    );
  }
}
