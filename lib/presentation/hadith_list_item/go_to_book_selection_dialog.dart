// import 'package:flutter/material.dart';

// import 'package:get/get.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';


// class GoToBookSelectionDialog extends StatelessWidget {
//   GoToBookSelectionDialog({Key? key}) : super(key: key);

//   late final GoToPresenter _presenter = locate();

//   late final List<HadithBookEntity> hadithBooks = Get.arguments[0];

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       backgroundColor: Colors.transparent,
//       child: GetX(
//           init: _presenter,
//           builder: (_) {
//             return Stack(
//               children: [
//                 Container(
//                   padding: const EdgeInsets.symmetric(
//                       vertical: 24.0, horizontal: 16.0),
//                   decoration: BoxDecoration(
//                     color: Theme.of(context).cardColor,
//                     borderRadius: BorderRadius.circular(20.px),
//                   ),
//                   width: double.infinity,
//                   child: ScrollablePositionedList.builder(
//                     padding: const EdgeInsets.only(bottom: 100),
//                     itemBuilder: (context, index) =>
//                         _buildHadithCheckbox(hadithBooks[index], index),
//                     itemCount: hadithBooks.length,
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 14.px,
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 12.0, horizontal: 24.0),
//                     decoration: BoxDecoration(
//                       color: Theme.of(context).cardColor,
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     width: HadithScreen.width() * 0.8,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         GestureDetector(
//                           onTap: () => _presenter.selectAllBooks(),
//                           child: Text(
//                             "সবগুলো",
//                             style: TextStyle(
//                               fontSize: 12.px,
//                               fontWeight: FontWeight.w400,
//                               color: HadithColors.greyShuttle,
//                             ),
//                           ),
//                         ),
//                         SizedBox(width: 16.px),
//                         GestureDetector(
//                           onTap: () => _presenter.selectNoBooks(),
//                           child: Text(
//                             "কোনটাই নয়",
//                             style: TextStyle(
//                               fontSize: 12.px,
//                               fontWeight: FontWeight.w400,
//                               color: HadithColors.greyShuttle,
//                             ),
//                           ),
//                         ),
//                         const Spacer(),
//                         GestureDetector(
//                           onTap: () => Get.back(),
//                           child: Text(
//                             "ঠিক আছে",
//                             style: TextStyle(
//                                 fontSize: 12.px,
//                                 fontWeight: FontWeight.w600,
//                                 color: Get.theme.primaryColor),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             );
//           }),
//     );
//   }

//   Widget _buildHadithCheckbox(HadithBookEntity book, int index) {
//     return GetX(
//       init: _presenter,
//       builder: (_) {
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             if (index == 0)
//               Text(
//                 "হাদিসের বই নির্বাচন করুন",
//                 style: TextStyle(fontSize: 16.px, fontWeight: FontWeight.w600),
//               ),
//             if (index == 0) SizedBox(height: 19.px),
//             GestureDetector(
//               onTap: () => _presenter.toggleHadithSelection(
//                   book: book, isSelected: !_presenter.isBookSelected(book)),
//               child: Row(
//                 children: [
//                   Checkbox(
//                     value: _presenter.isBookSelected(book),
//                     onChanged: (checked) => _presenter.toggleHadithSelection(
//                         book: book, isSelected: checked),
//                     side:
//                         BorderSide(color: Get.theme.primaryColor, width: 2.px),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(3.px)),
//                     splashRadius: 3.px,
//                   ),
//                   Text(
//                     book.name,
//                     style: TextStyle(
//                       color: HadithColors.greyShuttle,
//                       fontWeight: FontWeight.w600,
//                       fontSize: 14.px,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
