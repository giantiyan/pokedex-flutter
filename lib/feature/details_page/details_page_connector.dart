// import 'package:async_redux/async_redux.dart';
// import 'package:flutter/material.dart';
// import 'package:pokedex/feature/home_page/home_page.dart';
//
// import '../../state/actions/home_page_actions.dart';
// import '../../state/app_state.dart';
// import 'details_page_vm.dart';
//
//
// class DetailsPageConnector extends StatelessWidget {
//   const DetailsPageConnector();
//
//   @override
//   Widget build(BuildContext context) {
//     return StoreConnector<AppState, DetailsPageVm>(
//         vm: () => DetailsPageVmFactory(),
//         onInit: (store) async => store.dispatch(GetPokemonAction()),
//         builder: (context, vm) {
//           return HomePage(
//             pokemon: vm.pokemon,
//           );
//         });
//   }
// }

// TODO
