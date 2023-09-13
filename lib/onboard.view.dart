import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(28),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/bg-onboard.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/logo.png', width: 176.44),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: RichText(
                text: const TextSpan(
                    text: "Tudo sobre",
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 32.0,
                        fontWeight: FontWeight.w300,
                        height: 1.16),
                    children: [
                      TextSpan(
                          text: "filmes, séries, animes e muito mais.",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          )),
                    ]),
              ),
            ),
            const Text(
              "Fique por dentro das informações de filmes, séries, animes e muito mais.",
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 15.0,
                  height: 1.16,
                  color: Colors.white),
            ),
            const SizedBox(height: 20),
            CupertinoButton(
              padding: EdgeInsets.zero,
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 43.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(62),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff8000FF),
                      Color(0xff540BA1),
                    ],
                  ),
                ),
                child: const Text(
                  "Acessar",
                  style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              onPressed: () {},
            ),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
