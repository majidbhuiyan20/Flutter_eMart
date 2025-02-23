import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/home_screen/components/featured_button.dart';
import 'package:emart_app/widgets_common/home_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      height: context.screenHeight,
      width: context.screenWidth,
      padding: const EdgeInsets.all(12),
      
      child: SafeArea(child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: whiteColor,
                hintText: searchAnything,
                hintStyle: TextStyle(
                color: lightGrey,
                ),
              ),
            ),
          ),
          10.heightBox,

          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  //Swipers Brand
                  VxSwiper.builder(
                      height: 150,
                      aspectRatio: 16/9,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      itemCount: slidersList.length,
                      itemBuilder: (context, index){
                        return Image.asset(
                          slidersList[index],
                          fit: BoxFit.fill,
                        ).box.rounded.clip(Clip.antiAlias ).margin(const EdgeInsets.symmetric(horizontal: 4)).make();
                      }),
                  10.heightBox,
                  //deals Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(2, (index) => homeButtons(
                      height: context.screenHeight * 0.15,
                      width: context.screenWidth / 2.5,
                      icon: index == 0? icTodaysDeal : icFlashDeal,
                      title: index == 0? todayDeal : flashSale,

                    )),
                  ),
                  // Second Slider
                  10.heightBox,
                  VxSwiper.builder(
                      height: 150,
                      aspectRatio: 16/9,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      itemCount: secondSliderList.length,
                      itemBuilder: (context, index){
                        return Image.asset(
                          secondSliderList[index],
                          fit: BoxFit.fill,
                        ).box.rounded.clip(Clip.antiAlias ).margin(const EdgeInsets.symmetric(horizontal: 4)).make();
                      }),
                  10.heightBox,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(3, (index) => homeButtons(
                      height: context.screenHeight * 0.15,
                      width: context.screenWidth / 3.5,
                      icon: index == 0 ? icTopCategories : index == 1 ? icBrands : icTopSeller,
                      title: index == 0 ? topCategories : index == 1 ? brand : topSellers,
                    )),
                  ),

                  //Featured Categories
                  20.heightBox,
                  Align(
                      alignment: Alignment.centerLeft,
                      child: featuredCategories.text
                          .color(darkFontGrey)
                          .size(18)
                          .fontFamily(semibold)
                          .make()),
                  10.heightBox,

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(3,
                            (index) => Column(
                        children: [
                            featuredButton(icon: featuredImages1[index], title: featuredTitle1[index]),
                          10.heightBox,
                          featuredButton(icon: featuredImages2[index], title: featuredTitle2[index]),
                        ],
                      ),).toList(),
                    ),
                  ),
                  20.heightBox,
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(color: redColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        featuredProduct.text.white.fontFamily(bold).size(18).make(),
                        10.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(6, (index)
                            => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(imgP1,width: 150,fit: BoxFit.cover,),
                                10.heightBox,
                                "Laptop 16GB/500GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                                "\$900".text.color(redColor).fontFamily(bold).size(16).make(),
                              ],
                            ).box.margin(const EdgeInsets.symmetric(horizontal: 4))
                                .white.padding(const EdgeInsets.all(8)).rounded.make()),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Third Swiper
                  20.heightBox,

                  VxSwiper.builder(
                      height: 150,
                      aspectRatio: 16/9,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      itemCount: slidersList.length,
                      itemBuilder: (context, index){
                        return Image.asset(
                          slidersList[index],
                          fit: BoxFit.fill,
                        ).box.rounded.clip(Clip.antiAlias ).margin(const EdgeInsets.symmetric(horizontal: 4)).make();
                      }),
                  20.heightBox,
                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 250),
                      itemBuilder:(context, index){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(imgP5,width: 200,height:180,fit: BoxFit.cover,),
                        const Spacer(),
                        10.heightBox,
                        "Laptop 16GB/500GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                        "\$900".text.color(redColor).fontFamily(bold).size(16).make(),
                      ],
                    ).box.margin(const EdgeInsets.symmetric(horizontal: 4))
                        .white.padding(const EdgeInsets.all(12)).rounded.make();

                  }),
            ],
            ),
            ),


          ),


        ],
      )),
    );
  }
}
