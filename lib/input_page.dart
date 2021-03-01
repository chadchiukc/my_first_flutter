import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80;
const Color cardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: BodyWidget(
                  color: cardColor,
                  cardChild: IconContent(
                    FontAwesomeIcons.mars,
                    'MALE',
                  ),
                )),
                Expanded(
                    child: BodyWidget(
                  color: cardColor,
                  cardChild: IconContent(
                    FontAwesomeIcons.venus,
                    'FEMALE',
                  ),
                )),
              ],
            ),
          ),
          Expanded(child: BodyWidget(color: cardColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: BodyWidget(color: cardColor)),
                Expanded(child: BodyWidget(color: cardColor)),
              ],
            ),
          ),
          Container(
            color: Color(0XFFEB1555),
            width: double.infinity,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10),
          )
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  IconContent(this.iconSelected, this.iconText);

  final iconSelected;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconSelected,
          size: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          iconText,
          style: TextStyle(
            fontSize: 18,
          ),
        )
      ],
    );
  }
}

class BodyWidget extends StatelessWidget {
  BodyWidget({@required this.color, this.cardChild});

  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      height: 200,
      width: 170,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
