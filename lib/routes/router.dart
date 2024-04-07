import 'package:nylo_framework/nylo_framework.dart';
import '/routes/guards/dashboard_route_guard.dart';
import '/resources/pages/main_page.dart';
import '/resources/pages/dashboard_page.dart';
import '/resources/pages/home_page.dart';

/* App Router
|--------------------------------------------------------------------------
| * [Tip] Create pages faster 🚀
| Run the below in the terminal to create new a page.
| "dart run nylo_framework:main make:page profile_page"
| Learn more https://nylo.dev/docs/5.20.0/router
|-------------------------------------------------------------------------- */

appRouter() => nyRoutes((router) {
      router.route(HomePage.path, (context) => HomePage());
      // Add your routes here

      // router.route(NewPage.path, (context) => NewPage(), transition: PageTransitionType.fade);

      // Example using grouped routes
      // router.group(() => {
      //   "route_guards": [AuthRouteGuard()],
      //   "prefix": "/dashboard"
      // }, (router) {
      //
      //   router.route(AccountPage.path, (context) => AccountPage());
      // });
      router.route(DashboardPage.path, (context) => DashboardPage(),
          routeGuards: [DashboardRouteGuard()], authPage: true);
      router.route(MainPage.path, (context) => MainPage(), initialRoute: true);
    });
