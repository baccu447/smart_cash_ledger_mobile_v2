import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../core/theme/app_theme.dart';

class AdmobBannerPlaceholder extends StatelessWidget {
  const AdmobBannerPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xFF14141E),
        border: Border.all(color: AppTheme.goldAccent.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: const Text(
        'AdMob Native / Banner Placeholder',
        style: TextStyle(color: Colors.white54, fontStyle: FontStyle.italic),
      ),
    );
  }
}

class InterstitialAdPlaceholder {
  static Future<void> show() async {
    // Placeholder logic for Interstitial ad
    print('Showing Interstitial Ad...');
  }
}