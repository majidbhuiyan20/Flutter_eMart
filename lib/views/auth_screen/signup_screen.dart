import 'package:get/get.dart';
import '../../consts/consts.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custom_textfield.dart';
import '../../widgets_common/our_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  bool? isCheck = false;


  @override
  Widget build(BuildContext context) {
    return bgWidget(child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Join the $appname".text.fontFamily(bold).white.size(18).make(),
            16.heightBox,
            Column(
              children: [
                customTextField(name, nameHint),
                customTextField(email, emailHint),
                customTextField(password, passwordHint),
                customTextField(retypePassword, passwordHint),

                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child:forgetPass.text.make())),
                // ourButton().box.width(context.screenWidth-50).make(),

                Row(
                  children: [
                    Checkbox(
                      checkColor: whiteColor,
                      value: isCheck,
                      onChanged: (newValue){
                       setState(() {
                         isCheck = newValue;
                       });
                      },
                    ),
                    1.widthBox,
                    Expanded(
                      child: RichText(text: const TextSpan(
                        children: [
                          TextSpan(text: "I agree to the ", style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )),
                          TextSpan(text: termAndCondition, style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          )),

                          TextSpan(text: " & ", style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )),

                          TextSpan(text: privacyPolicy, style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          ))

                        ],
                      )),
                    ),
                  ],
                ),
                5.heightBox,
                ourButton(color: isCheck==true? redColor:lightGolden, title: signup, textColor: whiteColor, onPress: (){})
                    .box.width(context.screenWidth-50)
                    .make(),
                10.heightBox,
                RichText(text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "$alreadyHaveAccount ",
                      style: TextStyle(
                        fontFamily: bold,
                        color: fontGrey,
                      ),
                    ),

                    TextSpan(
                      text: login,
                      style: TextStyle(
                        fontFamily: bold,
                        color: redColor,
                      ),
                    )
                  ],
                ),
                ).onTap(() {
                  Get.back();
                }),

              ],
            ).box.white.rounded.padding(const EdgeInsets.all(16))
                .width(context.screenWidth-70).shadowLg.make(),
          ],
        ),
      ),
    ));
  }
}
