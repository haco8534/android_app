import 'package:mcd_app/models/user_model.dart';
import 'package:flutter/material.dart';

Future<ColorScheme> setColor()async{
  //�f�[�^�x�[�X����擾�����F
  String colorName;
  //�߂�l�̃J���[�X�L�[��
  ColorScheme? colorScheme;
  //���[�U�[�f�[�^�̃f�[�^�x�[�X
  UserDatabaseHelper dbUserHelper = UserDatabaseHelper();
  //�f�[�^�x�[�X�S�f�[�^
  List<UserData> data;

  data = await dbUserHelper.getAllData();
  colorName = data[0].getThemeColor!;

  if(colorName == "blue"){
    colorScheme = ColorScheme.fromSeed(seedColor: Colors.blue);
  }

  return colorScheme!;//<=���null�łȂ��悤�ɂ���
}