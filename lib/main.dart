import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sanjesh_two/Profile.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
String firstName = "";git
String lastName= "";
String phoneNo= "";
String password = "";
String email = "";
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/login.png"),
          fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 135,left: 35),
              child: Text("Welcome\nBack",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
            ),
            ListView(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.43,
                left: 35,
                right: 35,
              ),
              children: [
                TextField(
                  onChanged: (e){
                    setState(() {
                      firstName = e;
                    });
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      hintText: "first name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                      )
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  onChanged: (e){
                    setState(() {
                      lastName = e;
                    });
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      hintText: "last name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                      )
                  ),),
                SizedBox(height: 10,),
                TextField(
                  onChanged: (e){
                    setState(() {
                      phoneNo = e;
                    });
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      hintText: "phone No.",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                      )
                  ),),
                SizedBox(height: 10,),
                TextField(
                  onChanged: (e){
                    setState(() {
                      email = e;
                    });
                  },
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      hintText: "email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                      )
                  ),),
                SizedBox(height: 10,),
                TextField(
                  onChanged: (e){
                    setState(() {
                      password = e;
                    });
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      hintText: "password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                      )
                  ),
                ),
                SizedBox(height: 10,),
                Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black54,
                        ),
                            onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile(
                              firstName: firstName,
                            lastName: lastName,
                            phone: phoneNo,
                            password: password,
                            email: email,
                          )));
                            },
                        child: Text("log in")
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
