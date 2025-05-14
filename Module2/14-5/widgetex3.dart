import 'package:flutter/material.dart';

class WidgetEx3 extends StatefulWidget
{
  @override
  State<WidgetEx3> createState() => _WidgetEx3State();
}

class _WidgetEx3State extends State<WidgetEx3>
{
  bool _isHappy = true;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        Text('Current Mood:', style: TextStyle(fontSize: 18)),
        Text(
          _isHappy ? '😊 Happy' : '😔 Sad',
          style: TextStyle(fontSize: 24),
        ),
        TextButton
          (
            onPressed: _toggleMood,
            child: Text('Change Mood'),
          ),
      ],
    );;
  }

  void _toggleMood()
  {
    setState(()
    {
      _isHappy = !_isHappy;
    });
  }
}
