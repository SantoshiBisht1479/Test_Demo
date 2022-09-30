import 'package:flutter/material.dart';
import 'package:nerozon/utils/sizer_helper.dart';

class ProductCardsList extends StatefulWidget {
  const ProductCardsList({Key? key}) : super(key: key);

  @override
  _ProductCardsListState createState() => _ProductCardsListState();
}

class _ProductCardsListState extends State<ProductCardsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffb5cef5).withOpacity(0.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.0.w, vertical: 15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Fashion & Clothes",
                  style: TextStyle(fontSize: 20.0.t, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Text(
                      "more",
                      style:
                          TextStyle(fontSize: 14.0.t, fontWeight: FontWeight.w600, color: Color(0xff81C115)),
                    ),
                    Icon(
                      Icons.navigate_next,
                      size: 14,
                      color: Color(0xff81C115),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0.w),
            child: SizedBox(
              height: 255.h,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      index,
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  int index;

  ProductCard(this.index) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.w,
      child: Stack(
        children: [
          Card(
            elevation: 0.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0.w)),
            child: Column(
              children: [
                Image.asset(
                  "assets/dress.png",
                  fit: BoxFit.fill,
                  width: 170.w,
                  height: 150.h,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "OPPO A5 2020 Black, 4GB RAM...",
                              style: TextStyle(
                                  fontSize: 14.t,
                                  fontWeight: FontWeight.w500,
                                  color: Color(
                                    0xff002448,
                                  )),
                            ),
                            Row(
                              children: [
                                Row(
                                    children: List.generate(
                                        5,
                                        (index) => const Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Color(0xffF2C94C),
                                            )).toList()),
                                SizedBox(
                                  width: 5.0.w,
                                ),
                                Text(
                                  "(1,512)",
                                  style: TextStyle(
                                      fontSize: 12.t, fontWeight: FontWeight.w500, color: Color(0xff97A6B1)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\u{20B9} 12,990",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(
                                    0xff002448,
                                  )),
                            ),
                            SizedBox(
                              width: 5.0.w,
                            ),
                            Text(
                              "\u{20B9} 15,990",
                              style: TextStyle(
                                  fontSize: 12.t, fontWeight: FontWeight.w400, color: Color(0xff97A6B1)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 8.t, right: 8.w),
                child: Container(
                  height: 20.h,
                  width: 20.w,
                  child: const Icon(
                    Icons.favorite_border,
                    color: Color(
                      0xff002448,
                    ),
                    size: 12,
                  ),
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                ),
              ),
            ),
          ),
          Visibility(
              visible: index == 0,
              child: Positioned.fill(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0.t, left: 4.0.w),
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0.h, horizontal: 5.0.w),
                        child: Text(
                          "50% OFF",
                          style: TextStyle(fontSize: 10.t, fontWeight: FontWeight.w600, color: Colors.white),
                        ),
                      ),
                      decoration: const BoxDecoration(color: Colors.lightGreen),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
