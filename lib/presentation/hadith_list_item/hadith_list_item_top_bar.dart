// import 'package:flutter/material.dart';

// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:office_work/core/assets/svg_path.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';



// class HadithListItemTopBar extends StatelessWidget {
//   final HadithBookEntity hadithBook;
//   final HadithEntity hadith;
//   final Function() onSaveClick;
//   final Function() onMoreClick;

//   const HadithListItemTopBar({
//     Key? key,
//     required this.hadithBook,
//     required this.hadith,
//     required this.onSaveClick,
//     required this.onMoreClick,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         HadithProfileTextImage(
//           imageColor: hadithBook.imageColor,
//           imageText: hadithBook.imageAbvr,
//         ),
//         SizedBox(width: 10.px),
//         HadithItemShortHeader(
//             hadithNumber: hadith.id, hadithBookName: hadithBook.name),
//         const Spacer(),
//         HadithItemValidityChip(validity: hadith.validity),
//         SizedBox(width: 15.px),
//         _buildSaveButton(),
//         SizedBox(width: 10.px),
//         _buildMoreButton(),
//         SizedBox(width: 4.px),
//       ],
//     );
//   }

//   Widget _buildMoreButton() {
//     return SizedBox(
//       height: 20.px,
//       width: 22.px,
//       child: GestureDetector(
//         onTap: () => onMoreClick(),
//         child: ColorFiltered(
//           colorFilter: const ColorFilter.mode(
//               HadithColors.blackMineShaft, BlendMode.srcATop),
//           child: SvgPicture.asset(
//             SvgPath.icMoreVert,
//             height: 18.px,
//             colorFilter: buildColorFilterToChangeColor(const Color(0xff353535)),
//             width: 14.px,
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSaveButton() {
//     return SizedBox(
//       height: 22.px,
//       width: 22.px,
//       child: GestureDetector(
//         onTap: () => onSaveClick(),
//         child: ColorFiltered(
//           colorFilter: const ColorFilter.mode(
//               HadithColors.blackMineShaft, BlendMode.srcATop),
//           child: SvgPicture.asset(
//             SvgPath.icBookmark,
//             height: 18.px,
//             colorFilter: buildColorFilterToChangeColor(const Color(0xff353535)),
//             width: 14.px,
//           ),
//         ),
//       ),
//     );
//   }
// }
