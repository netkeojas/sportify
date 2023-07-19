import 'package:flutter/material.dart';
import 'package:sportify_client/sportify_client.dart';
import '../model/sport_field.dart';
import '../screen/detail/detail_screen.dart';
import '../theme.dart';

class SportFieldList extends StatelessWidget {
  SportVenue field;
  // SportVenue? sportVenue;

  SportFieldList({required this.field});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //   return DetailScreen(
          //     field: field,
          //   );
          // }));
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0), color: colorWhite),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(borderRadiusSize),
                //   child: Image.asset(field.imageAsset,
                //       height: 65, width: 100, fit: BoxFit.cover),
                child: Image.network(
                    'https://plus.unsplash.com/premium_photo-1684106554224-1df87e5c2e29?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80',
                    height: 65,
                    width: 100,
                    fit: BoxFit.cover),
              ),
              const SizedBox(
                width: 8,
              ),
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      field.name,
                      maxLines: 1,
                      style: subTitleTextStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/icons/pin.png",
                          width: 20,
                          height: 20,
                          color: primaryColor500,
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Flexible(
                          child: Text(
                            field.address,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: addressTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
