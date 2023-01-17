import 'package:flashcard/res/AppColors.dart';
import 'package:flashcard/res/Fonts.dart';
import 'package:flashcard/res/Images.dart';
import 'package:flashcard/utils/Utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// // class MyHomePage extends StatelessWidget {
// //   const MyHomePage({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Container(
// //         width: double.maxFinite,
// //         height: double.maxFinite,
// //         child: Column(
// //           children: [
// //             Container(
// //               height: 250,
// //               decoration: BoxDecoration(
// //                 color: Colors.black,
// //               ),
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key}) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int currentVisibleItemIndex = 0;

//   ScrollController? scrollController;

//   @override
//   void initState() {
//     scrollController = ScrollController();
//     scrollController!.addListener(scrollListenerWithCount);

//     super.initState();
//   }
//  void scrollListenerWithCount(){

//  }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 30.0),
//         child: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               verticalSpace(10.0), // Used from Utility
//               // Image.asset(Images.kIconMenu, height: 24),
//               const Icon(
//                 Icons.menu,
//                 // color: Colors.blue,
//                 size: 16.0,
//               ),
//               verticalSpace(20.0),

//               //search bar
//               Container(
//                 width: Utility.screenWidth(context),
//                 height: 60.0,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: const BorderRadius.all(Radius.circular(32.0)),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.blueGrey.withOpacity(0.1),
//                         blurRadius: 20.0,
//                         spreadRadius: 10.0,
//                         offset: const Offset(0, 10),
//                       )
//                     ]),
//                 child: Row(
//                   children: [
//                     horizontalSpace(20.0), // used from utility
//                     // Image.asset(Images.kIconSearch, height: 24),
//                     const Icon(
//                       Icons.search,
//                       // color: Colors.blue,
//                       size: 16.0,
//                     ),
//                     horizontalSpace(20.0),
//                     Expanded(
//                       child: TextFormField(
//                         decoration: const InputDecoration(
//                           border: InputBorder.none,
//                           hintText: "Search",
//                           hintStyle: textStyleSubText16px400w,
//                           isDense: true,
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),

//               verticalSpace(20.0),
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: 10,
//                   itemBuilder: (context, index) {
//                     // return Container();
//                     return PrespactiveWidget(index,currentVisibleItemIndex);
//                   },
//                   // children: [
//                   //   //first card
//                   //   Container(
//                   //     width: Utility.screenWidth(context),
//                   //     padding: EdgeInsets.all(20.0),
//                   //     decoration: BoxDecoration(
//                   //       color: Colors.white,
//                   //       borderRadius: BorderRadius.all(
//                   //         Radius.circular(32.0),
//                   //       ),
//                   //     ),
//                   //     child: Row(
//                   //       children: [
//                   //         Column(
//                   //           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   //           crossAxisAlignment: CrossAxisAlignment.start,
//                   //           children: [
//                   //             Text("Cameron Jones", style: textStyleRegular18pxW600),
//                   //             verticalSpace(10.0),
//                   //             Text("Super Cut Salon", style: textStyleSubText14px400w),
//                   //             verticalSpace(10.0),
//                   //             Row(
//                   //               children: [
//                   //                 // Image.asset(Images.kIconStar, height: 16.0),
//                   //                 Icon(
//                   //                   Icons.star,
//                   //                   // color: Colors.blue,
//                   //                   size: 16.0,
//                   //                 ),
//                   //                 horizontalSpace(10.0),
//                   //                 Text("4.8", style: textStyleRegular16px500px),
//                   //               ],
//                   //             ),
//                   //             verticalSpace(20.0),
//                   //             Container(
//                   //               decoration: BoxDecoration(
//                   //                 color: AppColors.colorSecondary,
//                   //                 borderRadius: BorderRadius.all(
//                   //                   Radius.circular(32.0),
//                   //                 ),
//                   //               ),
//                   //               child: Padding(
//                   //                 //adding padding will make it responsive
//                   //                 //we are not defining width and height it adjust by its
//                   //                 //padding on all devices
//                   //                 padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
//                   //                 child: Text("View Profile", style: textStyleWhite16px600w),
//                   //               ),
//                   //             ),
//                   //           ],
//                   //         ),
//                   //         // Image.asset(Images.kImgPlaceHolder1, height: 190),
//                   //         Icon(
//                   //           Icons.place,
//                   //           // color: Colors.blue,
//                   //           size: 16.0,
//                   //         ),
//                   //       ],
//                   //     ),
//                   //   ),
//                   //   verticalSpace(20.0),

