import 'package:flutter/material.dart';
import 'package:luvit/widget/progresscount.dart';
import 'package:luvit/widget/word_card.dart';
import 'default_card_border.dart';

class ProfileCard extends StatefulWidget {

  final List<String> images;

   ProfileCard({Key? key, required this.images,})
      : super(key: key);

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {

  final ScrollController _controller = ScrollController();
  final controller = PageController();
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {

    late ImageProvider userPhoto;
      userPhoto = const AssetImage('assets/images/user2.png');
      final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Build profile card
    return Padding(
      key: UniqueKey(),
      padding: const EdgeInsets.all(9.0),
      child: Stack(
        children: [
          // ListView.builder(
          //   scrollDirection: Axis.horizontal,
          //   itemCount: widget.images.length,
          //   shrinkWrap: true,
          //   controller: _controller,
          //   itemBuilder: (context, index) {
          //     return InkWell(
          //       onTap: (){
          //         setState(() {
          //           activeIndex = index;
          //         });
          //       },
          //       onHover: (c){
          //         setState(() {
          //           activeIndex = index;
          //         });
          //       },
          //       onFocusChange: (f){
          //         setState(() {
          //           activeIndex = index;
          //         });
          //       },
          //       child: Card(
          //         clipBehavior: Clip.antiAlias,
          //         elevation: 4.0,
          //         margin: const EdgeInsets.all(0),
          //         shape: defaultCardBorder(),
          //         child: Container(
          //           decoration: BoxDecoration(
          //             image: DecorationImage(
          //                 image: AssetImage(widget.images[index]),
          //                 fit: BoxFit.contain),
          //           ),
          //           child: Container(
          //             decoration: BoxDecoration(
          //               gradient: LinearGradient(
          //                   begin: Alignment.bottomRight,
          //                   colors: [
          //                     Theme.of(context).primaryColor,
          //                     Colors.transparent
          //                   ]),
          //             ),
          //
          //             child: Container(
          //               alignment: Alignment.bottomLeft,
          //               padding: const EdgeInsets.only(left: 30.0, right: 20.0),
          //               child: Column(
          //                 mainAxisSize: MainAxisSize.min,
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   const WordCard(widthPercent: 20, text: "29,930", iconUrl: "assets/icons/start1.png",),
          //                   Row(
          //                     children: [
          //                       SizedBox(height: screenHeight * 0.03),
          //                       const Expanded(
          //                         child: Row(
          //                           children: [
          //                             Text(
          //                               '잭과분홍콩나물',
          //                               style: TextStyle(
          //                                   fontSize: 20,
          //                                   color: Colors.white,
          //                                   fontWeight: FontWeight.bold),
          //                               maxLines: 1,
          //                               overflow: TextOverflow.ellipsis,
          //                             ),
          //                             Text(
          //                               '25',
          //                               style: TextStyle(
          //                                 fontSize: 20,
          //                                 color: Colors.white,),
          //                               maxLines: 1,
          //                               overflow: TextOverflow.ellipsis,
          //                             ),
          //                           ],
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //
          //                   activeIndex.isOdd ? activeIndex == 1 ? Row(
          //                     children: [
          //                       SizedBox(
          //                         width: screenWidth * 0.6,
          //                         child: const Text(
          //                           "서울 · 2km 거리에 있음",
          //                           style: TextStyle(
          //                             color: Colors.white,
          //                             fontSize: 14,
          //                           ),
          //                           maxLines: 3,
          //                           overflow: TextOverflow.ellipsis,
          //                         ),
          //                       ),
          //                       SizedBox(width: screenWidth * 0.08),
          //                       // SvgIcon("assets/icons/heart.svg",
          //                       //     width: 50, height: 50),
          //
          //                       Image.asset(
          //                         "assets/images/heart.png",
          //                         width: 50,
          //                       ),
          //                     ],
          //                   ) :
          //                   Stack(
          //                     children: [
          //                       Column(
          //                         children: [
          //                           Row(
          //                             children: [
          //                               const WordCard(widthPercent: 40, text: "진지한 연애를 찾는 중", iconUrl: "assets/icons/emoji.png", borderColor: Color(0xFFFF006B), txtColor: Color(0xFFFF006B),),
          //                             ],
          //                           ),
          //                           SizedBox(height: screenHeight * 0.01),
          //
          //                           Row(
          //                             children: [
          //                               WordCard(widthPercent: 25, text: "전혀 안 함", iconUrl: "assets/icons/emoji1.png",),
          //                               SizedBox(width: screenWidth * 0.01),
          //                               WordCard(widthPercent: 20, text: "비흡연", iconUrl: "assets/icons/emoji2.png",),
          //                             ],
          //                           ),
          //                           SizedBox(height: screenHeight * 0.01),
          //                           Row(
          //                             children: [
          //                               WordCard(widthPercent: 35, text: "매일 1시간 이상", iconUrl: "assets/icons/emoji3.png",),
          //                             ],
          //                           ),
          //                           SizedBox(height: screenHeight * 0.01),
          //                           Row(
          //                             children: [
          //                               WordCard(widthPercent: 35, text: "만나는 걸 좋아함", iconUrl: "assets/icons/emoji4.png",),
          //                               SizedBox(width: screenWidth * 0.01),
          //                               WordCard(widthPercent: 15, text: "INFP", iconUrl: "",),
          //                             ],
          //                           ),
          //                         ],
          //                       ),
          //                       Positioned(
          //                         bottom: 0,
          //                         right: 0,
          //                         child: Image.asset(
          //                           "assets/images/heart.png",
          //                           width: 50,
          //                         ),
          //                       ),
          //                     ],
          //                   )
          //                       :
          //                   Row(
          //                     children: [
          //                       SizedBox(
          //                         width: screenWidth * 0.6,
          //                         child: const Text(
          //                           "서로 아껴주고 힘이 되어줄 사람 찾아요 선릉으로 직장 다니고 있고 여행 좋아해요 이상한 이야기하시는 분 바로 차단입니다",
          //                           style: TextStyle(
          //                             color: Colors.white,
          //                             fontSize: 14,
          //                           ),
          //                           maxLines: 3,
          //                           overflow: TextOverflow.ellipsis,
          //                         ),
          //                       ),
          //                       SizedBox(width: screenWidth * 0.08),
          //                       // SvgIcon("assets/icons/heart.svg",
          //                       //     width: 50, height: 50),
          //
          //                       Image.asset(
          //                         "assets/images/heart.png",
          //                         width: 50,
          //                       ),
          //                     ],
          //                   ),
          //                   SizedBox(height: 70),
          //                   Center(
          //                     child: Image.asset(
          //                       "assets/icons/arrowdown.png",
          //                       width: 50,
          //                     ),
          //                   )
          //                 ],
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     );
          //   },
          // ),

          PageView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            controller: controller,
            onPageChanged: (index){
              setState(() {
                activeIndex = index;
              });
            },
            children: List.generate(
              widget.images.length,
                  (int index) => Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 4.0,
                    margin: const EdgeInsets.all(0),
                    shape: defaultCardBorder(),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: userPhoto,
                            fit: BoxFit.contain),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                                Theme.of(context).primaryColor,
                                Colors.transparent
                              ]),
                        ),

                        child: Container(
                          alignment: Alignment.bottomLeft,
                          padding: const EdgeInsets.only(left: 30.0, right: 20.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const WordCard(widthPercent: 20, text: "29,930", iconUrl: "assets/icons/start1.png",),
                              Row(
                                children: [
                                  SizedBox(height: screenHeight * 0.03),
                                  const Expanded(
                                    child: Row(
                                      children: [
                                        Text(
                                          '잭과분홍콩나물',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          '25',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              activeIndex.isOdd ? activeIndex == 1 ? Row(
                                children: [
                                  SizedBox(
                                    width: screenWidth * 0.6,
                                    child: const Text(
                                      "서울 · 2km 거리에 있음",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.08),
                                  // SvgIcon("assets/icons/heart.svg",
                                  //     width: 50, height: 50),

                                  Image.asset(
                                    "assets/images/heart.png",
                                    width: 50,
                                  ),
                                ],
                              ) :
                              Stack(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          const WordCard(widthPercent: 40, text: "진지한 연애를 찾는 중", iconUrl: "assets/icons/emoji.png", borderColor: Color(0xFFFF006B), txtColor: Color(0xFFFF006B),),
                                        ],
                                      ),
                                      SizedBox(height: screenHeight * 0.01),

                                      Row(
                                        children: [
                                          WordCard(widthPercent: 25, text: "전혀 안 함", iconUrl: "assets/icons/emoji1.png",),
                                          SizedBox(width: screenWidth * 0.01),
                                          WordCard(widthPercent: 20, text: "비흡연", iconUrl: "assets/icons/emoji2.png",),
                                        ],
                                      ),
                                      SizedBox(height: screenHeight * 0.01),
                                      Row(
                                        children: [
                                          WordCard(widthPercent: 35, text: "매일 1시간 이상", iconUrl: "assets/icons/emoji3.png",),
                                        ],
                                      ),
                                      SizedBox(height: screenHeight * 0.01),
                                      Row(
                                        children: [
                                          WordCard(widthPercent: 35, text: "만나는 걸 좋아함", iconUrl: "assets/icons/emoji4.png",),
                                          SizedBox(width: screenWidth * 0.01),
                                          WordCard(widthPercent: 15, text: "INFP", iconUrl: "",),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Image.asset(
                                      "assets/images/heart.png",
                                      width: 50,
                                    ),
                                  ),
                                ],
                              )
                                  :
                              Row(
                                children: [
                                  SizedBox(
                                    width: screenWidth * 0.6,
                                    child: const Text(
                                      "서로 아껴주고 힘이 되어줄 사람 찾아요 선릉으로 직장 다니고 있고 여행 좋아해요 이상한 이야기하시는 분 바로 차단입니다",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.08),
                                  // SvgIcon("assets/icons/heart.svg",
                                  //     width: 50, height: 50),

                                  Image.asset(
                                    "assets/images/heart.png",
                                    width: 50,
                                  ),
                                ],
                              ),
                              SizedBox(height: 70),
                              Center(
                                child: Image.asset(
                                  "assets/icons/arrowdown.png",
                                  width: 50,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
            ),
          ),
          // Card(
          //   clipBehavior: Clip.antiAlias,
          //   elevation: 4.0,
          //   margin: const EdgeInsets.all(0),
          //   shape: defaultCardBorder(),
          //   child: Container(
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //           image: userPhoto,
          //           fit: BoxFit.contain),
          //     ),
          //     child: Container(
          //       decoration: BoxDecoration(
          //         gradient: LinearGradient(
          //             begin: Alignment.bottomRight,
          //             colors: [
          //               Theme.of(context).primaryColor,
          //               Colors.transparent
          //             ]),
          //       ),
          //
          //       child: Container(
          //         alignment: Alignment.bottomLeft,
          //         padding: const EdgeInsets.only(left: 30.0, right: 20.0),
          //         child: Column(
          //           mainAxisSize: MainAxisSize.min,
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             const WordCard(widthPercent: 20, text: "29,930", iconUrl: "assets/icons/start1.png",),
          //               Row(
          //               children: [
          //                 SizedBox(height: screenHeight * 0.03),
          //                 const Expanded(
          //                   child: Row(
          //                     children: [
          //                       Text(
          //                         '잭과분홍콩나물',
          //                         style: TextStyle(
          //                             fontSize: 20,
          //                             color: Colors.white,
          //                             fontWeight: FontWeight.bold),
          //                         maxLines: 1,
          //                         overflow: TextOverflow.ellipsis,
          //                       ),
          //                       Text(
          //                         '25',
          //                         style: TextStyle(
          //                             fontSize: 20,
          //                             color: Colors.white,),
          //                         maxLines: 1,
          //                         overflow: TextOverflow.ellipsis,
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ],
          //             ),
          //
          //             activeIndex.isOdd ? activeIndex == 1 ? Row(
          //               children: [
          //                 SizedBox(
          //                   width: screenWidth * 0.6,
          //                   child: const Text(
          //                     "서울 · 2km 거리에 있음",
          //                     style: TextStyle(
          //                       color: Colors.white,
          //                       fontSize: 14,
          //                     ),
          //                     maxLines: 3,
          //                     overflow: TextOverflow.ellipsis,
          //                   ),
          //                 ),
          //                 SizedBox(width: screenWidth * 0.08),
          //                 // SvgIcon("assets/icons/heart.svg",
          //                 //     width: 50, height: 50),
          //
          //                 Image.asset(
          //                   "assets/images/heart.png",
          //                   width: 50,
          //                 ),
          //               ],
          //             ) :
          //             Stack(
          //               children: [
          //                 Column(
          //                   children: [
          //                     Row(
          //                       children: [
          //                         const WordCard(widthPercent: 40, text: "진지한 연애를 찾는 중", iconUrl: "assets/icons/emoji.png", borderColor: Color(0xFFFF006B), txtColor: Color(0xFFFF006B),),
          //                       ],
          //                     ),
          //                     SizedBox(height: screenHeight * 0.01),
          //
          //                     Row(
          //                       children: [
          //                         WordCard(widthPercent: 25, text: "전혀 안 함", iconUrl: "assets/icons/emoji1.png",),
          //                         SizedBox(width: screenWidth * 0.01),
          //                         WordCard(widthPercent: 20, text: "비흡연", iconUrl: "assets/icons/emoji2.png",),
          //                       ],
          //                     ),
          //                     SizedBox(height: screenHeight * 0.01),
          //                     Row(
          //                       children: [
          //                         WordCard(widthPercent: 35, text: "매일 1시간 이상", iconUrl: "assets/icons/emoji3.png",),
          //                       ],
          //                     ),
          //                     SizedBox(height: screenHeight * 0.01),
          //                     Row(
          //                       children: [
          //                         WordCard(widthPercent: 35, text: "만나는 걸 좋아함", iconUrl: "assets/icons/emoji4.png",),
          //                         SizedBox(width: screenWidth * 0.01),
          //                         WordCard(widthPercent: 15, text: "INFP", iconUrl: "",),
          //                       ],
          //                     ),
          //                   ],
          //                 ),
          //                 Positioned(
          //                   bottom: 0,
          //                   right: 0,
          //                   child: Image.asset(
          //                     "assets/images/heart.png",
          //                     width: 50,
          //                   ),
          //                 ),
          //               ],
          //             )
          //                 :
          //             Row(
          //               children: [
          //                 SizedBox(
          //                   width: screenWidth * 0.6,
          //                   child: const Text(
          //                     "서로 아껴주고 힘이 되어줄 사람 찾아요 선릉으로 직장 다니고 있고 여행 좋아해요 이상한 이야기하시는 분 바로 차단입니다",
          //                     style: TextStyle(
          //                       color: Colors.white,
          //                       fontSize: 14,
          //                     ),
          //                     maxLines: 3,
          //                     overflow: TextOverflow.ellipsis,
          //                   ),
          //                 ),
          //                 SizedBox(width: screenWidth * 0.08),
          //                 // SvgIcon("assets/icons/heart.svg",
          //                 //     width: 50, height: 50),
          //
          //                 Image.asset(
          //                   "assets/images/heart.png",
          //                   width: 50,
          //                 ),
          //               ],
          //             ),
          //             SizedBox(height: 70),
          //             Center(
          //               child: Image.asset(
          //                 "assets/icons/arrowdown.png",
          //                 width: 50,
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
           Positioned(
            top: 15,
            left: 35,
            child: ProgressCount(activeIndex, widget.images.length),
          ),
        ],
      ),
    );
  }
}
