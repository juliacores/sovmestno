import 'dart:developer';

import 'package:firebase_database/ui/firebase_list.dart';
import 'package:flutter/material.dart';
import 'package:sovmestno/constants/routes.dart';
import 'package:sovmestno/constants/text.dart';
import 'package:sovmestno/domain/models/request.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/services/database_service.dart';
import 'package:sovmestno/widgets/buttons/custom_main_button.dart';

import '../../../widgets/custom_loading_indicator.dart';

class MatchingForMenti extends StatelessWidget {
  const MatchingForMenti(
      {Key? key, required this.onSavePressed, required this.user})
      : super(key: key);
  final onSavePressed;
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    RealtimeBDApi _api = RealtimeBDApi();

    return FutureBuilder(
        future: onSavePressed(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return StreamBuilder(
                stream: _api.getRequestStream((snapshot.data as Request).id),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    try {
                      final Request? _request = snapshot.data as Request?;
                      if (_request != null) {
                        if (_request.selectedMentorId == null &&
                            _request.mentorIds != null &&
                            _request.mentorIds!.isNotEmpty) {
                          WidgetsBinding.instance?.addPostFrameCallback(
                              (timeStamp) => Navigator.of(context)
                                  .pushReplacementNamed(Routes.requestRoute,
                                      arguments: _request));
                        }
                      }
                    } catch (e) {
                      log(e.toString());
                    }
                  }

                  return Row(
                    children: [
                      const CustomLoadingIndicator(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 6),
                        child: const Text('Подбираем подходящего ментора'),
                      )
                    ],
                  );
                });
          } else {
            return Row(
              children: [
                const CustomLoadingIndicator(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  child: const Text('Подбираем подходящего ментора'),
                )
              ],
            );
          }
        });
    //
    // onSavePressed().then((request) {
    //   return StreamBuilder(
    //       stream: _api.getRequestStream(request.id),
    //       builder: (context, snapshot) {
    //         if (snapshot.hasData) {
    //           try {
    //             final Request _request =
    //                 Request.fromJson(snapshot.data as Map<String, dynamic>);
    //             if (!(_request.matched ?? false) &&
    //                 _request.mentorIds != null &&
    //                 _request.mentorIds!.isNotEmpty) {
    //               WidgetsBinding.instance?.addPostFrameCallback((timeStamp) =>
    //                   Navigator.of(context).pushReplacementNamed(
    //                       Routes.requestRoute,
    //                       arguments: _request));
    //             }
    //           } catch (e) {
    //             log(e.toString());
    //           }
    //         }
    //
    //         return Row(
    //           children: [
    //             const CustomLoadingIndicator(),
    //             Container(
    //               padding:
    //                   const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
    //               child: const Text('Подбираем подходящего ментора'),
    //             )
    //           ],
    //         );
    //       });

    // if (user.connectedUsers == null || user.connectedUsers!.isEmpty) {
    //   onSavePressed().then((request) {
    //     Navigator.of(context)
    //         .pushReplacementNamed(Routes.requestRoute, arguments: request);
    //   });
    // } else {
    //   WidgetsBinding.instance!.addPostFrameCallback((timeStamp) =>
    //       Navigator.of(context).pushReplacementNamed(Routes.dashboardRoute));
    // }
    // });
  }
}