//                   //   //second card
//                   //   Container(
//                   //     width: Utility.screenWidth(context),
//                   //     padding: EdgeInsets.all(20.0),
//                   //     decoration: BoxDecoration(
//                   //       color: Colors.white,
//                   //       borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                   //     ),
//                   //     child: Row(
//                   //       children: [
//                   //         Column(
//                   //           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   //           crossAxisAlignment: CrossAxisAlignment.start,
//                   //           children: [
//                   //             Text("Max Robertson", style: textStyleRegular18pxW600),
//                   //             verticalSpace(10.0),
//                   //             Text("Rossano Ferretti Salon", style: textStyleSubText14px400w),
//                   //             verticalSpace(10.0),
//                   //             Row(
//                   //               children: [
//                   //                 // Image.asset(Images.kIconStar, height: 16.0),
//                   //                 Icon(
//                   //                   Icons.star,
//                   //                   // color: Colors.blue,
//                   //                   size: 16.0,
//                   //                 ),
//                   //                 horizontalSpace(10.0),
//                   //                 Text("4.8", style: textStyleRegular16px500px),
//                   //               ],
//                   //             ),
//                   //             verticalSpace(20.0),
//                   //             Container(
//                   //               decoration: BoxDecoration(
//                   //                 color: AppColors.colorSecondary,
//                   //                 borderRadius: BorderRadius.all(
//                   //                   Radius.circular(32.0),
//                   //                 ),
//                   //               ),
//                   //               child: Padding(
//                   //                 //adding padding will make it responsive
//                   //                 //we are not defining width and height it adjust by its
//                   //                 //padding on all devices
//                   //                 padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
//                   //                 child: Text("View Profile", style: textStyleWhite16px600w),
//                   //               ),
//                   //             ),
//                   //           ],
//                   //         ),
//                   //         // Expanded(child: Image.asset(Images.kImgPlaceHolder2)),
//                   //         Expanded(child:     Icon(
//                   //           Icons.place,
//                   //           // color: Colors.blue,
//                   //           size: 16.0,
//                   //         ),),
//                   //       ],
//                   //     ),
//                   //   ),
//                   //   verticalSpace(20.0),

