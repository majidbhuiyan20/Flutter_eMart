import 'package:emart_app/consts/consts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: "Cart is empty".text.white.fontFamily(bold).makeCentered(),
    );
  }
}
