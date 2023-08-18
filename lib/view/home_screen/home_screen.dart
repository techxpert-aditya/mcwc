import '../../const/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: home.text.color(whiteColor).size(20).fontFamily(bold).make(),
      ),
    );
  }
}
