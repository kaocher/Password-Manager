import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:password/helper/custom_button.dart';
import 'package:password/helper/custom_text_field.dart';
import 'package:password/model/data_model.dart';
import 'package:password/screen/home_page.dart';
class AddData extends StatefulWidget {
  const AddData({Key? key}) : super(key: key);

  @override
  _AddDataState createState() => _AddDataState();
}
int count=0;
TextEditingController _idAddController=TextEditingController();
TextEditingController _passAddController=TextEditingController();
class _AddDataState extends State<AddData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
                hintText: "Enter ID/Email",
                labelText: "ID",
                controller: _idAddController,
                obsecueVal: false,
              icon: Icons.mail_outline,

            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
                hintText: "Enter Your Password",
                labelText: "PASSWORD",
                controller: _passAddController,
                obsecueVal: false,
                icon: Icons.vpn_key_rounded,
            ),
        SizedBox(
          height: 15,
        ),
        InkWell(
          onTap: (){
            saveUserDetails();
          },

          child: CustomButton(
            height: 60,
            width: 300,
            btnText: "SAVE DATA",
            buttonColor: allColor.appColor,
          ),
        )
          ],
        ),
      ),
    );
  }
  void saveUserDetails() async {
    count++;
    FirebaseFirestore firestore1 =
        FirebaseFirestore.instance;
    DataModel dataModel = DataModel();
    dataModel.id = _idAddController.text;
    dataModel.password = _passAddController.text;

    await firestore1.collection("data")
        .doc(count.toString())
        .set(dataModel.toMap());
    Fluttertoast.showToast(msg: "Data Saved Successfully!");
  }
}
