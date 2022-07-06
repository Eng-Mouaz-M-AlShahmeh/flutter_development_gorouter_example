/* Developed by Eng Mouaz M. AlShahmeh */
import 'package:flutter/material.dart';

OutlinedButton iOutlinedButtonNoKey(
        BuildContext context, String text, Function func) =>
    OutlinedButton(
      onPressed: () async {
        func();
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        )),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).primaryColor),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontSize: 10,
            color: Colors.white,
          ),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: Colors.white),
          ),
        ),
      ),
    );
