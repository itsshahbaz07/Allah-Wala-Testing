import 'package:flutter/material.dart';

class MyTextBoxx extends StatefulWidget {
  final String text;
  final String sectionName;
  final void Function(String)? onSaved;

  const MyTextBoxx({
    Key? key,
    required this.text,
    required this.sectionName,
    required this.onSaved,
  }) : super(key: key);

  @override
  _MyTextBoxxState createState() => _MyTextBoxxState();
}

class _MyTextBoxxState extends State<MyTextBoxx> {
  late TextEditingController _textEditingController;
  late bool _isEditing;
  late String _tempText;

  @override
  void initState() {
    super.initState();
    _isEditing = false;
    _textEditingController = TextEditingController(text: widget.text);
    _tempText = widget.text;
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _toggleEditing() {
    setState(() {
      _isEditing = !_isEditing;
      if (!_isEditing) {
        _tempText = _textEditingController.text;
        if (widget.onSaved != null) {
          widget.onSaved!(_tempText);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.only(left: 15, bottom: 15),
      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.sectionName,
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              IconButton(
                onPressed: _toggleEditing,
                icon: Icon(
                  _isEditing ? Icons.save : Icons.edit,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
          _isEditing
              ? TextField(
            controller: _textEditingController,
            onChanged: (value) {
              _tempText = value;
            },
          )
              : Text(
            _tempText,
          ),
        ],
      ),
    );
  }
}
