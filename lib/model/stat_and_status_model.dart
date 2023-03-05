import 'package:dusty_dust/model/stat_model.dart';
import 'package:dusty_dust/model/status_model.dart';

class StatAndStatusModel{
  final StatusModel status;
  final ItemCode itemCode;
  final StatModel stat;


  StatAndStatusModel({required this.stat,required this.status,required this.itemCode});
}