import 'dart:convert';

import 'package:flutter/material.dart';

class FeedController {
  List feeds = [];
  Future<dynamic> loadAssets(BuildContext context) async {
    String data = await DefaultAssetBundle.of(context)
        .loadString("assets/json_wakkefun.json");
    final jsonResult = jsonDecode(data);
    feeds = jsonResult;
    return jsonResult;
  }
}
