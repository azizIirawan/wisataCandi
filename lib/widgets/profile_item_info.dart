import 'package:flutter/material.dart';

class ProfileItemInfo  extends StatelessWidget{
  const ProfileItemInfo (
    {super.key,
  

    )};
    final IconData icon;
    final String label;
    final String value;
    final bool showEditicon ;
    final VoidCallback? onEditingPressed;
    final Color iconColor;
@override
Widget build(BuildContext context){
  return Row (
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width /3,
        child: Row(
          children: [
            Icon(icon, color: iconColor,),
            const SizedBox(
              width: 8,
            ),
            Text(
              label,
              style: 
              const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      Expanded(
        child: Text(
          ': $value',
          style: const TextStyle(fontSize: 18),
          ),
          ),
          if (showEditicon)
          InkWell(
            onTap: onEditingPressed,
            child: ,
          )
    ],
  )
}





}