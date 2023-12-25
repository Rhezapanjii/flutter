import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EditRekeningScreen extends StatefulWidget {
  const EditRekeningScreen({Key? key}) : super(key: key);

  @override
  State<EditRekeningScreen> createState() => _EditRekeningScreenState();
}

class _EditRekeningScreenState extends State<EditRekeningScreen> {
  late TextEditingController rekeninglamaController;
  late TextEditingController rekeningbaruController;

  String? _errorText;
  bool _btnactive = false;

  @override
  void initState() {
    super.initState();
    rekeningbaruController = TextEditingController(
      text: '22222',
    );
    rekeninglamaController = TextEditingController(text: '');

    rekeninglamaController.addListener(() {
      _checkInput();
    });

    rekeningbaruController.addListener(() {
      _checkInput();
    });
  }

  void _checkInput() {
    if (rekeninglamaController.text.isEmpty &&
        rekeningbaruController.text.isEmpty) {
      setState(() {
        _errorText = 'Input has Error';
      });
    } else {
      setState(() {
        _errorText = null;
      });
    }
    _btnactive = rekeninglamaController.text.isNotEmpty;
  }

  @override
  void dispose() {
    rekeninglamaController.dispose();
    rekeningbaruController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF005466),
        title: Text(
          'Ubah Rekening ',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            TextFormField(
              controller: rekeninglamaController,
              decoration: InputDecoration(
                labelText: 'Rekening Lama',
                filled: true,
                fillColor: Colors.grey[200],
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: rekeningbaruController,
              decoration: InputDecoration(
                labelText: 'Rekening Baru',
                filled: true,
                fillColor: Colors.grey[200],
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      titlePadding: EdgeInsets.zero,
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            color: Colors.blueGrey[900],
                            padding: EdgeInsets.all(16),
                            child: Center(
                              child: Text(
                                'Ubah Data Berhasil',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 48,
                          ),
                          SizedBox(height: 3),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Center(
                              child: Text(
                                'Data Berhasil Diperbarui',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF005466),
                onPrimary: Color(0xFFF8F8F8),
              ),
              child: Text(
                'Simpan',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
