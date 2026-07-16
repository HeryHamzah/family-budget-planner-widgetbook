import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class FullScreenLoader extends StatefulWidget {

  const FullScreenLoader({
    super.key,
    required this.child,
    required this.isLoading,
  });
  final Widget child;
  final bool isLoading;

  @override
  State<FullScreenLoader> createState() => _FullScreenLoaderState();
}

class _FullScreenLoaderState extends State<FullScreenLoader> {
  OverlayEntry? _overlayEntry;
  bool _isShowing = false;

  @override
  void initState() {
    super.initState();
    if (widget.isLoading) {
      _scheduleInsert();
    }
  }

  @override
  void didUpdateWidget(covariant FullScreenLoader oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isLoading && !_isShowing) {
      _scheduleInsert();
    } else if (!widget.isLoading && _isShowing) {
      _removeOverlay();
    }
  }

  @override
  void dispose() {
    _removeOverlay();
    super.dispose();
  }

  void _scheduleInsert() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (!mounted || _isShowing) return;
      _insertOverlay();
    });
  }

  void _insertOverlay() {
    final overlayState = Overlay.of(context, rootOverlay: true);
    _overlayEntry = OverlayEntry(
      builder: (ctx) => Positioned.fill(
        child: Material(
          color: Theme.of(ctx).colorScheme.scrim.withValues(alpha: 0.5),
          child: Center(
            child: CircularProgressIndicator(
              color: Theme.of(ctx).colorScheme.primary,
            ),
          ),
        ),
      ),
    );
    _isShowing = true;
    overlayState.insert(_overlayEntry!);
  }

  void _removeOverlay() {
    if (!_isShowing) return;
    _overlayEntry?.remove();
    _overlayEntry = null;
    _isShowing = false;
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
