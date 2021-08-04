import 'package:admin_dashboard/providers/register_form_provider.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/ui/buttons/custom_outlined_button.dart';
import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:admin_dashboard/ui/inputs/custom_inputs.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => RegisterFormProvider(),
        child: Builder(
          builder: (context) {
            final registerFormProvider =
                Provider.of<RegisterFormProvider>(context, listen: false);
            return Container(
              color: Colors.black,
              margin: EdgeInsets.only(top: 100),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 370),
                  child: Form(
                      autovalidateMode: AutovalidateMode.always,
                      key: registerFormProvider.formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            onChanged: (value) =>
                                registerFormProvider.nome = value,
                            validator: (value) {
                              print(value);
                              if (value == null || value.isEmpty)
                                return 'nome non puó essere vuoto';
                              return null;
                            },
                            style: TextStyle(color: Colors.white),
                            decoration: CustomInput.loginInputDecoration(
                                hint: 'Scrive nome',
                                label: 'nome',
                                icon: Icons.verified_user),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            onChanged: (value) =>
                                registerFormProvider.email = value,
                            validator: (value) {
                              if (!EmailValidator.validate(value ?? ''))
                                return 'email non valido';

                              return null;
                            },
                            style: TextStyle(color: Colors.white),
                            decoration: CustomInput.loginInputDecoration(
                                hint: 'Scrive email',
                                label: 'Email',
                                icon: Icons.email),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            onChanged: (value) =>
                                registerFormProvider.password = value,
                            validator: (value) {
                              if (value == null || value.isEmpty)
                                return 'Inserire Password';
                              if (value.length < 6)
                                return 'Password deve avere almeno 6 caratteri';

                              return null;
                            },
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: CustomInput.loginInputDecoration(
                                hint: 'Scrive password',
                                label: 'Password',
                                icon: Icons.lock),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomOutlinedButton(
                            onPressed: () {
                              registerFormProvider.validateForm();
                            },
                            text: 'Ingresar',
                            isFilled: true,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          LinkText(
                            text: 'Login',
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, Flurorouter.loginRoute);
                            },
                          )
                        ],
                      )),
                ),
              ),
            );
          },
        ));
  }
}
