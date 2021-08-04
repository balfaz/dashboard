import 'package:admin_dashboard/providers/login_form_provider.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/ui/buttons/custom_outlined_button.dart';
import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:admin_dashboard/ui/inputs/custom_inputs.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => LoginFormProvider(),
        child: Builder(builder: (context) {
          final loginFormProvider =
              Provider.of<LoginFormProvider>(context, listen: false);
          return Container(
            color: Colors.black,
            margin: EdgeInsets.only(top: 100),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 370),
                child: Form(
                    autovalidateMode: AutovalidateMode.always,
                    key: loginFormProvider.formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          onChanged: (value) => loginFormProvider.email = value,
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
                          onChanged: (value) => loginFormProvider.password,
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
                            loginFormProvider.validateForm();
                          },
                          text: 'Ingresar',
                          isFilled: true,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        LinkText(
                          text: 'Nuovo Account',
                          onPressed: () {
                            Navigator.pushNamed(
                                context, Flurorouter.registerRoute);
                          },
                        )
                      ],
                    )),
              ),
            ),
          );
        }));
  }
}
