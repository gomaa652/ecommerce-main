import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yalla_client/core/dependencies/dependency_init.dart';
import 'package:yalla_client/core/utilities/routes_navigator/app_routes.dart';
import 'package:yalla_client/core/utilities/routes_navigator/navigator.dart';
import 'package:yalla_client/features/auth/data/repositories/auth_phone_repo_impl.dart';
import 'package:yalla_client/features/auth/domain/usecases/auth_phone_use_case.dart';
import 'package:yalla_client/features/auth/presentation/manger/cubit_phone/auth_phone_cubit.dart';
import 'package:yalla_client/features/auth/presentation/pages/code_number.dart';

import '../widgets/elevated_button.dart';
import '../widgets/elevated_button_background_color.dart';
import '../widgets/text_filed.dart';

class SginIn extends StatefulWidget {
  const SginIn({super.key});

  @override
  State<SginIn> createState() => _SginInState();
}

class _SginInState extends State<SginIn> {
  String maessage = '';
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthPhoneCubit, AuthPhoneState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is AuthSucces) {
          maessage = state.authPhoneEntities.messagee.toString();
        } else if (state is AuthFailure) {
          maessage = state.errMessage.toString();
        }
        return Scaffold(
            body: SingleChildScrollView(
          child: Stack(children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Image.asset(
                    "assets/image/yalla.png",
                    width: 215,
                    height: 74,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      child: const Text(
                        'أدخل رقم الهاتف',
                        style: TextStyle(fontFamily: 'Cairo', fontSize: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormmFiled(
                  controller: BlocProvider.of<AuthPhoneCubit>(context)
                      .textEditingController,
                  hintText: 'رقم الهاتف',
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButtonBackgroundColor(
                  text: "تأكيد",
                  onPressed: () {
                    if (BlocProvider.of<AuthPhoneCubit>(context)
                                .textEditingController
                                .text
                                .length !=
                            11 ||
                        BlocProvider.of<AuthPhoneCubit>(context)
                                .textEditingController
                                .text ==
                            'qwertyuiopasdfghjklzxcvbnm') {
                      return;
                    }
                    BlocProvider.of<AuthPhoneCubit>(context)
                        .fetchFuturePoneNumper();
                    pushName(context, AppRoute.codeAuthPage);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          maessage,
                          style: const TextStyle(color: Colors.black),
                        ),
                        backgroundColor: const Color.fromARGB(255, 240, 197, 8),
                        duration: const Duration(seconds: 3),
                      ),
                    );
                  },
                ),
                ElevatedButtonn(
                  text: "سجل لاحقاً",
                ),
                // const SizedBox(height: 200),
                Container(
                  margin: const EdgeInsets.only(right: 7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'انضم اللي فريق العمل',
                        style: TextStyle(fontSize: 20, fontFamily: 'Cairo'),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: const Text('سجل كتأجر',
                                  style: TextStyle(
                                      fontFamily: 'Cairo',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17,
                                      color: Color.fromRGBO(7, 41, 139, 1)))),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'سجل كموصل',
                                style: TextStyle(
                                    fontFamily: 'Cairo',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                    color: Color.fromRGBO(7, 41, 139, 1)),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'استخدامك لهذا التطبيق يعني موافقتك علي ساسيه',
                      style: TextStyle(fontFamily: 'Cairo', fontSize: 11),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'الشروط والاستخدام',
                          style:
                              TextStyle(color: Color.fromRGBO(7, 41, 139, 1)),
                        )),
                  ],
                )
              ],
            ),
          ]),
        ));
      },
    );
  }
}
