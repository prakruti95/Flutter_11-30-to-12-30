import 'package:flutter/material.dart';

class MyRadioButton extends StatefulWidget
{
  const MyRadioButton({super.key});

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}
enum Gender {male,female}
class _MyRadioButtonState extends State<MyRadioButton>
{
  Gender _gender = Gender.male;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Radio Button Example"),),
        body: Center
          (
            child: Column
              (
                children: 
                [
                    RadioListTile( title: const Text('Male'),value: Gender.male, groupValue: _gender,
                        onChanged:(value)
                        {
                          setState(() {
                            _gender = value!;
                          });
                        }),
                  RadioListTile(title: const Text('Female'),value: Gender.female, groupValue: _gender,
                      onChanged:(value)
                      {
                        setState(() {
                          _gender = value!;
                        });
                      })
                  
                ],
              ),
          ),
      );
  }
}
