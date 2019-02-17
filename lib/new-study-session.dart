// File to implement the functionality and widgets for creation of a new study session

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class NewStudySessionState extends State<NewStudySession> {

  final List<String> listOfClasses = <String>['2AA4',
      '2GA3', '2FA3', '2XB3', '2CO3'];
  final TextStyle _courseFont = const TextStyle(fontSize: 18.0);
  final TextStyle _instructionFont = const TextStyle(fontSize: 14.0);
  final TextStyle _infoFont = const TextStyle(fontSize: 16.0);
  final Set<String> classesToInclude = new Set<String>();

  Widget build(BuildContext context){
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
            centerTitle: true,
            title: Text('Create A New Study Session', style: _instructionFont)
        ),
        body: Column(
          children: <Widget>[
            Text('Pick the classes you want to have '
                ' the study session for!', style: _instructionFont),
            Container(
              margin: const EdgeInsets.all(10.0),
              height: 200.0,
              child: _buildClasses()
            ),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Please enter a title for your study sessions'
              )
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text('Pick your starting time.', style: _instructionFont)
                ),
                Expanded(
                  child: IconButton(icon: const Icon(Icons.timer),
                      onPressed: (){
                        DatePicker.showDateTimePicker(context,
                            showTitleActions: true,
                            onChanged: (date) {
                              print('change $date');
                            }, onConfirm: (date) {
                              print('confirm $date');
                            }, currentTime: DateTime.now(), locale: LocaleType.en);
                      }),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Text('Pick your ending time.', style: _instructionFont)
                ),
                Expanded(
                  child: IconButton(icon: const Icon(Icons.timer),
                      onPressed: (){
                        DatePicker.showDateTimePicker(context,
                            showTitleActions: true,
                            onChanged: (date) {
                              print('change $date');
                            }, onConfirm: (date) {
                              print('confirm $date');
                            }, currentTime: DateTime.now(), locale: LocaleType.en);
                      }),
                )
              ],
            ),
            TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter the name of your building'
                )
            ),
            TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter in additional details of what you '
                        'are studying including location within the building, '
                        'what is being studied/worked on, etc.'
                )
            ),
            RaisedButton(
                onPressed: null,
                child: Text('Create', style: TextStyle(fontSize: 18, color: Colors.blue))
            )
          ],
        )
    );
  }

  Widget _buildClasses(){
    return new ListView.separated(
      padding: const EdgeInsets.all(25),
        itemCount: listOfClasses.length,
        separatorBuilder: (context, index) => Divider(
          height: 0.0,
          color: Colors.white70,
        ),
      itemBuilder: (BuildContext _context, int index){
        if (index < listOfClasses.length){
          return _buildClass(listOfClasses[index]);
        }
      }
    );
  }

  Widget _buildClass(String classes){
    final bool alreadyChecked = classesToInclude.contains(classes);
    return ListTile(
      title: Center(
        child: Text(
          classes,
          style: _courseFont,
        )
      ),
      trailing: new Icon(
          alreadyChecked ? Icons.check_box : Icons.check_box_outline_blank,
      ),
      onTap: (){
        setState((){
          if (alreadyChecked){
            classesToInclude.remove(classes);
          } else {
            classesToInclude.add(classes);
          }
        });
      }
    );
  }

  void postRequest(){

  }

}

class NewStudySession extends StatefulWidget{
  @override
  NewStudySessionState createState() => new NewStudySessionState();
}

