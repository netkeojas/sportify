import 'package:flutter/material.dart';
import 'package:sportify_client/sportify_client.dart';
import 'package:sportify_flutter/models/sportVenueDetails.dart';

import '../model/sport_field.dart';
import '../screen/detail/detail_screen.dart';
import '../theme.dart';

class SportFieldCard extends StatelessWidget {
  SportVenueDetail field;
  // SportVenue _sportVenue

  SportFieldCard({required this.field});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: 16, left: 16, top: 4.0, bottom: 16.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailScreen(
              field: field,
            );
          }));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: colorWhite,
              boxShadow: [
                BoxShadow(
                  color: primaryColor500.withOpacity(0.1),
                  blurRadius: 20,
                )
              ]),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(borderRadiusSize)),
                // child: Image.asset(field.imageAsset,
                //     height: 200,
                //     width: MediaQuery
                //         .of(context)
                //         .size
                //         .width,
                //     fit: BoxFit.cover),
                child: Image.network(
                    'https://plus.unsplash.com/premium_photo-1684106554224-1df87e5c2e29?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80',
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      field.name.toString(),
                      maxLines: 2,
                      style: subTitleTextStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 8.0,
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
                            field.address.toString(),
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
