// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Test on _TestBase, Store {
  final _$_counterAtom = Atom(name: '_TestBase._counter');

  @override
  int get _counter {
    _$_counterAtom.context.enforceReadPolicy(_$_counterAtom);
    _$_counterAtom.reportObserved();
    return super._counter;
  }

  @override
  set _counter(int value) {
    _$_counterAtom.context.conditionallyRunInAction(() {
      super._counter = value;
      _$_counterAtom.reportChanged();
    }, _$_counterAtom, name: '${_$_counterAtom.name}_set');
  }

  final _$_TestBaseActionController = ActionController(name: '_TestBase');

  @override
  void increment() {
    final _$actionInfo = _$_TestBaseActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_TestBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = '';
    return '{$string}';
  }
}
