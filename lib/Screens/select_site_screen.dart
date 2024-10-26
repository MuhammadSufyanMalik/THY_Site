import 'package:flutter/material.dart';
import 'package:thy_site_select/Widgets/appbar_widget.dart';

///Site Seç ekranı
class SelectSiteScreen extends StatefulWidget {
  const SelectSiteScreen({super.key});

  @override
  State<SelectSiteScreen> createState() => _SelectSiteScreenState();
}

class _SelectSiteScreenState extends State<SelectSiteScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(title: 'Site Seç'),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05), // 5% padding from both sides
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.03), // Add spacing
            Center(
              child: Text(
                'Meydan ve Site bilgisi seçiniz.',
                style: TextStyle(
                  fontSize: size.height * 0.02, // Responsive font size
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            const Text('Meydan'),
            SizedBox(height: size.height * 0.01),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              value: 'SAW', // Default value
              items: ['SAW', 'IST', 'ESB']
                  .map((site) => DropdownMenuItem<String>(
                        value: site,
                        child: Text(site),
                      ))
                  .toList(),
              onChanged: (value) {
                // Handle logic when site changes
              },
            ),
            SizedBox(height: size.height * 0.02),
            const Text('Site'),
            SizedBox(height: size.height * 0.01),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Site',
                hintText: 'Site Seçiniz',
                border: OutlineInputBorder(),
              ),
              value: null, // No default value
              items: ['Site 1', 'Site 2', 'Site 3']
                  .map((site) => DropdownMenuItem<String>(
                        value: site,
                        child: Text(site),
                      ))
                  .toList(),
              onChanged: (value) {
                // Handle logic when site changes
              },
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: size.height * 0.07, // Responsive button height
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green, // Green background
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                ),
                onPressed: () {
                  // Handle button press
                },
                child: Text(
                  'İleri',
                  style: TextStyle(
                    fontSize: size.height * 0.02, // Responsive text size
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
          ],
        ),
      ),
    );
  }
}
