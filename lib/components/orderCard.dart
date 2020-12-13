import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  final String image =
      'https://media.wired.com/photos/5a7125220c9d8e37e36cae05/master/w_2400,c_limit/W-Icon-TopArt.jpg';

  OrderCard({@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
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
                  Text('Rs. 300',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      )),
//                  SizedBox(
//                    height: 10,
//                  ),
                  Text('12 JAN 2019',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      )),
                ],
              ),
              SizedBox(
                width: 10,
              ),
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
