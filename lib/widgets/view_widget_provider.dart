import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewWidgetProvider<T extends ChangeNotifier> extends StatefulWidget {
  final Widget child;
  final Function(T) onModelReady;
  final T viewModel;
  ViewWidgetProvider({
    Key key,
    this.child,
    this.onModelReady,
    this.viewModel,
  }) : super(key: key);

  @override
  _ViewWidgetProviderState<T> createState() => _ViewWidgetProviderState<T>();
}

class _ViewWidgetProviderState<T extends ChangeNotifier>
    extends State<ViewWidgetProvider<T>> {
  T _model;

  @override
  void initState() {
    super.initState();
    _model = widget.viewModel;

    if (widget.onModelReady != null) {
      widget.onModelReady(_model);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _model,
      child: widget.child,
    );
  }
}
