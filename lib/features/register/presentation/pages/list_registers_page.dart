import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:unispace/features/register/external/mock_data/mock_data.dart';

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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de espaços alugados'),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 10),
        itemCount: MockData.listRegister.length,
        itemBuilder: (context, index) {
          var register = MockData.listRegister[index];

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
