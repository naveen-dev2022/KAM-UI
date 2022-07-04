import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:kam_sudo/values/utils/keys.dart';
import 'package:kam_sudo/values/utils/reusable_components.dart';
import 'package:sizer/sizer.dart';

class ReusableServiceCard extends StatelessWidget {
  ReusableServiceCard(
      {required this.heading,
        required this.ratePrice,
        required this.contractPrice,
        required this.content,
        required this.imageUrl,
        required this.onPressed,
        required this.readMore,
        this.isContractAvail=true,
        this.isRateAvail=true,
        this.isFromResedential=true
      });

  String? imageUrl;
  String? heading;
  String? content;
  String? ratePrice;
  String? contractPrice;
  Function()? onPressed;
  Widget? readMore;
  bool? isContractAvail;
  bool? isRateAvail;
  bool? isFromResedential;

  @override
  Widget build(BuildContext context) {
    buildCollapsed() {
      return Container();
    }

    buildExpanded() {
      return readMore!;
    }

    return ExpandableNotifier(
        child: ScrollOnExpand(
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Keys.SECONDARY_COLOR,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.only(left: 18, right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 3.h,
              ),
              Image.asset(
                imageUrl!,
                height: 64,
                width: 62,
              ),
              SizedBox(
                height: 2.h,
              ),
              AppWidgets.buildText(
                  context: context,
                  text: heading!,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'montserrat_regular',
                  fontSize: 24),
              SizedBox(
                height: 1.h,
              ),
              AppWidgets.buildText(
                  context: context,
                  text: content!,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'montserrat_regular',
                  fontSize: 14),
              SizedBox(
                height: 2.h,
              ),
              Expandable(
                collapsed: buildCollapsed(),
                expanded: buildExpanded(),
              ),
              Builder(
                builder: (context) {
                  var controller =
                      ExpandableController.of(context, required: true)!;
                  return GestureDetector(
                    child: Text(
                        controller.expanded ? "Read less <<" : "Read More >>",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Keys.COLOR,
                            fontSize: 12)),
                    onTap: () {
                      controller.toggle();
                    },
                  );
                },
              ),
              SizedBox(
                height: 2.h,
              ),
              isFromResedential!?
              isRateAvail!?Column(
                children: [
                  AppWidgets.buildText(
                      context: context,
                      text: ratePrice!,
                      color: Keys.COLOR,
                      fontFamily: 'montserrat_regular',
                      fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                ],
              ):SizedBox():SizedBox(),
              isFromResedential!? isContractAvail!?Column(children: [
                AppWidgets.buildText(
                    context: context,
                    text: contractPrice!,
                    color: Keys.COLOR,
                    fontFamily: 'montserrat_regular',
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),
                SizedBox(
                  height: 1.h,
                ),
              ],):SizedBox():SizedBox(),
              SizedBox(height: 1.h,),
              CommonTextButton(
                onPressed: onPressed,
                height: 35,
                width: 90.w,
                color: Keys.COLOR,
                radius: 6,
                child: Center(
                    child: AppWidgets.buildText(
                        context: context,
                        text: 'Add Service',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                    )),
              ),
              SizedBox(
                height: 3.h,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
