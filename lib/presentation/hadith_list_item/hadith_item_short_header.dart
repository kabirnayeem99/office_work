// import 'package:flutter/material.dart';

// import 'package:responsive_sizer/responsive_sizer.dart';


// class HadithItemShortHeader extends StatelessWidget {
//   const HadithItemShortHeader({
//     Key? key,
//     required this.hadithNumber,
//     required this.hadithBookName,
//   }) : super(key: key);

//   final int hadithNumber;
//   final String hadithBookName;

//   @override
//   Widget build(BuildContext context) {
//     late final TextTheme textTheme = Theme.of(context).textTheme;
//     late final TextStyle? titleSmallTextStyle = textTheme.titleSmall;

//     return Flexible(
//       child: RichText(
//         text: TextSpan(
//           children: [
//             TextSpan(
//               text: "হাদিস নং: ",
//               style: titleSmallTextStyle?.copyWith(
//                 fontWeight: FontWeight.w600,
//                 color: Colors.black54,
//                 fontSize: 13.px,
//               ),
//             ),
//             TextSpan(
//               text: translateNumberToBanglaString(hadithNumber),
//               style: titleSmallTextStyle?.copyWith(
//                 fontWeight: FontWeight.w600,
//                 color: Theme.of(context).primaryColorDark,
//                 fontSize: 13.px,
//               ),
//             ),
//             TextSpan(
//               text: "\n$hadithBookName",
//               style: textTheme.titleMedium?.copyWith(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 12.px,
//                 color: const Color(0x66353535),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
