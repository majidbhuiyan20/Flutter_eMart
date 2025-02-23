import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/widgets_common/our_button.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.share)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline),),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Swiper Section
                  VxSwiper.builder(
                      autoPlay: true,
                      height: 350,
                      aspectRatio: 16/9,
                      itemCount: 3,
                      itemBuilder: (context,index){
                    return Image.asset(imgP1,width:
                    double.infinity,fit: BoxFit.cover,);
                  }),
                  10.heightBox,
                  //Title and Details Section
                  title!.text.size(16).color(darkFontGrey).fontFamily(semibold).make(),
                  10.heightBox,
                  //This is for rating
                  VxRating(onRatingUpdate: (value){},
                    normalColor:textfieldGrey,
                    selectionColor: golden,
                    size: 25,
                    stepInt: true,
                    count: 5,),
                  10.heightBox,
                  "\$400".text.color(redColor).fontFamily(semibold).size(18).make(),

                  10.heightBox,

                  Row(
                    children: [
                      Expanded(child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Seller".text.white.fontFamily(semibold).make(),
                          10.heightBox,
                          "In House Brand ".text.fontFamily(semibold).color(darkFontGrey).size(16).make(),
                        ],
                      )),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.message_rounded, color: darkFontGrey,),
                      ),
                    ],
                  ).box.height(60).padding(const EdgeInsets.symmetric(horizontal: 16)).color(textfieldGrey).make(),

                    //Color Section is Here

                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color: ".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: List.generate(3,
                                    (index) => VxBox()
                                .size(40, 40)
                                .color(Vx.randomPrimaryColor)
                                .margin(const EdgeInsets.symmetric(horizontal: 6))
                                .roundedFull
                                .make()),
                          ),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),

                      //Quantity Row......

                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Quantity ".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: [
                              IconButton(onPressed: (){}, icon: const Icon(Icons.remove)),
                              "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                              IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
                              10.widthBox,
                              "(0 available )".text.color(textfieldGrey).make(),
                            ],
                          ),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),


                      //Total Row

                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Total: ".text.color(textfieldGrey).make(),
                          ),
                          "\$0.00".text.color(redColor).size(16).fontFamily(bold).make(),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),

                    ],
                  ).box.white.shadowSm.make(),

                  10.heightBox,

                  //Description Section
                  "Description".text.color(darkFontGrey).fontFamily(semibold).make(),

                  10.heightBox,
                  "This is a dummy discription here".text.color(darkFontGrey).make(),

                  10.heightBox,
                  //Button Section

                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(itemDetailButtonList.length,
                          (index) => ListTile(
                      title: itemDetailButtonList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                            trailing: const Icon(Icons.arrow_forward_ios),
                    ),),
                  ),
                  20.heightBox,
                  //product may majid like section
                  productYouMayLike.text.fontFamily(bold).size(16).color(darkFontGrey).make(),
                  10.heightBox,

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(productImage.length,
                              (index)
                      => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(productImage[index],width: 150,fit: BoxFit.cover),
                          10.heightBox,
                          "Product Details".text.fontFamily(semibold).color(darkFontGrey).make(),
                          productPrice[0].text.color(redColor).fontFamily(bold).size(16).make(),
                        ],
                      ).box.margin(const EdgeInsets.symmetric(horizontal: 4))
                          .white.padding(const EdgeInsets.all(8)).rounded.make()),
                    ),
                  ),

                ],
              ),
            ),
          )),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ourButton(
              color: redColor,
              onPress: (){},
              textColor: whiteColor,
              title: "Add to Cart",
            ),
          ),
        ],
      ),
    );
  }
}
