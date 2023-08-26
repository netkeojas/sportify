import 'package:flutter/material.dart';
import 'package:sportify_flutter/models/sportCategoryDetails.dart';
import 'package:sportify_flutter/models/sportVenueDetails.dart';
import 'package:sportify_flutter/screen/detail/checkout_screen.dart';

/*
SportVenueDetail is a custom object created to display the details.
This screen will be called from details screen in the onPressed function of 'Book now' from where the SportVenueDetail will be passed
The param SportVenueDetail will look like this - 
{
  String? name: Rajaram
  String? address: 'Mirajkar tikti, Kolhapur'
  int? sportVenueId: 11
  List<SportCategoryDetails>: [
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
  SportVenue? {name, address, id, etc....};
}
Use the list SportCategoryDetails to display each sport category
Display fields: {
  1. Name of sports -> Cricket
}

This screen will have onTap action for each sportCategory displayed.
eg:- {
  Cricket (clickable)
  Football (clickable)
}
onTap action -> This will take us to CheckoutScreen
pass the SportVenueDetail object and index of the <List>SportCategoryDetails which category is selected.
*/
class SelectASportScreen extends StatelessWidget {
  SportVenueDetail sportVenueDetail;
  SelectASportScreen({required this.sportVenueDetail});
  List<SportCategoryDetails>? items = [];

  @override
  Widget build(BuildContext context) {
    items = sportVenueDetail.sportCategories;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a sport to continue'),
      ),
      body: ListView.builder(
        itemCount: items!.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Handle item click
              print('Clicked on: ${items![index]}');
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CheckoutScreen(
                  field: sportVenueDetail,
                  sportCategoryIndex: index,
                );
              }));
            },
            child: ListTile(
              title: Text(items![index].sportCategory!.name),
            ),
          );
        },
      ),
    );
  }
}
