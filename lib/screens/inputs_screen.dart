import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(children: [
            TextFormField(
              autofocus: false,
              initialValue: '',
              textCapitalization: TextCapitalization.words,
              onChanged: (value) {
                print('Value $value');
              },
              validator: (value) {
                if (value == null) return 'Este campo es requerido';

                return value.length < 3 ? 'Mínimo de 3 letras' : null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                  hintText: 'nombre del usuario',
                  labelText: 'Nombre',
                  helperText: 'Sólo letras',
                  // suffixIcon: Icon(Icons.group_outlined),
                  prefixIcon: Icon(Icons.verified_user_outlined),
                  icon: Icon(Icons.assignment_ind_outlined),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)))),
            )
          ]),
        ),
      ),
    );
  }
}