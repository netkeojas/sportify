import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sportify_client/sportify_client.dart';
import 'package:sportify_flutter/main.dart';
import 'package:sportify_flutter/models/sportVenueDetails.dart';

import '../../../helper.dart/listAllSportVenueHelper.dart';
import '../../../model/sport_field.dart';
import '../../../theme.dart';
import '../../../utils/dummy_data.dart';
import '../../../widget/category_card.dart';
import '../../../widget/sport_field_card.dart';
import '../../search_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<SportField> fieldList = recommendedSportField;
  List<SportVenue>? sportVenuesToDisplay;
  List<SportVenueDetail>? sportVenueDisplayDetails;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchSportVenues();
  }

  void fetchSportVenues() async {
    var sportVenues = await client.sportVenue.getAllSportVenues();
    var venueDetailsToDisplay =
        await fetchAllSportVenuesAndPopulateTheObjectArrayThatWillBeUsedToDisplay(
            client.sportVenue,
            client.sportCategory,
            client.sportVenueHasSportCategory);
    setState(() {
      sportVenuesToDisplay = sportVenues;
      sportVenueDisplayDetails = venueDetailsToDisplay;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (sportVenueDisplayDetails != null) {
      return Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            header(context),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 8.0),
                    child: Text(
                      "Get up Go\n!",
                      style: greetingTextStyle,
                    ),
                  ),
                  CategoryListView(),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, left: 16.0, right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recommended Venue",
                          style: subTitleTextStyle,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SearchScreen(
                                  selectedDropdownItem: "All",
                                );
                              }));
                            },
                            child: const Text("Show All"))
                      ],
                    ),
                  ),
                  // RECOMMENDED FIELDS
                  Column(
                      children: sportVenueDisplayDetails!
                          .map((fieldEntity) => SportFieldCard(
                                field: fieldEntity,
                              ))
                          .toList()),
                ],
              ),
            )
          ],
        ),
      );
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }

  Widget header(context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: SafeArea(
        // SEARCH Icon
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image:
                          AssetImage("assets/images/user_profile_example.png"),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back,",
                      style: descTextStyle,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      sampleUser.name,
                      style: subTitleTextStyle,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: primaryColor500,
                  borderRadius: BorderRadius.circular(borderRadiusSize)),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SearchScreen(
                      selectedDropdownItem: "",
                    );
                  }));
                },
                icon: const Icon(Icons.search, color: colorWhite),
              ),
            )
          ],
        ),
      ),
    );
  }
}
