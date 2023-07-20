import 'package:flutter/material.dart';
import 'package:sportify_flutter/models/sportCategoryDetails.dart';

/*
SportCategoryDetails is a custom object created to display the details.
This screen will be called from details screen in the onPressed function of 'Book now' from where the sportCategoryDetailsList will be passed
The param sportCategoryDetailsList will look like this - 
[
  {
    sportCategoryBelongsToVenueId: 2
    sportCategory: { id: 3, name: 'Cricket', isTeamSport: true, popularity: 0}
    sportVenueHasSportCategory: { id: 2, venueId: 1, sportCategoryId: 3 }
  },
  {
    sportCategoryBelongsToVenueId: 3
    sportCategory: { id: 4, name: 'Football', isTeamSport: true, popularity: 0}
    sportVenueHasSportCategory: { id: 3, venueId: 1, sportCategoryId: 4 }
  }
]
Use this list to display each sport category
Display fields: {
  1. Name of sports -> Cricket
}

This screen will have onTap action for each sportCategory displayed.
eg:- {
  Cricket (clickable)
  Football (clickable)
}
onTap action -> This will take us to booking screen where we will pass the SportCategoryDetails object.
*/
class SelectASportScreen extends StatelessWidget {
  List<SportCategoryDetails> sportCategoryDetailsList;
  SelectASportScreen({required this.sportCategoryDetailsList});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
