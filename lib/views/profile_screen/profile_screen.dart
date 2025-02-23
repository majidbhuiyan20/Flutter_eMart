import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/generated/assets.dart';
import 'package:emart_app/views/profile_screen/components/details_cart.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
            child:Column(
          children: [
            //Create a edit profile button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: const Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.edit, color: Colors.white)).onTap(() {
              }),
            ),
            //User Details Section is Here

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  //Image.asset(imgProfile2,width: 100,fit: BoxFit.cover,)
                  Image.asset(Assets.imagesProfilePic3,width:100, fit: BoxFit.cover).box
                      .roundedFull.clip(Clip.antiAlias).make(),
                  10.widthBox,
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Majid Bhuiyan".text.fontFamily(semibold).white.size(20).make(),
                      "majid2021@gmail.com".text.white.make(),
                    ],
                  )),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: whiteColor,
                        )
                      ),
                      onPressed: (){},
                      child: logout.text.white.fontFamily(semibold).make())
                ],
              ),
            ),
            5.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(count: "0", title: "Your Cart", width: context.screenWidth/3.5),
                detailsCard(count: "23", title: "Your wishList", width: context.screenWidth/3.5),
                detailsCard(count: "12", title: "Your Order", width: context.screenWidth/3.5)
              ],
            ),

            //Buttons Sections
            ListView.separated(
              shrinkWrap: true,
            separatorBuilder: (context, index){
              return const Divider(
                color: lightGrey,
              );
            },
            itemCount: profileButtonsList.length,
            itemBuilder: (BuildContext context, int index){
              return ListTile(
                leading: Image.asset(profileButtonIcon[index],
                width: 25,),

                title: profileButtonsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
              );
            },
            ).box
                .white
                .rounded
                .shadowSm
                .margin(const EdgeInsets.all(12))
                .padding(const EdgeInsets.symmetric(horizontal: 16))
                .make().box.color(redColor).make(),

          ],
        )),
      ),
    );
  }
}
