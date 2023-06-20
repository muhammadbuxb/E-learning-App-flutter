import 'package:flutter/material.dart';

class CourseModel {
  dynamic title,
      details,
      duration,
      lastdate,
      seats,
      Qualification,
      nameIstructor,
      student;

  CourseModel(
      {this.title,
      this.details,
      this.duration,
      this.lastdate,
      this.Qualification,
      this.seats,
      this.nameIstructor,
      this.student
      });

  factory CourseModel.fromJson(cData) => CourseModel(
        title: cData['title'],
        details: cData['details'],
        duration: cData['duration'],
        lastdate: cData['lastdate'],
        Qualification: cData['Qualification'],
        seats: cData['seats'],
        nameIstructor: cData['nameIstructor'],
        student: cData['student'],
      );
  Map<String, dynamic> toJson() => {
    'title':title,
    'details':details,
    'duration':duration,
    'lastdate':lastdate,
    'Qualification':Qualification,
    'seats':seats,
    'nameIstructor':nameIstructor,
    'student':student??[]
  };
}
