import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/feature/home_page/home_page_connector.dart';
import 'package:pokedex/state/app_state.dart';

class PokedexApp extends StatelessWidget {
  const PokedexApp({required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const HomePageConnector(),
      ),
    );
  }
}
