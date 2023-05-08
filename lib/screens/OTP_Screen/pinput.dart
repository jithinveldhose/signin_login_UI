import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PinPut extends StatelessWidget {
  const PinPut({super.key});
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 68,
          width: 64,
          child: TextFormField(
            onChanged: (value) {
              if(value.length==1){
                FocusScope.of(context).nextFocus();
              }
            },
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: 68,
          width: 64,
          child: TextFormField(
            onChanged: (value) {
              if(value.length==1){
                FocusScope.of(context).nextFocus();
              }
            },
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: 68,
          width: 64,
          child: TextFormField(onChanged: (value) {
              if(value.length==1){
                FocusScope.of(context).nextFocus();
              }
            },
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          height: 68,
          width: 64,
          child: TextFormField(
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        )
      ],
    ));
  }
}
