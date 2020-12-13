import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yvo/screens/serviceCenter.dart';
import 'package:yvo/main.dart';

class ServiceCenterCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final String image =
      'https://media.wired.com/photos/5a7125220c9d8e37e36cae05/master/w_2400,c_limit/W-Icon-TopArt.jpg';

  ServiceCenterCard({
    @required this.colour,
    this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/serviceCenter');
      },
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 40.0,
                backgroundImage: NetworkImage(image),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Ashu service center',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      )),
                  Text('Rs. 300/service',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      )),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 40,
                height: 20,
                color: Colors.green,
                child: Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.star,
                      color: Colors.white,
                      size: 10,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('4.2',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}
