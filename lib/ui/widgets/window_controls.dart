import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import '../app_theme.dart';

class WindowControls extends StatelessWidget {
  const WindowControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _ControlButton(
          icon: Icons.remove,
          onTap: () => windowManager.minimize(),
        ),
        _ControlButton(
          icon: Icons.crop_square,
          onTap: () async {
            if (await windowManager.isMaximized()) {
              await windowManager.unmaximize();
            } else {
              await windowManager.maximize();
            }
          },
        ),
        _ControlButton(
          icon: Icons.close,
          onTap: () => windowManager.close(),
          isClose: true,
        ),
      ],
    );
  }
}

class _ControlButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback onTap;
  final bool isClose;

  const _ControlButton({
    required this.icon,
    required this.onTap,
    this.isClose = false,
  });

  @override
  State<_ControlButton> createState() => _ControlButtonState();
}

class _ControlButtonState extends State<_ControlButton> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    final isDark = AppTheme.isDark(context);
    final iconColor = AppTheme.textPrimary(context);

    final bgColor = _hovering
        ? (widget.isClose
        ? Colors.red
        : (isDark
        ? Colors.white.withValues(alpha: 0.15)
        : Colors.black.withValues(alpha: 0.08)))
        : Colors.transparent;

    final effectiveIconColor =
    _hovering && widget.isClose ? Colors.white : iconColor;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          width: 46,
          height: 46,
          color: bgColor,
          child: Icon(
            widget.icon,
            color: effectiveIconColor,
            size: 16,
          ),
        ),
      ),
    );
  }
}