import 'package:flutter/material.dart';
import 'package:seccion6_componentes_flutter/widgets/widgets.dart';

class InputFormsScreen extends StatelessWidget {
  const InputFormsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': '',
      'last_name': '',
      'email': '',
      'password': '',
      'role': ''
    };

    return Scaffold(
        appBar:
            AppBar(title: const Center(child: Text('Inputs y Formularios'))),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Form(
              key: myFormKey,
              child: Column(
                children: <Widget>[
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Ingresa el Nombre de usuario',
                    helperText: 'Solo letras',
                    icon: Icons.person,
                    suffixIcon: Icons.group_add,
                    textCapitalization: TextCapitalization.words,
                    formValues: formValues,
                    formProperty: 'first_name',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Ingresa el Apellido del usuario',
                    helperText: 'Solo letras',
                    icon: Icons.person,
                    suffixIcon: Icons.group_add,
                    textCapitalization: TextCapitalization.words,
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInputField(
                    labelText: 'Email',
                    hintText: 'Ingresa el Email del usuario',
                    keyboardType: TextInputType.emailAddress,
                    icon: Icons.email,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInputField(
                    obscureText: true,
                    labelText: 'Contraseña',
                    hintText: 'Ingresa la contraseña del usuario',
                    icon: Icons.password_outlined,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(
                          value: 'SuperUser', child: Text('SuperUser')),
                      DropdownMenuItem(
                          value: 'Developer', child: Text('Developer')),
                      DropdownMenuItem(
                          value: 'Jr.Developer', child: Text('Jr.Developer')),
                    ],
                    onChanged: (value) {
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());

                        if (!myFormKey.currentState!.validate()) {
                          print('Formulario invalido');
                          return;
                        }

                        print(formValues);
                      },
                      child: const SizedBox(
                          width: double.infinity,
                          child: Center(
                              child: Text('Enviar',
                                  style: TextStyle(fontSize: 16)))))
                ],
              ),
            ),
          ),
        ));
  }
}