//                   //   //third card
//                   //   Container(
//                   //     width: Utility.screenWidth(context),
//                   //     padding: EdgeInsets.all(20.0),
//                   //     decoration: BoxDecoration(
//                   //       color: Colors.white,
//                   //       borderRadius: BorderRadius.all(Radius.circular(32.0)),
//                   //     ),
//                   //     child: Row(
//                   //       children: [
//                   //         Column(
//                   //           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   //           crossAxisAlignment: CrossAxisAlignment.start,
//                   //           children: [
//                   //             Text("Beth Watson", style: textStyleRegular18pxW600),
//                   //             verticalSpace(10.0),
//                   //             Text("Neville Hair and Beauty", style: textStyleSubText14px400w),
//                   //             verticalSpace(10.0),
//                   //             Row(
//                   //               children: [
//                   //                 // Image.asset(Images.kIconStar, height: 16.0),
//                   //                 Icon(
//                   //                   Icons.star,
//                   //                   // color: Colors.blue,
//                   //                   size: 16.0,
//                   //                 ),
//                   //                 horizontalSpace(10.0),
//                   //                 Text("4.7", style: textStyleRegular16px500px),
//                   //               ],
//                   //             ),
//                   //             verticalSpace(20.0),
//                   //             Container(
//                   //               decoration: BoxDecoration(
//                   //                 color: AppColors.colorSecondary,
//                   //                 borderRadius: BorderRadius.all(
//                   //                   Radius.circular(32.0),
//                   //                 ),
//                   //               ),
//                   //               child: Padding(
//                   //                 //adding padding will make it responsive
//                   //                 //we are not defining width and height it adjust by its
//                   //                 //padding on all devices
//                   //                 padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
//                   //                 child: Text("View Profile", style: textStyleWhite16px600w),
//                   //               ),
//                   //             ),
//                   //           ],
//                   //         ),
//                   //         // Image.asset(Images.kImgPlaceHolder3, height: 150),
//                   //         Icon(
//                   //           Icons.place,
//                   //           // color: Colors.blue,
//                   //           size: 16.0,
//                   //         ),
//                   //       ],
//                   //     ),
//                   //   ),
//                   // ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class PrespactiveWidget extends StatelessWidget {
//   const PrespactiveWidget(int index, {super.key});
//   final _items = [];
//    final GlobalKey<AnimatedListState> _key = GlobalKey();
//   void _removeItem(int index) {
//     _key.currentState!.removeItem(index, (_, animation) {
//       return SizeTransition(
//         sizeFactor: animation,
//         child: const Card(
//           margin: EdgeInsets.all(10),
//           elevation: 10,
//           color: Colors.purple,
//           child: ListTile(
//             contentPadding: EdgeInsets.all(15),
//             title: Text("removing", style: TextStyle(fontSize: 24)),
//           ),
//         ),
//       );
//       ;
//     }, duration: const Duration(seconds: 1));

//     _items.removeAt(index);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title: const Text('Animated List'),
//       ),
//       body: AnimatedList(
//         key: _key,
//         initialItemCount: 0,
//         padding: const EdgeInsets.all(10),
//         itemBuilder: (_, index, animation) {
//           return SizeTransition(
//             key: UniqueKey(),
//             sizeFactor: animation,
//             child: Card(
//               margin: const EdgeInsets.all(10),
//               elevation: 10,
//               color: Colors.blue,
//               child: ListTile(
//                 contentPadding: const EdgeInsets.all(15),
//                 title:
//                 Text(_items[index], style: const TextStyle(fontSize: 24, color: Colors.white)),
//                 trailing: IconButton(
//                   icon:  Icon(Icons.delete, color: Colors.redAccent.withOpacity(0.9),),
//                   onPressed: () => _removeItem(index),
//                 ),
//               ),
//             ),
//           );
//       )
//   }
//   //   void _addItem() {
//   //   _items.insert(0, "Item ${_items.length + 1}");
//   //   _key.currentState!.insertItem(0, duration: const Duration(seconds: 1));
//   // }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  final _items = [];
   final GlobalKey<AnimatedListState> _key = GlobalKey();
    void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(0, duration: const Duration(seconds: 1));
  }
    void _removeItem(int index) {
    _key.currentState!.removeItem(index, (_, animation) {
      return SizeTransition(
        sizeFactor: animation,
        child: const Card(
          margin: EdgeInsets.all(10),
          elevation: 10,
          color: Colors.purple,
          child: ListTile(
            contentPadding: EdgeInsets.all(15),
            title: Text("removing", style: TextStyle(fontSize: 24)),
          ),
        ),
      );
      ;
    }, duration: const Duration(seconds: 1));

    _items.removeAt(index);
  } 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated List'),
      ),
      body: AnimatedList(
        key: _key,
        initialItemCount: 0,
        padding: const EdgeInsets.all(10),
        itemBuilder: (_, index, animation) {
          return SizeTransition(
            key: UniqueKey(),
            sizeFactor: animation,
            child: Card(
              margin: const EdgeInsets.all(10),
              elevation: 10,
              color: Colors.blue,
              child: ListTile(
                contentPadding: const EdgeInsets.all(15),
                title:
                Text(_items[index], style: const TextStyle(fontSize: 24, color: Colors.white)),
                trailing: IconButton(
                  icon:  Icon(Icons.delete, color: Colors.redAccent.withOpacity(0.9),),
                  onPressed: () => _removeItem(index),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _addItem, child: const Icon(Icons.add)),
    );
  }
}