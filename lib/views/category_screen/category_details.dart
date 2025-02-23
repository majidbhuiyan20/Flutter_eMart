import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/category_screen/item_details.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:get/get.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(6, (index) => "Baby Clothing "
                      .text
                      .size(12)
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .makeCentered()
                      .box
                      .roundedSM
                      .white
                      .size(150, 60)
                      .margin(const EdgeInsets.symmetric(horizontal: 4))
                      .make()
                  ),
                ),
              ),
              20.heightBox,
              //Item Container
            Expanded(child: Container(
              color: lightGrey,
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: productImage.length-1,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 250, mainAxisSpacing: 8, crossAxisSpacing: 8),
                  itemBuilder: (context, index){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(productImage[index],width: 200,height:150,fit: BoxFit.cover),
                    10.heightBox,
                    productList[index].text
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .make(),
                    productPrice[index].text.color(redColor)
                        .fontFamily(bold).size(16).make(),
                  ],
                ).box
                    .margin(const EdgeInsets.symmetric(horizontal: 4))
                    .white
                    .outerShadowSm
                    .padding(const EdgeInsets.all(12))
                    .roundedSM
                    .make().onTap(() {
                      Get.to(()=>const ItemDetails(title: "Dummy Item"));
                });
              }),
            ))


            ],
          ),
        ),
      ),
    );
  }
}
