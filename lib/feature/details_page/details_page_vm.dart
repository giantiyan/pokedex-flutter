// import 'package:async_redux/async_redux.dart';
// import 'package:flutter/material.dart';
//
// import '../../api/models/pokemon_model.dart';
// import '../../state/app_state.dart';
// import 'details_page_connector.dart';
//
// class DetailsPageVmFactory extends VmFactory<AppState, DetailsPageConnector> {
//   @override
//   Vm fromStore() {
//     return DetailsPageVm(
//       pokemon: state.pokemon,
//     );
//   }
//
// }
//
// class DetailsPageVm extends Vm {
//   DetailsPageVm({
//     this.pokemon,
//   }) : super(equals: [pokemon]);
//
//   final List<PokemonModel>? pokemon;
// }
