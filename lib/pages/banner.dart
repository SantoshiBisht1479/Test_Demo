import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nerozon/utils/sizer_helper.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int currentCount = 0;
  int currentAd = 0;
  ScrollController bannerController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 211.0.h,
            child: CarouselSlider(
              items: getImages(),
              options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,
                  initialPage: 0,
                  onPageChanged: (int page, reason) {
                    setState(() {
                      currentCount = page;
                    });
                  }),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 5.0.h, bottom: 8.0.h),
            child: SizedBox(
              height: 5.0.h,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return currentCount == index
                        ? Padding(
                            padding: EdgeInsets.only(right: 3.0.w),
                            child: Container(
                                width: 14.0.w,
                                height: 5.0.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0.w),
                                  color: currentCount == index ? Color(0xff012444) : Color(0xffC0CCDE),
                                )),
                          )
                        : Padding(
                            padding: EdgeInsets.only(right: 3.0.w),
                            child: Container(
                              width: 5.0.w,
                              height: 5.0.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentCount == index ? Color(0xff012444) : Color(0xffC0CCDE),
                              ),
                            ),
                          );
                  }),
            ),
          ),
          Container(
            color: Color(0xffb5cef5).withOpacity(0.2),
            child: Column(
              children: [
                SizedBox(
                  height: 97.h,
                  child: PageView(
                    children: getADImages(),
                    onPageChanged: (int page) {
                      setState(() {
                        currentAd = page;
                      });
                    },
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 8.0.h),
                  child: SizedBox(
                    height: 5.0.h,
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return currentAd == index
                              ? Padding(
                                  padding: EdgeInsets.only(right: 3.0.w),
                                  child: Container(
                                      width: 14.0.w,
                                      height: 5.0.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.0.w),
                                        color: currentAd == index ? Color(0xff012444) : Color(0xffC0CCDE),
                                      )),
                                )
                              : Padding(
                                  padding: EdgeInsets.only(right: 3.0),
                                  child: Container(
                                    width: 5.0,
                                    height: 5.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: currentAd == index ? Color(0xff012444) : Color(0xffC0CCDE),
                                    ),
                                  ),
                                );
                        }),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  getImages() {
    return [
      Image.asset("assets/banner.png", width: MediaQuery.of(context).size.width),
      Image.asset("assets/banner.png", width: MediaQuery.of(context).size.width),
      Image.asset("assets/banner.png", width: MediaQuery.of(context).size.width),
      Image.asset("assets/banner.png", width: MediaQuery.of(context).size.width),
    ];
  }

  getADImages() {
    return [
      Image.asset("assets/ad.png", width: MediaQuery.of(context).size.width),
      Image.asset("assets/ad.png", width: MediaQuery.of(context).size.width),
      Image.asset("assets/ad.png", width: MediaQuery.of(context).size.width),
      Image.asset("assets/ad.png", width: MediaQuery.of(context).size.width),
    ];
  }
}
