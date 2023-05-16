// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DashboardController on DashboardControllerBase, Store {
  late final _$marvelProductsAtom =
      Atom(name: 'DashboardControllerBase.marvelProducts', context: context);

  @override
  List<Marvel> get marvelProducts {
    _$marvelProductsAtom.reportRead();
    return super.marvelProducts;
  }

  @override
  set marvelProducts(List<Marvel> value) {
    _$marvelProductsAtom.reportWrite(value, super.marvelProducts, () {
      super.marvelProducts = value;
    });
  }

  late final _$listMarvelProductsAsyncAction = AsyncAction(
      'DashboardControllerBase.listMarvelProducts',
      context: context);

  @override
  Future<void> listMarvelProducts() {
    return _$listMarvelProductsAsyncAction
        .run(() => super.listMarvelProducts());
  }

  @override
  String toString() {
    return '''
marvelProducts: ${marvelProducts}
    ''';
  }
}
