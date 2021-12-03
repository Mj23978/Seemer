import 'package:flutter/material.dart';

typedef ValueBuilderFn<T> = Widget Function(BuildContext context, T? value);

abstract class InitBuilder<T> extends StatefulWidget {
  final ValueBuilderFn<T> builder;
  final ValueSetter<T>? disposer;
  final Function(InitBuilder<T> other)? shouldInit;

  factory InitBuilder({
    Key? key,
    required ValueBuilderFn<T> builder,
    required ValueGetter<T> getter,
    ValueSetter<T>? disposer,
  }) =>
      _GetterInitBuilder<T>(
        key: key,
        builder: builder,
        getter: getter,
        disposer: disposer,
      );

  const InitBuilder.base({
    Key? key,
    required this.builder,
    this.disposer,
    this.shouldInit,
  }) : super(key: key);

  static InitBuilder<T> arg1<T, A>({
    Key? key,
    required ValueBuilderFn<T> builder,
    required A arg,
    required T Function(A) getter,
    ValueSetter<T>? disposer,
  }) =>
      _ArgInitBuilder<T, A>(
        key: key,
        builder: builder,
        arg: arg,
        getter: getter,
        disposer: disposer,
      );

    static InitBuilder<T> arg2<T, A1, A2>({
    Key? key,
    required ValueBuilderFn<T> builder,
    required A1 arg1,
    required A2 arg2,
    required T Function(A1, A2) getter,
    ValueSetter<T>? disposer,
  }) =>
      _Arg2InitBuilder<T, A1, A2>(
        key: key,
        builder: builder,
        arg1: arg1,
        arg2: arg2,
        getter: getter,
        disposer: disposer,
      );

  T initValue();

  bool _shouldInit(covariant InitBuilder<T> other) => shouldInit != null ? shouldInit!(other) : false;

  @override
  _InitBuilderState<T> createState() => _InitBuilderState<T>();
}

class _GetterInitBuilder<T> extends InitBuilder<T> {
  final ValueGetter<T> getter;

  const _GetterInitBuilder({
    Key? key,
    required ValueBuilderFn<T> builder,
    required this.getter,
    ValueSetter<T>? disposer,
  }) : super.base(key: key, builder: builder, disposer: disposer);

  @override
  T initValue() => getter();

  @override
  bool _shouldInit(_GetterInitBuilder<T> other) => getter != other.getter;
}

class _ArgInitBuilder<T, A> extends InitBuilder<T> {
  final A arg;
  final T Function(A) getter;

  const _ArgInitBuilder({
    Key? key,
    required ValueBuilderFn<T> builder,
    required this.arg,
    required this.getter,
    ValueSetter<T>? disposer,
  }) : super.base(key: key, builder: builder, disposer: disposer);

  @override
  T initValue() => getter(arg);

  @override
  bool _shouldInit(_ArgInitBuilder<T, A> other) =>
      arg != other.arg || getter != other.getter;
}

class _Arg2InitBuilder<T, A1, A2> extends InitBuilder<T> {
  final A1 arg1;
  final A2 arg2;
  final T Function(A1, A2) getter;

  const _Arg2InitBuilder({
    Key? key,
    required ValueBuilderFn<T> builder,
    required this.arg1,
    required this.arg2,
    required this.getter,
    ValueSetter<T>? disposer,
  }) : super.base(key: key, builder: builder, disposer: disposer);

  @override
  T initValue() => getter(arg1, arg2);

  @override
  bool _shouldInit(_Arg2InitBuilder<T, A1, A2> other) =>
      arg1 != other.arg1 || arg2 != other.arg2 || getter != other.getter;
}

class _InitBuilderState<T> extends State<InitBuilder<T>> {
  T? value;

  @override
  void initState() {
    super.initState();
    value = widget.initValue();
  }

  @override
  void didUpdateWidget(InitBuilder<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget._shouldInit(oldWidget)) {
      value = widget.initValue();
    }
  }

  @override
  Widget build(BuildContext context) => widget.builder(context, value);

  @override
  void dispose() {
    if (widget.disposer != null) {
      widget.disposer!(value as T);
    }
    super.dispose();
  }
}
