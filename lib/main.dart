
import 'package:dietplanner/screens/about/about_page_faq.dart';
import 'package:dietplanner/screens/about/about_page_mission.dart';
import 'package:dietplanner/screens/about/about_page_program.dart';
import 'package:dietplanner/screens/challenges/challenge_completion_screen.dart';
import 'package:dietplanner/screens/challenges/challenge_upload_screen.dart';
import 'package:dietplanner/screens/challenges/challenge_upload_video_screen.dart';
import 'package:dietplanner/screens/contest/contest_screen.dart';
import 'package:dietplanner/screens/contest/contest_tab_bar_requirments.dart';
import 'package:dietplanner/screens/contest/contest_tab_bar_status.dart';
import 'package:dietplanner/screens/contest/contest_tab_bar_upload.dart';
import 'package:dietplanner/screens/excercise/rest_recover.dart';
import 'package:dietplanner/screens/fasting/fasting_page.dart';
import 'package:dietplanner/screens/food_item/food_item_pop_up.dart';
import 'package:dietplanner/screens/group_tab/view_group_tab.dart';
import 'package:dietplanner/screens/groups/groups_tabs_create.dart';
import 'package:dietplanner/screens/groups/groups_tabs_my.dart';
import 'package:dietplanner/screens/groups/groups_tabs_private.dart';
import 'package:dietplanner/screens/groups/groups_tabs_search_results.dart';
import 'package:dietplanner/screens/groups/groups_tabs_success.dart';
import 'package:dietplanner/screens/meals/recipes/recepies_tabbar_new_foodlist.dart';
import 'package:dietplanner/screens/my_day/boot_camp_screen_feed.dart';
import 'package:dietplanner/screens/progress/demo.dart';
import 'package:dietplanner/screens/progress/progress_tabbar_marker.dart';
import 'package:dietplanner/screens/progress/progress_tabbar_selfies.dart';
import 'package:dietplanner/screens/serenity/serinity_tab_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'screens/BootCamp-Exercise.dart';
import 'screens/challenges/challenge_into_screen.dart';
import 'screens/my_day/enter_selfie.dart';
import 'screens/my_day/enter_measurement.dart';
import 'screens/my_day/enter_your_weight.dart';
import 'screens/about/about_page.dart';
import 'screens/about/about_screen.dart';
import 'screens/challenges/challenges_tabbar.dart';
import 'screens/community/community01.dart';
import 'screens/community/community02.dart';
import 'screens/contest/contest_tab_bar.dart';
import 'screens/home/home.dart';
import 'screens/excercise/circuit_preview.dart';
import 'screens/excercise/excercise1.dart';
import 'screens/excercise/excercise2.dart';
import 'screens/groups/groups_tabs.dart';
import 'screens/meals/my_plates/meals_tab_bar.dart';
import 'screens/meals/recipes/recepies_tabbar.dart';
import 'screens/meals/recipes/recepies_tabbar_new.dart';
import 'screens/my_day/boot_camp_screen.dart';
import 'screens/my_day/select_diet_buddy.dart';
import 'screens/network/followers.dart';
import 'screens/network/following.dart';
import 'screens/network/network01.dart';
import 'screens/network/search.dart';
import 'screens/popup/popudashboard.dart';
import 'screens/progress/progress_tabbar.dart';
import 'screens/registration/create_account_step_1.dart';
import 'screens/registration/create_account_step_2.dart';
import 'screens/registration/create_account_step_3.dart';
import 'screens/select_diet_buddy/select_diet_buddy_tabs.dart';
import 'screens/weight_measurements/enter_measurments.dart';
import 'screens/weight_measurements/enter_weight.dart';
import 'screens/my_day/how_to_measure.dart';
import 'screens/select_diet_buddy/create_account.dart';
import 'screens/my_day/measurement_day.dart';
import 'screens/my_day/bio_makers.dart';
import 'screens/my_day/selfie_tips.dart';
main() async {
      await GetStorage.init();
      runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Diet Planner',
        routes: {
          CreateAccount.route: (context) => CreateAccount(),
          CircuitPreviewScreen.route: (context) => CircuitPreviewScreen(),
          FoodItemPopUp.route: (context) => FoodItemPopUp(),
          CreateAccountFirstStep.route: (context) => CreateAccountFirstStep(),
          CreateAccountSecondStep.route: (context) => CreateAccountSecondStep(),
          CreateAccountThirdStep.route: (context) => CreateAccountThirdStep(),
          HomeScreen.route: (context) => HomeScreen(),
          About.route: (context) => About(),
          ChallengesTabBar.route: (context) => ChallengesTabBar(),
          Community01.route: (context) => Community01(),
          Community02.route: (context) => Community02(),
          ContestTabBar.route: (context) => ContestTabBar(),
          ExerciseCircuitPlay.route: (context) => ExerciseCircuitPlay(),
          ExercisePage2.route: (context) => ExercisePage2(),
          GroupsTabs.route: (context) => GroupsTabs(),
          MealsTabBar.route: (context) => MealsTabBar(),
          RecipeTabBar.route: (context) => RecipeTabBar(),
          BootCampScreen.route: (context) => BootCampScreen(),
          Followers.route: (context) => Followers(),
          Following.route: (context) => Following(),
          Network01.route: (context) => Network01(),
          Search.route: (context) => Search(),
          PopUp.route: (context) => PopUp(),
          ProgressScreen.route: (context) => ProgressScreen(),
          CreateAccountFirstStep.route: (context) => CreateAccountFirstStep(),
          CreateAccountSecondStep.route: (context) => CreateAccountSecondStep(),
          CreateAccountThirdStep.route: (context) => CreateAccountThirdStep(),
          SelectDietBuddyTab.route: (context) => SelectDietBuddyTab(),
          EnterMeasurement.route: (context) => EnterMeasurement(),
          EnterWeight.route: (context) => EnterWeight(),
          HowToMeasure.route: (context) => HowToMeasure(),
          RecipesScreen.route: (context) => RecipesScreen(),
          EnterYourWeight.route: (context) => EnterYourWeight(),
          EnterSelfie.route: (context) => EnterSelfie(),
          ChallengeIntoScreen.route: (context) => ChallengeIntoScreen(),
          BootCampExercise.route: (context) => BootCampExercise(),
          BootCampScreenFeed.route: (context) => BootCampScreenFeed(),
          SelectDietBuddy.route: (context) => SelectDietBuddy(),
          //custom
          GroupsTabsPrivate.route: (context) => GroupsTabsPrivate(),
          GroupsTabsSearchResult.route: (context) => GroupsTabsSearchResult(),
          GroupsTabsCreate.route: (context) => GroupsTabsCreate(),
          GroupsTabsSuccess.route: (context) => GroupsTabsSuccess(),
          GroupsTabsMy.route: (context) => GroupsTabsMy(),
          FastingPage.route: (context) => FastingPage(),
          MapGenerate.route: (context) => MapGenerate(),
          ProgressScreenMarker.route: (context) => ProgressScreenMarker(),
          ProgressScreenMarkerSelfies.route: (context) =>
              ProgressScreenMarkerSelfies(),
          RecipesScreenFoodList.route: (context) => RecipesScreenFoodList(),
          RecipeTabBar.route: (context) => RecipeTabBar(),
          AboutScreen.route: (context) => AboutScreen(),
          AboutProgram.route: (context) => AboutProgram(),
          AboutMission.route: (context) => AboutMission(),
          AboutFaq.route: (context) => AboutFaq(),
          ContestTabBarRequirments.route: (context) =>
              ContestTabBarRequirments(),
          ContestTabBarUpload.route: (context) => ContestTabBarUpload(),
          ContestTabBarStatus.route: (context) => ContestTabBarStatus(),
          ContestScreen.route: (context) => ContestScreen(),
          MeasurementDay.route: (context) => MeasurementDay(),
          EnterMeasurement1.route: (context) => EnterMeasurement1(),
          HowToMeasure.route: (context) => HowToMeasure(),
          BioMakers.route: (context) => BioMakers(),
          SelfieTips.route: (context) => SelfieTips(),

          ExerciseCircuitPlay.route: (context) => ExerciseCircuitPlay(),
          ChallengeUploadScreen.route: (context) => ChallengeUploadScreen(),
          ChallengeUploadVideo.route: (context) => ChallengeUploadVideo(),
          ChallengeCompletion.route: (context) => ChallengeCompletion(),
          SerenityTabBar.route: (context) => SerenityTabBar(),
          ViewGroup.route: (context) => ViewGroup(),
          RestRecover.route: (context) => RestRecover()
        },
        theme: ThemeData(),
        //home: ScreenRoute());
        home: CreateAccountFirstStep());
  }
}
