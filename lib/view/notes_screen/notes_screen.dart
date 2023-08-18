import '../../const/const.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: notes.text.color(whiteColor).size(20).fontFamily(bold).make(),
      ),
    );
  }
}
