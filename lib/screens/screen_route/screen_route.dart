
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../about/about_page.dart';
import '../excercise/excercise1.dart';
import '../excercise/rest_recover.dart';
import '../group_tab/view_group_tab.dart';

class ScreenRoute extends StatefulWidget {
  @override
  _ScreenRouteState createState() => _ScreenRouteState();
}

class _ScreenRouteState extends State<ScreenRoute> {
  List<String> navigation = [
    // CreateAccount.route,
    // CircuitPreviewScreen.route,
    // FoodItemPopUp.route,
    // HomeScreen.route,
    // CreateAccountFirstStep.route,
    // CreateAccountSecondStep.route,
    // CreateAccountThirdStep.route,
    // GroupsTabs.route,
    // GroupsTabsSearchResult.route,
    // GroupsTabsPrivate.route,
    // GroupsTabsCreate.route,
    // GroupsTabsSuccess.route,
    // GroupsTabsMy.route,
    // BootCampScreen.route,
    // BootCampScreenFeed.route,
    // FastingPage.route,
    // ProgressScreen.route,
    // ProgressScreenMarker.route,
    // ProgressScreenMarkerSelfies.route,
    // SelectDietBuddy.route,
    // RecipesScreen.route,
    // RecipesScreenFoodList.route,
    About.route,
    // AboutProgram.route,
    // AboutMission.route,
    // AboutFaq.route,
    // ContestTabBar.route,
    // ContestTabBarRequirments.route,
    // ContestTabBarUpload.route,
    // ContestTabBarStatus.route,
    // ContestScreen.route,
    // MeasurementDay.route,
    // EnterYourWeight.route,
    // EnterSelfie.route,
    // EnterMeasurement1.route,
    // HowToMeasure.route,
    // BioMakers.route,
    // SelfieTips.route
    //ChallengesTabBar.route,
    // ChallengeIntoScreen.route,
    // ChallengeUploadScreen.route,
    // ChallengeUploadVideo.route,
    // ChallengeCompletion.route,
    ExerciseCircuitPlay.route,
    RestRecover.route,
    //SerenityTabBar.route,
    ViewGroup.route,

    // Community01.route,
    // Community02.route,

    // GroupsTabs.route,
    // MealsTabBar.route,
    // RecipeTabBar.route,

    // Followers.route,
    // Following.route,
    // Network01.route,
    // Search.route,

    // MapGenerate.route,
    // SelectDietBuddyTab.route,

    // EnterWeight.route,
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      children: List.generate(navigation.length, (index) {
        return Container(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(navigation[index]);
            },
            child: Card(
              color: Colors.white,
              child: Center(child: Text((index + 1).toString())),
            ),
          ),
        );
      }),
    );
  }
}
