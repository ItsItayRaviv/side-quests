import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:url_launcher/url_launcher.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Side Quests',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // 1) Your international WhatsApp link with prefilled text
  static final Uri _waUri = Uri.parse(
    'https://wa.me/972528505054'
    '?text=${Uri.encodeComponent('היי ראיתי את האתר שלך והוא מטורף. אתה כזה חתיך ואתה נרקיסיסט בדיוק במידה הנכונה.')}',
  );

  // 2) Launch handler
  Future<void> _launchWhatsApp() async {
    if (!await launchUrl(_waUri, mode: LaunchMode.externalApplication)) {
      ScaffoldMessenger.of(navigatorKey.currentContext!)
          .showSnackBar(const SnackBar(content: Text('Could not open WhatsApp')));
    }
  }

  // Needed to show Snackbar from a stateless widget
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (_) => MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(title: const Text('Home')),
          body: const Center(child: Text('this is basically my app')),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: _launchWhatsApp,
            icon: const Icon(Icons.chat),
            label: const Text('WhatsApp me'),
          ),
        ),
      ),
    );
  }
}
