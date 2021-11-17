import 'package:lovelive_ibp/shared/api/lovelive_api.dart';
import 'package:lovelive_ibp/shared/api/lovelive_repository.dart';
import 'package:mobx/mobx.dart';
part 'idols_controller.g.dart';

class IdolsController = _IdolsControllerBase with _$IdolsController;

abstract class _IdolsControllerBase with Store {
  final LoveLiveRepository _loveLiveRepository;

  _IdolsControllerBase(this._loveLiveRepository);

  /// [Fetch] data from local {database api}
  ///
  /// Specific data returned to ---> a list of [Muses] class object
  Future<List<Muses?>> fetchMuses() => _loveLiveRepository.loadMuses();

  /// [Fetch] data from local {database api}
  ///
  /// Specific data returned to ---> a list of [Aquors] class object
  Future<List<Aquors?>> fetchAquors() => _loveLiveRepository.loadAquors();

  /// [Fetch] data from local {database api}
  ///
  /// Specific data returned to ---> a list of [Nijigasaki] class object
  Future<List<Nijigasaki?>> fetchNijigasaki() =>
      _loveLiveRepository.loadNijigasaki();

  /// [Fetch] data from local {database api}
  ///
  /// Specific data returned to ---> a list of [Liella] class object
  Future<List<Liella?>> fetchLiella() => _loveLiveRepository.loadLiella();

  /// [Fetch] data from local {database api}
  ///
  /// Specific data returned to ---> an object of [Support]
  Future<Support?> fetchSupport() => _loveLiveRepository.loadSupport();
}