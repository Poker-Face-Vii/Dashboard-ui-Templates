import 'package:mobx/mobx.dart';
import 'package:mobx_provider/mobx_provider.dart';

part 'test_mobx.g.dart';

class Test = _TestBase with _$Test;

abstract class _TestBase extends MobxBase with Store {
  _TestBase() : _counter = 0;
  @observable
  int _counter;

  int get counter => _counter;

  @action
  void increment() => _counter++;
  @override
  void dispose() {}     
}
