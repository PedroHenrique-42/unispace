import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unispace/core/constants/app_colors.dart';
import 'package:unispace/features/register/external/mock_data/mock_data.dart';
import 'package:unispace/shared/components/app_bar_widget.dart';
import 'package:unispace/shared/components/app_drawer.dart';

class ListRegistersPage extends StatefulWidget {
  const ListRegistersPage({super.key});

  @override
  State<ListRegistersPage> createState() => _ListRegistersPageState();
}

class _ListRegistersPageState extends State<ListRegistersPage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var screenSize = MediaQuery.of(context).size;
    var registersList = MockData.listRegister;

    return Scaffold(
      endDrawer: const AppDrawer(),
      appBar: const AppBarWidget(),
      body: registersList.isEmpty
          ? Center(
              child: Text(
                "Não há nenhum registro",
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: AppColors.primaryWhite,
                ),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.only(top: 10),
              itemCount: registersList.length,
              itemBuilder: (context, index) {
                var register = registersList[index];

                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenSize.width < 1000 ? 10.w : 30.w),
                  child: Card(
                    child: ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            register.name,
                            style: theme.textTheme.labelMedium,
                          ),
                          Text(
                            register.phone,
                            style: theme.textTheme.labelMedium,
                          ),
                          Text(
                            register.spaceSize.text,
                            style: theme.textTheme.labelMedium,
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            MockData.deleteRegister(register);
                          });
                        },
                        icon: const Icon(Icons.delete, color: Colors.red),
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
