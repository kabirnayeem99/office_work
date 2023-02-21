import 'package:flutter/material.dart';
import 'package:office_work/core/third_party_libs/floating_nav_bar/floating_nav_bar_item.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

typedef ItemBuilder = Widget Function(
    BuildContext context, int index, FloatingNavbarItem items);

class FloatingNavbar extends StatefulWidget {
  final List<FloatingNavbarItem> items;
  final int currentIndex;
  final void Function(int val)? onTap;
  final Color selectedBackgroundColor;
  final Color? selectedItemColor;
  final Color? unselectedItemColor;
  final Color backgroundColor;
  final double fontSize;
  final double iconSize;
  final double itemBorderRadius;
  final double borderRadius;
  final ItemBuilder itemBuilder;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final double width;
  final double elevation;

  FloatingNavbar({
    Key? key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
    ItemBuilder? itemBuilder,
    this.backgroundColor = Colors.black,
    this.selectedBackgroundColor = Colors.white,
    this.selectedItemColor = Colors.black,
    this.iconSize = 24.0,
    this.fontSize = 11.0,
    this.borderRadius = 8,
    this.itemBorderRadius = 8,
    this.unselectedItemColor = Colors.white,
    this.margin = const EdgeInsets.all(8),
    this.padding = const EdgeInsets.symmetric(vertical: 8),
    this.width = double.infinity,
    this.elevation = 0.0,
  })  : assert(items.length > 1),
        assert(items.length <= 5),
        assert(currentIndex <= items.length),
        assert(width > 50),
        itemBuilder = itemBuilder ??
            _defaultItemBuilder(
              unselectedItemColor: unselectedItemColor,
              selectedItemColor: selectedItemColor,
              borderRadius: borderRadius,
              fontSize: fontSize,
              width: width,
              backgroundColor: backgroundColor,
              currentIndex: currentIndex,
              iconSize: iconSize,
              itemBorderRadius: itemBorderRadius,
              items: items,
              onTap: onTap,
              selectedBackgroundColor: selectedBackgroundColor,
            ),
        super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FloatingNavbarState createState() => _FloatingNavbarState();
}

class _FloatingNavbarState extends State<FloatingNavbar> {
  List<FloatingNavbarItem> get items => widget.items;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: widget.elevation,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: widget.padding,
            margin: widget.margin,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.borderRadius),
              color: widget.backgroundColor,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(9, 13, 34, 0.15),
                  offset: Offset(0, 0),
                  blurRadius: 20,
                ),
              ],
            ),
            width: widget.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: items
                  .asMap()
                  .map((i, f) {
                    return MapEntry(i, widget.itemBuilder(context, i, f));
                  })
                  .values
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

ItemBuilder _defaultItemBuilder({
  Function(int val)? onTap,
  required List<FloatingNavbarItem> items,
  int? currentIndex,
  Color? selectedBackgroundColor,
  Color? selectedItemColor,
  Color? unselectedItemColor,
  Color? backgroundColor,
  double width = double.infinity,
  double? fontSize,
  double? iconSize,
  double? itemBorderRadius,
  double? borderRadius,
}) {
  return (BuildContext context, int index, FloatingNavbarItem item) => Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                  color: currentIndex == index
                      ? selectedBackgroundColor
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(itemBorderRadius!)),
              child: InkWell(
                onTap: () {
                  onTap!(index);
                },
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: width.isFinite
                      ? (width / items.length - 8)
                      : MediaQuery.of(context).size.width / items.length - 24,
                  padding: EdgeInsets.only(
                    top: item.title != null ? 4 : 10,
                    bottom: 0,
                  ),
                  // padding: EdgeInsets.symmetric(
                  //     horizontal: 4, vertical: item.title != null ? 4 : 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      item.customWidget == null
                          ? Icon(
                              item.icon,
                              color: currentIndex == index
                                  ? selectedItemColor
                                  : unselectedItemColor,
                              size: iconSize,
                            )
                          : item.customWidget!,
                      SizedBox(
                        height: 10.px,
                      ),
                      if (item.customWidget != null)
                        Container(
                          height: 4.px,
                          width: 28.px,
                          color: currentIndex == index
                              ? selectedItemColor
                              : unselectedItemColor,
                        ),
                      // if (item.title != null)
                      //   Text(
                      //     '${item.title}',
                      //     overflow: TextOverflow.ellipsis,
                      //     style: TextStyle(
                      //       color: currentIndex == index
                      //           ? selectedItemColor
                      //           : unselectedItemColor,
                      //       fontSize: fontSize,
                      //     ),
                      //   ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
