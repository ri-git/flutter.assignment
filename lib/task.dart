import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_try/flip_book_painter.dart';

class Task{

  final String taskname, subtask, tasktime;
  final Paint sign;

  final Color status;

  Task(this.taskname, this.subtask, this.tasktime, this.status, this.sign);
}
