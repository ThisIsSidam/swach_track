import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swach_track/app/router/routes.dart';

class LoginChoiceScreen extends StatelessWidget {
  const LoginChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final backgroundGradient = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xFF7B8CF7), Color(0xFF7C57D8)],
    );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: backgroundGradient),
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
            margin: EdgeInsets.all(8),
            constraints: const BoxConstraints(maxWidth: 420),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 28.0,
                  vertical: 32.0,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('🧹', style: TextStyle(fontSize: 34)),
                        SizedBox(width: 10),
                        Text(
                          'SwachTrack',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4B67D6),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Clean City, Better Tomorrow',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),

                    const SizedBox(height: 28),

                    GradientButton(
                      text: 'Login as Citizen',
                      onTap: () => context.go(AppRoute.citizenHome.path),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF6EA0FF), Color(0xFF7C57D8)],
                      ),
                    ),
                    const SizedBox(height: 16),
                    OutlinedGradientButton(
                      text: 'Login as Municipality Worker',
                      onTap: () => context.go(AppRoute.municipalityHome.path),
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      'Choose your role to continue',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Gradient gradient;

  const GradientButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: Material(
        color: Colors.transparent,
        child: Ink(
          decoration: BoxDecoration(
            gradient: gradient,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(32),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: onTap,
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OutlinedGradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const OutlinedGradientButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final borderGradient = const LinearGradient(
      colors: [Color(0xFFBFBFFF), Color(0xFFD7B3FF)],
    );

    return SizedBox(
      width: double.infinity,
      height: 54,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: borderGradient,
          ),
          padding: const EdgeInsets.all(2),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              text,
              style: const TextStyle(
                color: Color(0xFF4B4B4B),
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
