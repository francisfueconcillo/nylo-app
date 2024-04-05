import '/app/controllers/controller.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class MainController extends Controller {
  @override
  construct(BuildContext context) {
    super.construct(context);
  }

  onTapDocumentation() async {
    await launchUrl(Uri.parse("https://nylo.dev/docs"));
  }
}
