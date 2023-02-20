import 'package:get/get.dart';
import 'package:office_work/core/assets/svg_path.dart';
import 'package:office_work/data/model/drop_down_model.dart';

class DropDownController extends GetxController {
  List<DropDownModel> dropDownList = [
    DropDownModel(
      icon: SvgPath.icRedFolder,
      title: 'Sahih Bukhari',
    ),
    DropDownModel(
      icon: SvgPath.icYellowFolder,
      title: 'Sahih Muslim',
    ),
    DropDownModel(
      icon: SvgPath.icGreenFolder,
      title: 'Sahih Abu Dawud',
    ),
    DropDownModel(
      icon: SvgPath.icPurpleFolder,
      title: 'Sahih Ibn Majah',
    ),
    DropDownModel(
      icon: SvgPath.icRedFolder,
      title: 'Sahih Bukhari',
    ),
    DropDownModel(
      icon: SvgPath.icYellowFolder,
      title: 'Sahih Muslim',
    ),
    DropDownModel(
      icon: SvgPath.icGreenFolder,
      title: 'Sahih Abu Dawud',
    ),
    DropDownModel(
      icon: SvgPath.icPurpleFolder,
      title: 'Sahih Ibn Majah',
    ),
  ];
}
