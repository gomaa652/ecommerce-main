import 'package:flutter/material.dart';

import '../widgets/text_filed.dart';

class CodeNumber extends StatefulWidget {
  const CodeNumber({super.key});

  @override
  State<CodeNumber> createState() => _CodeNumberState();
}

class _CodeNumberState extends State<CodeNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Image.asset('assets/image/yalla.png',height: 60,),
        centerTitle: true,
        
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: Image.asset('assets/image/code_number.png')),
            const SizedBox(height: 20,),
            const Text('يرجي ادخال رمز التحقق  المرسل الي',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Cairo'
            ),),
            const SizedBox(height: 10),
            const Text('010*****88',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Cairo',
              color: Color.fromRGBO(7, 41, 139, 1)
            ),),
            // TextFormFiled(hintText: ''),
            const SizedBox(height: 25),
            TextButton(
              onPressed: () {},
               child: const Text('إعادة إرسال ',
               style: TextStyle(
                fontSize: 20,
              fontFamily: 'Cairo',
              color: Color.fromRGBO(7, 41, 139, 1)),
               ))
          ],),
        ),
      ),
    )
    ;
  }
}