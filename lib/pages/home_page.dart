import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nerozon/pages/product_list.dart';
import 'package:nerozon/utils/asset_utils.dart';
import 'package:nerozon/utils/color_utils.dart';
import 'package:nerozon/utils/sizer_helper.dart';

import 'banner.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: _appBar(AppBar().preferredSize.height),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.0.w, vertical: 15.h),
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(AssetUtils.electronics),
                      SizedBox(
                        height: 4.h,
                      ),
                      const Text(
                        'Grocery',
                        style: TextStyle(
                            color: ColorUtils.veryDarkBlue, fontWeight: FontWeight.w500, fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    children: [
                      Image.asset(AssetUtils.electronics),
                      SizedBox(
                        height: 4.h,
                      ),
                      const Text(
                        'Electronics',
                        style: TextStyle(
                            color: ColorUtils.veryDarkBlue, fontWeight: FontWeight.w500, fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    children: [
                      Image.asset(AssetUtils.grocery),
                      SizedBox(
                        height: 4.h,
                      ),
                      const Text(
                        'Fashion',
                        style: TextStyle(
                            color: ColorUtils.veryDarkBlue, fontWeight: FontWeight.w500, fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    children: [
                      Image.asset(AssetUtils.home),
                      SizedBox(
                        height: 4.h,
                      ),
                      const Text(
                        'Home',
                        style: TextStyle(
                            color: ColorUtils.veryDarkBlue, fontWeight: FontWeight.w500, fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Column(
                    children: [
                      Image.asset(AssetUtils.mobile),
                      SizedBox(
                        height: 4.h,
                      ),
                      const Text(
                        'Mobile',
                        style: TextStyle(
                            color: ColorUtils.veryDarkBlue, fontWeight: FontWeight.w500, fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
            ),
            Demo(),
            Container(
              color: Color(0xffb5cef5).withOpacity(0.2),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 21.0.w, vertical: 15.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Today’s Deals',
                          style: TextStyle(
                              color: ColorUtils.veryDarkGray, fontWeight: FontWeight.w700, fontSize: 20.t),
                        ),
                        Image.asset(AssetUtils.morePng)
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        gradient:
                            LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
                      Color(0xff0083FF),
                      Color(0xff045FB4),
                    ])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 22.h),
                          child: Column(
                            children: [
                              SvgPicture.asset(AssetUtils.timer),
                              Text(
                                'DEALS \nOF THE DAY',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20.t),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 5.12.w, vertical: 6.12.h),
                                        color: Colors.white,
                                        child: Text(
                                          '00',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: ColorUtils.veryDarkBlue1,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18.t),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3.56.h,
                                      ),
                                      Text(
                                        'Days',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 10.t),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 5.12.w, vertical: 6.12.h),
                                        color: Colors.white,
                                        child: Text(
                                          '00',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: ColorUtils.veryDarkBlue1,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18.t),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3.56.h,
                                      ),
                                      Text(
                                        'Hours',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 10.t),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 5.12.w, vertical: 6.12.h),
                                        color: Colors.white,
                                        child: Text(
                                          '00',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: ColorUtils.veryDarkBlue1,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18.t),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3.56.h,
                                      ),
                                      Text(
                                        'Mins',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 10.t),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 5.12.w, vertical: 6.12.h),
                                        color: Colors.white,
                                        child: Text(
                                          '00',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: ColorUtils.veryDarkBlue1,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18.t),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3.56.h,
                                      ),
                                      Text(
                                        'Sec',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 10.t),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 21.h,
                              ),
                              Image.asset(AssetUtils.discount),
                              SizedBox(
                                height: 25.5.h,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 9.5.h),
                                decoration: BoxDecoration(
                                    color: Color(0xffEC7C03), borderRadius: BorderRadius.circular(5.w)),
                                child: Text(
                                  'View All',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontWeight: FontWeight.w600, fontSize: 12.t),
                                ),
                              )
                            ],
                          ),
                        ),

                        ///container 2
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 5.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 12.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    offerWidget(AssetUtils.headphone, 55.h),
                                    offerWidget(AssetUtils.headphone, 55.h),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  offerWidget(AssetUtils.headphone, 55.h),
                                  offerWidget(AssetUtils.headphone, 55.h),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            ProductCardsList(),

            ///beauty widget
            Container(
              color: Color(0xffb5cef5).withOpacity(0.2),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 21.0.w, vertical: 15.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Beauty & Hygiene',
                          style: TextStyle(
                              color: ColorUtils.veryDarkBlue1, fontWeight: FontWeight.w600, fontSize: 16.t),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 9.5.h),
                          decoration: BoxDecoration(
                              color: Color(0xffEC7C03), borderRadius: BorderRadius.circular(5.w)),
                          child: Text(
                            'View All',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 12.t),
                          ),
                        )
                      ],
                    ),
                  ),
                  GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 21.0.w),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisExtent: 223.h),
                    itemBuilder: (context, index) {
                      return Container(
                          decoration: BoxDecoration(
                              color: Colors.white, border: Border.all(color: Color(0xffefefef), width: 1)),
                          child: offerWidget(AssetUtils.garnier, 100.h));
                    },
                    itemCount: 9,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget offerWidget(String image, double height) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
      child: Column(
        children: [
          Image.asset(
            image,
            height: height,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Electronics\ngadgets',
            textAlign: TextAlign.center,
            style: TextStyle(color: ColorUtils.veryDarkBlue1, fontWeight: FontWeight.w400, fontSize: 12.t),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            'From ₹ 599',
            textAlign: TextAlign.center,
            style: TextStyle(color: ColorUtils.veryDarkBlue1, fontWeight: FontWeight.w600, fontSize: 14.t),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
            decoration: BoxDecoration(color: Color(0xff81C115), borderRadius: BorderRadius.circular(2.w)),
            child: Text(
              '50% OFF',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 10.t),
            ),
          ),
        ],
      ),
    );
  }

  _appBar(height) => PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, height + 179.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
          color: ColorUtils.veryDarkBlue,
          height: height + 179.h,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.w)),
                      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                      child: SvgPicture.asset(
                        AssetUtils.menu,
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    AssetUtils.nerozonLogo,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AssetUtils.notification,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      SvgPicture.asset(
                        AssetUtils.cart,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.w),
                          borderSide: const BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search for product, brands and more",
                      contentPadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.w),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 16.0.w, right: 16.w),
                        child: SvgPicture.asset(
                          AssetUtils.search,
                          height: 16.h,
                          width: 16.w,
                        ),
                      ),
                      suffixIcon: Container(
                        margin: EdgeInsets.symmetric(horizontal: 7.w, vertical: 7.h),
                        decoration: BoxDecoration(
                            color: ColorUtils.veryPaleBlue, borderRadius: BorderRadius.circular(5.w)),
                        padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 11.h),
                        child: SvgPicture.asset(
                          AssetUtils.mic,
                        ),
                      ),
                      hintStyle: const TextStyle(
                          color: ColorUtils.darkGrayishBlue, fontWeight: FontWeight.w400, fontSize: 14)))
            ],
          ),
        ),
      );
}
