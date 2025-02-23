import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/auth_screen/signup_screen.dart';
import 'package:emart_app/views/home_screen/home.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/custom_textfield.dart';
import 'package:emart_app/widgets_common/our_button.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            16.heightBox,
            Column(
              children: [
                customTextField(email, emailHint),
                customTextField(password, passwordHint),
                
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child:forgetPass.text.make())),
               // ourButton().box.width(context.screenWidth-50).make(),
                ourButton(color: redColor, title: login, textColor: whiteColor, onPress: (){
                  Get.to(()=>const Home());
                })
                    .box.width(context.screenWidth-50).make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(color: golden, title: signup, textColor: whiteColor, onPress: (){
                  Get.to(()=>const SignupScreen());
                })
                    .box.width(context.screenWidth-50).make(),
                10.heightBox,
                loginwith.text.color(fontGrey).make(),
                5.heightBox,
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: lightGrey,
                      radius: 27,
                      child: Image.asset(
                          socialIconList[index],
                        width: 40,

                      ),

                    ),
                  )),
                ),

              ],
            ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).shadowLg.make(),
          ],
        ),
      ),
    ));
  }
}
