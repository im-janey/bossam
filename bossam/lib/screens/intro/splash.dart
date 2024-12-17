import 'package:flutter/material.dart';

import 'login.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late final PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) => setState(() => _currentPage = index),
            children: [
              SplashContent(
                imagePath: 'assets/logo.png',
                mainText: 'JeMe-ZeMi',
                subText: 'Jesus & Me, #Zero Mission',
                colorScheme: colorScheme,
              ),
              SplashContent(
                imagePath: 'assets/logo.png',
                mainText: '시작해볼까요?',
                subText: '당신의 미션트립에 함께할게요',
                colorScheme: colorScheme,
              ),
            ],
          ),
          _buildPageIndicator(),
          if (_currentPage == 1)
            Positioned(
              bottom: 150,
              child: StartButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                text: '좋아요 🦋',
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildPageIndicator() {
    return Positioned(
      bottom: 50,
      child: PageIndicator(
        pageCount: 2,
        currentPage: _currentPage,
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  final String imagePath;
  final String mainText;
  final String subText;
  final ColorScheme colorScheme;

  const SplashContent({
    super.key,
    required this.imagePath,
    required this.mainText,
    required this.subText,
    required this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, height: 200),
        const SizedBox(height: 40),
        Text(
          mainText,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
        ),
        const SizedBox(height: 15),
        Text(
          subText,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: colorScheme.onSurface,
              ),
        ),
      ],
    );
  }
}

class PageIndicator extends StatelessWidget {
  final int pageCount;
  final int currentPage;

  const PageIndicator({
    super.key,
    required this.pageCount,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final activeColor = colorScheme.primary;
    final inactiveColor = colorScheme.onSurfaceVariant;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        pageCount,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == currentPage ? activeColor : inactiveColor,
          ),
        ),
      ),
    );
  }
}

class StartButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const StartButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
        textStyle: Theme.of(context).textTheme.titleMedium,
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
