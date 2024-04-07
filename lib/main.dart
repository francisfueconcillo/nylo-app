import 'package:flutter/material.dart';
import '/bootstrap/app.dart';
import 'package:nylo_framework/nylo_framework.dart';
import 'bootstrap/boot.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Nylo nylo = await Nylo.init(setup: Boot.nylo, setupFinished: Boot.finished);

  // final HttpLink httpLink = HttpLink('http://192.168.254.108:3000/api/graphql');
  final HttpLink httpLink = HttpLink('https://www.ibentamo.ph/api/graphql');

  // final AuthLink authLink = AuthLink(
  //   getToken: () async => 'Bearer YOUR_ACCESS_TOKEN',
  // );
  // final Link link = authLink.concat(httpLink);

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
        cache: GraphQLCache(
            store:
                InMemoryStore()), // TODO -- use sqflite or hive for offline store
        // link: link,
        link: httpLink),
  );

  runApp(
    GraphQLProvider(
      client: client,
      child: AppBuild(
        navigatorKey: NyNavigator.instance.router.navigatorKey,
        onGenerateRoute: nylo.router!.generator(),
        debugShowCheckedModeBanner: false,
        initialRoute: nylo.getInitialRoute(),
        navigatorObservers: nylo.getNavigatorObservers(),
      ),
    ),
  );
}
