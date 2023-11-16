import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unispace/core/constants/app_colors.dart';
import 'package:unispace/shared/components/app_bar_widget.dart';
import 'package:unispace/shared/components/app_drawer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: const AppDrawer(),
      appBar: const AppBarWidget(),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: screenSize.width < 1000 ? double.infinity : 50.w,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: Text(
                    "O principal propósito da Uni'Space é oferecer aos clientes um local seguro e conveniente para armazenar temporariamente seus pertences pessoais, como bagagens, mochilas, casacos, documentos ou itens de valor.",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: AppColors.primaryWhite,
                      shadows: <Shadow>[
                        const Shadow(
                          offset: Offset(3.5, 3.5),
                          blurRadius: 1.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  child: Text(
                    "A empresa traz um ambiente seguro e confiável para os pertences dos clientes, prioriza um serviço amigável e eficiente, garante a proteção e integridade dos itens armazenados, busca constantemente maneiras inovadoras de melhorar a experiência e os processos de armazenamento.",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: AppColors.primaryWhite,
                      shadows: <Shadow>[
                        const Shadow(
                          offset: Offset(3.5, 3.5),
                          blurRadius: 1.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
