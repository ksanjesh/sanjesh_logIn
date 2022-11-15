import 'package:flutter/material.dart';
import 'package:sanjesh_two/main.dart';
class Profile extends StatefulWidget {
  final String firstName ;
  final  String lastName;
  final  String phone;
  final  String password;
  final String email;
  const Profile({Key? key, required this.firstName, required this.lastName, required this.phone, required this.password, required this.email}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}


class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Container(
           height: MediaQuery.of(context).size.height * 0.4,
           width: MediaQuery.of(context).size.width,
           decoration: BoxDecoration(
               color: Colors.blueGrey,
             boxShadow: [
               BoxShadow(
                 color: Colors.grey.withOpacity(0.7),
                 spreadRadius: 3,
                 blurRadius: 10,
                 offset: Offset(0,5)
               )
             ]
           ),
           child: Padding(
             padding: const EdgeInsets.only(top: 58.0),
             child: Column(
               children: [
                 CircleAvatar(
                   radius: 70,
                   backgroundImage: AssetImage("assets/sanjesh.jpg"),
                 ),
                 SizedBox(height: 10,),
                 Text(firstName+" "+ lastName,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                 SizedBox(height: 6),
                 Text(email,style: TextStyle(fontSize: 15,color: Colors.white70),)
               ],
             ),
           ),
         ),
          SizedBox(height: 20,),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white70,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0,5)
                  )
                ]
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.person,size: 30,),
                        Text(widget.firstName+" "+widget.lastName)
                      ],
                    ),
                  ),
                  Divider(thickness: 2,),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.email,size: 30,),
                        Text(email)
                      ],
                    ),

                  ),
                  Divider(thickness: 2,),Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.phone,size: 30,),
                        Text(phoneNo)
                      ],
                    ),

                  ),
                  Divider(thickness: 2,),Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.password,size: 30,),
                        Text(password)
                      ],
                    ),

                  ),
                  Divider(thickness: 2,),Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.edit,size: 30,),
                        Text(" edit")
                      ],
                    ),

                  ),
                  Divider(thickness: 2,),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
