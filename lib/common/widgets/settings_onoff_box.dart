import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:allah_wala_biryani_app/services/themes/theme_provider.dart';

class SettingOnOffBox extends StatelessWidget {
  final IconData lightIcon;
  final IconData darkIcon;
  final String text;

  const SettingOnOffBox({
    Key? key,
    required this.lightIcon,
    required this.darkIcon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(6),
                child: Icon(
                  themeProvider.isDarkMode ? darkIcon : lightIcon,
                  size: 22,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 10), // Thora sa space left icon ke baad
              Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              ),
            ],
          ),
          Transform.scale(
            scale: 0.9,
            child: CupertinoSwitch(
              value: themeProvider.isDarkMode,
              onChanged: (value) => themeProvider.toggleTheme(),
              thumbColor: Theme.of(context).colorScheme.secondary,
              // onLabelColor: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
