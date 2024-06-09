import 'package:flutter/material.dart';

/*
 * @Author: PengChaoQun 1152684231@qq.com
 * @Date: 2024-06-09 15:28:23
 * @LastEditors: PengChaoQun 1152684231@qq.com
 * @LastEditTime: 2024-06-09 16:47:23
 * @FilePath: /pcq_flutter_app/lib/pages/home_demo/tap_box_a.dart
 * @Description: 
 */

class ParentWidgetState extends StatefulWidget {
  const ParentWidgetState({super.key});

  @override
  State<ParentWidgetState> createState() => _ParentWidgetStateState();
}

class _ParentWidgetStateState extends State<ParentWidgetState> {
  bool _active = true;

  @override
  Widget build(BuildContext context) {
    return TapboxC(
      active: _active,
      onChanged: (actived) {
        setState(() {
          _active = !actived;
        });
      },
    );
  }
}

class TapboxC extends StatefulWidget {
  const TapboxC({
    super.key,
    required this.active,
    required this.onChanged,
  });

  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  State<TapboxC> createState() => _TapboxCState();
}

class _TapboxCState extends State<TapboxC> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(widget.active);
  }

  @override
  Widget build(BuildContext context) {
    // This example adds a green border on tap down.
    // On tap up, the square changes to the opposite state.
    return GestureDetector(
      onTapDown: _handleTapDown, // Handle the tap events in the order that
      onTapUp: _handleTapUp, // they occur: down, up, tap, cancel
      onTap: _handleTap,
      onTapCancel: _handleTapCancel,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
          border: _highlight
              ? Border.all(
                  color: Colors.teal[700]!,
                  width: 10,
                )
              : null,
        ),
        child: Center(
          child: Text(widget.active ? 'Active' : 'Inactive',
              style: const TextStyle(fontSize: 32, color: Colors.white)),
        ),
      ),
    );
  }
}

class TapboxB extends StatelessWidget {
  const TapboxB({
    super.key,
    required this.actived,
    required this.onChanged,
  });

  final bool actived;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(actived);
      },
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(color: actived ? Colors.green : Colors.grey),
        child: Center(
          child: Text(
            actived ? "Actived 12" : "Inactive 12",
            style: const TextStyle(color: Colors.white, fontSize: 32),
          ),
        ),
      ),
    );
  }
}

class TapboxA extends StatefulWidget {
  const TapboxA({super.key});

  @override
  State<TapboxA> createState() => _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
  bool _actived = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _actived = !_actived;
        });
      },
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(color: _actived ? Colors.green : Colors.grey),
        child: Center(
          child: Text(
            _actived ? "Actived" : "Inactive",
            style: const TextStyle(color: Colors.white, fontSize: 32),
          ),
        ),
      ),
    );
  }
}
