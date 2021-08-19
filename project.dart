import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Project extends StatefulWidget {
  @override
  _ProjectState createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  var name="";
  var age="";
  final agecontrol = TextEditingController();
  final nameControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text=MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () { }),
        elevation:0,
        title: Text("HNG Internship Training"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top:8.0),

          child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("lib/images/final.jpg"),
          fit: BoxFit.cover
    )

          ),
            child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: height/19,
                        width: width/1.4,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.9),
                              spreadRadius: 3,
                              blurRadius: 4,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          ),
                        child: Center(child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("NAME:",style: TextStyle(fontSize: text*24,color: Colors.black),),
                            ),
                            Text(name,style: TextStyle(fontSize: text*20,color: Colors.black),),
                          ],
                        ))),
    ),
                  Container(
                      height: height/19,
                      width: width/1.4,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.9),
                            spreadRadius: 3,
                            blurRadius: 4,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("AGE:",style:TextStyle(fontSize: text*24,color: Colors.black),),
                          ),
                          Text(age,style: TextStyle(fontSize: text*20,color: Colors.black),),
                        ],
                      ))),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(50.0),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  controller: nameControl,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white, width: 3,
                      ),
                      borderRadius: BorderRadius.circular((20.0)
                      )),
                    labelText: "Enter your name",
                    labelStyle: TextStyle(
                        color: Colors.white
                    ),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  controller: agecontrol,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white, width: 3 ,
                    ),
                    borderRadius: BorderRadius.circular((20.0)
                    )),
                    labelText: "Enter your Age",
                    labelStyle: TextStyle(
                      color: Colors.white
                    ),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.go,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:90.0, right:90),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        name = nameControl.text;
                        age = agecontrol.text;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:  BorderRadius.circular(30.0),
                      ),),
                    child: Text("Result")),
              ),
              Padding(
                padding: const EdgeInsets.only(top:120.0),
                child: Center(
                  child: InkWell(
                      child:  Text('Official Website',style: TextStyle(fontSize: text*25, color: Colors.white),),
                      onTap: () => launch('https://hng.tech')
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
