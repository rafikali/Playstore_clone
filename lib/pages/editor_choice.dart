import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Editorchoice extends StatefulWidget {
  static const String routeName = '/blankpage';
   dynamic route;
  final IconData? leadingicon;
  final String title;
  final IconData? trailingicon;

   Editorchoice({required this.route, required this.title,  this.leadingicon,  required this.trailingicon}) : super();

  @override
  State<Editorchoice> createState() => _EditorchoiceState();
}

class _EditorchoiceState extends State<Editorchoice> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
         Navigator.pushNamed(context, widget.route);
         },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Expanded(child: Icon(widget.leadingicon), flex: 1,),
                  SizedBox(width: 10,),
                  Expanded(child: Text(widget.title,
                          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
               color: Colors.black87
    ),),
                  flex: 4,),
                 Expanded(child: Icon(widget.trailingicon),),
    ],
    ),
    );
  }
}
