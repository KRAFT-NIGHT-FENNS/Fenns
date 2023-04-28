import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AmbulancePage extends StatelessWidget {
  const AmbulancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency Services'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Call 911'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _alertAmbulance(context),
              child: const Text('Alert Ambulance'),
            ),
          ],
        ),
      ),
    );
  }

  void _alertAmbulance(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert Ambulance'),
          content: const Text('Are you sure you want to alert the ambulance?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () => launch('tel://911'),
              child: const Text('Yes, alert ambulance'),
            ),
          ],
        );
      },
    );
  }
}
