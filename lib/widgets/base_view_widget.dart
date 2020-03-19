import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class BaseViewWidget<T> extends Widget {
  @protected
  Widget build(BuildContext context, T model);

  @override
  DataProviderElement<T> createElement() => DataProviderElement<T>(this);
}

class DataProviderElement<T> extends ComponentElement {
  DataProviderElement(BaseViewWidget widget) : super(widget);

  @override
  BaseViewWidget get widget => super.widget;

  @override
  Widget build() => widget.build(this, Provider.of<T>(this));

  @override
  void update(BaseViewWidget newWidget) {
    super.update(newWidget);
    assert(widget == newWidget);
    rebuild();
  }
}
