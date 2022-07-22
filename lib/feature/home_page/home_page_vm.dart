import 'package:async_redux/async_redux.dart';

import '../../api/models/pokemon_model.dart';
import '../../state/app_state.dart';
import 'home_page_connector.dart';

class HomePageVmFactory extends VmFactory<AppState, HomePageConnector> {
  @override
  Vm fromStore() {
    return HomePageVm(
      pokemon: state.pokemon,
    );
  }

}

class HomePageVm extends Vm {
  HomePageVm({
    this.pokemon,
  }) : super(equals: [pokemon]);

  final List<PokemonModel>? pokemon;
}
