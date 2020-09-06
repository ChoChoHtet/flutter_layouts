//TapBox A manage its own state
import 'package:flutter/material.dart';

class TapBoxA extends StatefulWidget{
  @override
 _TapBoxAState createState() => _TapBoxAState() ;
}
class _TapBoxAState extends State<TapBoxA>{
  bool _active= false ;
  @override
  Widget build(BuildContext context) {
    void _handleTap() {
      setState(() {
        _active = !_active;
      });
    }
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600]
        ),
        child: Center(
          child: Text(
            _active ? 'Active' : 'InActive'
          ),
        ),
      ),
    );
  }

}