import 'package:flutter/material.dart';
const orange = Color.fromARGB(255, 255, 172, 47);

//   TextField nhapText(String text, IconData icon,bool ispassword,TextEditingController controller)
// {
//   return TextField(
//     controller: controller,
//                obscureText: ispassword,
//              //  enableSuggestions: !ispassword,
//               // autocorrect: !ispassword,
//                keyboardType: ispassword ? TextInputType.visiblePassword:TextInputType.emailAddress,
//                 decoration: InputDecoration(
//                   prefixIcon: Icon(
//                   icon,
//                    color: Colors.black,
//                   ),
//                   labelText: text,
//                   labelStyle: TextStyle(color: Colors.orange.withOpacity(0.7),fontWeight: FontWeight.bold,fontSize: 16),
//                   filled: true,
//                   fillColor: Colors.white,
//                  // floatingLabelBehavior:FloatingLabelBehavior.never,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                     borderSide: BorderSide(width: 1,color: Colors.orange)
//                   )
//                 ),             
//               );
// }