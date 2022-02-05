import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample_project/sample_pages/ui/widgets/sample_default_page.dart';
import 'package:sample_project/sample_pages/ui/widgets/sample_list_page.dart';

class RouteMapping {
  final defaultPage =
      const MaterialPage<SampleDefaultPage>(child: SampleDefaultPage());

  Page getPage(String route, Map<String, dynamic>? args) {
    final Page p = _routes[route]?.call(args) ?? defaultPage;
    return p;
  }

  final Map<String, MaterialPage Function(Map<String, dynamic>?)> _routes =
      <String, MaterialPage Function(Map<String, dynamic>?)>{
    '/sampleListPage': (_) =>
        const MaterialPage<SampleListPage>(child: SampleListPage()),
  };
}
