import 'package:auto_route/auto_route_annotations.dart';
import 'package:my_app/ui/views/home/home_view.dart';
import 'package:my_app/ui/views/startup/startup_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: StartUpView, initial: true),
    MaterialRoute(page: HomeView),
  ],
)
class $Routers {
  StartUpView startUpViewRoute;
  HomeView homeViewRoute;
}
