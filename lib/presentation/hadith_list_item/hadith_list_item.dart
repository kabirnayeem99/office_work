// import 'package:flutter/material.dart';

// import 'package:google_fonts/google_fonts.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';



// class HadithListItem extends StatelessWidget {
//   HadithListItem({
//     Key? key,
//     required this.hadith,
//     required this.onSaveClick,
//     required this.onMoreClick,
//   }) : super(key: key);

//   final HadithEntity hadith;
//   final Function() onSaveClick;
//   final Function() onMoreClick;

//   late final HadithBookEntity hadithBook = hadith.book;

//   @override
//   Widget build(BuildContext context) {
//     final ThemeData themeData = Theme.of(context);
//     late final TextTheme textTheme = themeData.textTheme;

//     return Container(
//       width: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.px),
//         color: themeData.cardColor,
//       ),
//       padding: EdgeInsets.all(10.px),
//       margin: EdgeInsets.symmetric(horizontal: 12.px),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           HadithListItemTopBar(
//             hadithBook: hadithBook,
//             hadith: hadith,
//             onSaveClick: onSaveClick,
//             onMoreClick: onMoreClick,
//           ),
//           SizedBox(height: 30.px),
//           _buildHadithArabicText(textTheme),
//           SizedBox(height: 20.px),
//           _buildNarratorText(textTheme, context),
//           SizedBox(height: 10.px),
//           _buildHadithTranslationText(textTheme),
//           SizedBox(height: 10.px),
//           _buildHadithNote(textTheme),
//         ],
//       ),
//     );
//   }

//   Widget _buildHadithNote(TextTheme textTheme) {
//     return hadith.note.isNotEmpty
//         ? Text(
//             "ফুটনোট:\n${hadith.note}",
//             style: textTheme.bodyMedium
//                 ?.copyWith(fontSize: 12, color: Colors.black54),
//           )
//         : const SizedBox.shrink();
//   }

//   Widget _buildHadithTranslationText(TextTheme textTheme) {
//     return hadith.banglaText.isNotEmpty
//         ? Text(
//             hadith.banglaText,
//             textAlign: TextAlign.left,
//             style: textTheme.bodyMedium?.copyWith(
//                 fontSize: 14.px,
//                 color: Colors.black,
//                 fontWeight: FontWeight.w400),
//           )
//         : const SizedBox.shrink();
//   }

//   Widget _buildNarratorText(TextTheme textTheme, BuildContext context) {
//     return hadith.narrator.isNotEmpty
//         ? Text(
//             "${hadith.narrator} থেকে বর্ণিত:",
//             textAlign: TextAlign.left,
//             style: textTheme.bodyMedium?.copyWith(
//               fontSize: 14.px,
//               color: Theme.of(context).primaryColor,
//             ),
//           )
//         : const SizedBox.shrink();
//   }

//   Widget _buildHadithArabicText(TextTheme textTheme) {
//     return hadith.arabicText.isNotEmpty
//         ? Text(
//             hadith.arabicText,
//             textAlign: TextAlign.right,
//             textDirection: TextDirection.rtl,
//             style: textTheme.bodyMedium?.copyWith(
//               fontFamily: GoogleFonts.lateef().fontFamily,
//               fontSize: 20.px,
//               fontWeight: FontWeight.w400,
//               color: Colors.black,
//             ),
//           )
//         : const SizedBox.shrink();
//   }
// }
