import 'package:flutter/material.dart';
import 'package:sportify_client/sportify_client.dart';
import 'package:sportify_flutter/main.dart';
import 'package:sportify_flutter/models/sportVenueDetails.dart';
// import 'package:sportify_flutter/model/sport_category.dart';

import '../model/field_facility.dart';
import '../theme.dart';

class FacilityCardList extends StatelessWidget {
  // List<SportCategory>? facilities;
  SportVenueDetail sportVenueDetailsData;

  FacilityCardList({required this.sportVenueDetailsData});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      physics: const ClampingScrollPhysics(),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      padding: EdgeInsets.zero,
      childAspectRatio: (1 / 1),
      shrinkWrap: true,
      children: sportVenueDetailsData.sportCategories!.map((facility) {
        return FacilityCard(
          name: facility.sportCategory!.name,
          sportVenueHasSportCategory: facility.sportVenueHasSportCategory,
        );
      }).toList(),
    );
  }
}

class FacilityCard extends StatefulWidget {
  // String imageIcon;
  String name;
  SportVenueHasSportCategory? sportVenueHasSportCategory;

  FacilityCard({required this.name, required this.sportVenueHasSportCategory});

  @override
  State<FacilityCard> createState() => _FacilityCardState();
}

class _FacilityCardState extends State<FacilityCard> {
  bool showName = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: lightBlue100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        splashColor: lightBlue300,
        onTap: () async {
          var venueHasAreaDetails = await client.venueSportHasArea
              .getVenueSportHasAreaByVenueSportId(
                  venueSportId: widget.sportVenueHasSportCategory!.id);
          print(venueHasAreaDetails);
          setState(() {
            showName = !showName;
            print(widget.sportVenueHasSportCategory!.id);
          });
        },
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(4.0),
            child: Center(
              child: Text(
                widget.name,
                style: facilityTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
