// import 'package:flutter/material.dart';

// import 'package:get/get.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';

// class GoToHadithDialog extends StatelessWidget {
//   GoToHadithDialog({Key? key}) : super(key: key);

//   late final GoToPresenter _presenter = locate();

//   late final TextEditingController _editingController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     final ThemeData themeData = Theme.of(context);
//     return GetX(
//         init: _presenter,
//         builder: (_) {
//           final GoToUiState uiState = _presenter.uiState.value;
//           return Dialog(
//             backgroundColor: Colors.transparent,
//             child: Container(
//               color: Colors.transparent,
//               child: Container(
//                 padding:
//                     EdgeInsets.symmetric(vertical: 27.px, horizontal: 15.px),
//                 decoration: BoxDecoration(
//                   color: themeData.cardColor,
//                   borderRadius: BorderRadius.circular(20.px),
//                 ),
//                 child: Wrap(
//                   children: [
//                     Column(
//                       children: [
//                         Center(
//                           child: Text(
//                             "হাদিসে যান",
//                             textAlign: TextAlign.center,
//                             style: themeData.textTheme.titleMedium?.copyWith(
//                               fontSize: 16.px,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 24.px),
//                         GestureDetector(
//                           onTap: () => Get.dialog(GoToBookSelectionDialog(),
//                               arguments: [uiState.hadithBooks]),
//                           child: TextField(
//                             enabled: false,
//                             style: TextStyle(
//                               color: HadithColors.blueUCLABlue.withOpacity(0.8),
//                               fontWeight: FontWeight.w500,
//                             ),
//                             decoration: defaultInputDecoration(
//                                 context: context,
//                                 hintText: uiState.selectedBooks.isNotEmpty
//                                     ? uiState.selectedBooks
//                                         .map((e) => e.name)
//                                         .join(", ")
//                                     : "হাদিসের বই নির্বাচন",
//                                 suffixIconPath: SvgPath.icDropDown,
//                                 hintBold: true),
//                           ),
//                         ),
//                         SizedBox(height: 15.px),
//                         TextField(
//                           controller: _editingController,
//                           style: TextStyle(
//                             color: HadithColors.blueUCLABlue.withOpacity(0.8),
//                             fontWeight: FontWeight.w600,
//                           ),
//                           decoration: defaultInputDecoration(
//                               context: context, hintText: "হাদিসের নাম্বার"),
//                         ),
//                         SizedBox(height: 21.px),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             ActionButton(
//                               buttonText: "বাতিল",
//                               height: 48.px,
//                               width: 120.px,
//                               onTap: () => Get.back(),
//                               isFocused: false,
//                             ),
//                             SizedBox(width: 15.px),
//                             ActionButton(
//                               buttonText: "ঠিক আছে",
//                               height: 48.px,
//                               width: 120.px,
//                               onTap: () async {
//                                 final int? hadithId =
//                                     await _presenter.getHadithIdByHadithNumber(
//                                         hadithNumber: _editingController.text);
//                                 await Future.delayed(245.milliseconds);
//                                 Get.back();
//                                 if (hadithId == null) return;
//                                 Get.to(() => SingleHadithPage(),
//                                     arguments: [hadithId]);
//                               },
//                               isFocused: true,
//                             ),
//                           ],
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           );
//         });
//   }
// }
