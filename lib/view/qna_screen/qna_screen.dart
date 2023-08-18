import '../../const/const.dart';
import '../group_chat/group_chat_screen.dart';

class QnaScreen extends StatelessWidget {
  const QnaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightGreyColor,
        appBar: AppBar(
            title: qna.text.color(whiteColor).size(32).fontFamily(bold).make(),
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
                onPressed: () {},
              ).box.margin(const EdgeInsets.only(right: 16)).make(),
            ]),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: List.generate(
                    qnaQuestions.length,
                    (index) => Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            (index + 1)
                                .text
                                .size(20)
                                .fontFamily(bold)
                                .color(darkFontGreyColor)
                                .make(),
                            qnaTitles[index]
                                .text
                                .fontFamily(bold)
                                .color(darkFontGreyColor)
                                .size(10)
                                .make()
                                .box
                                .roundedLg
                                .padding(const EdgeInsets.all(8))
                                .color(Vx.randomColor)
                                .make(),
                          ],
                        ),
                        // const Divider(
                        //   thickness: 1,
                        // ),
                        10.heightBox,
                        qnaQuestions[index]
                            .text
                            .fontFamily(semiBold)
                            .color(darkFontGreyColor)
                            .size(20)
                            .make(),
                        const Divider(),
                        qnaAnswers[index]
                            .text
                            .fontFamily(regular)
                            .color(darkFontGreyColor)
                            .size(20)
                            .make(),
                      ],
                    )
                        .box
                        .color(whiteColor)
                        .margin(const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8))
                        .padding(const EdgeInsets.all(16))
                        .rounded
                        .make(),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
