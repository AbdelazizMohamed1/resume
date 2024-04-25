import 'package:flutter/material.dart';
import 'package:resume/web_view_screen.dart';

Widget info({
  required context ,
  required String name,
  required String result,
  required double width,
}) => Container(
  width: width ,
  decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(10.0)
  ),
  child: Padding(
    padding: const EdgeInsetsDirectional.only(
      start: 10.0,
      top: 10.0,
      bottom: 10.0
    ),
    child: Row(
      children: [
        Text( name ,style: Theme.of(context).textTheme.headline4),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(child: SelectableText( result , style: Theme.of(context).textTheme.headline5)),
      ],
    ),
  ),
);


Widget myHeightDiv() => const SizedBox(height: 20.0,);

Widget myWidthDiv() => const SizedBox(width: 20.0,);

Widget socialMedia({
  required String imgName,
  onTap
}) =>   InkWell(
  onTap: onTap,
  child: Container(
    width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(40),
        image: DecorationImage(image: AssetImage('images/$imgName'),fit: BoxFit.cover,)
      ),
  ),
);
