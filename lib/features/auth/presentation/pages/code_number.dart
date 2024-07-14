import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_client/features/auth/presentation/manger/cubit_code/auth_code_cubit.dart';
import 'package:yalla_client/features/auth/presentation/manger/cubit_phone/auth_phone_cubit.dart';
import 'package:yalla_client/features/auth/presentation/widgets/elevated_button_background_color.dart';
import 'package:yalla_client/features/auth/presentation/widgets/text_filed.dart';

class CodeNumber extends StatefulWidget {
  const CodeNumber({super.key});

  @override
  State<CodeNumber> createState() => _CodeNumberState();
}

class _CodeNumberState extends State<CodeNumber> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCodeCubit, AuthCodeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Image.asset(
              'assets/image/yalla.png',
              height: 60,
            ),
            centerTitle: true,
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: Image.asset('assets/image/code_number.png')),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'يرجي ادخال رمز التحقق  المرسل الي',
                    style: TextStyle(fontSize: 20, fontFamily: 'Cairo'),
                  ),
                  const SizedBox(height: 10),
                  BlocBuilder<AuthPhoneCubit, AuthPhoneState>(
                    builder: (context, state) {
                      return Text(
                        BlocProvider.of<AuthPhoneCubit>(context)
                            .textEditingController
                            .text,
                        style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'Cairo',
                            color: Color.fromRGBO(7, 41, 139, 1)),
                      );
                    },
                  ),
                  TextFormmFiled(
                    hintText: '',
                    controller: BlocProvider.of<AuthCodeCubit>(context)
                        .textEditingController,
                  ),
                  const SizedBox(height: 25),
                  ElevatedButtonBackgroundColor(
                    text: "تأكيد",
                    onPressed: () {
                      print('hello');
                      BlocProvider.of<AuthCodeCubit>(context).fetchFutrueCode();
                    },
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'إعادة إرسال ',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Cairo',
                            color: Color.fromRGBO(7, 41, 139, 1)),
                      ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
