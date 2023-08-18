import '../../const/const.dart';

class QnaScreen extends StatelessWidget {
  const QnaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: qna.text.color(whiteColor).size(20).fontFamily(bold).make(),
      ),
    );
  }
}
