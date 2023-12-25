import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tugas_dicoding/edit%20profile.dart';
import 'package:tugas_dicoding/editrekening.dart';

class OpsiScreen extends StatefulWidget {
  const OpsiScreen({Key? key}) : super(key: key);

  @override
  State<OpsiScreen> createState() => _OpsiScreenState();
}

class _OpsiScreenState extends State<OpsiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF005466),
        title: Text(
          'Pengaturan',
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
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        children: [
          ListTile(
            tileColor: Colors.blueGrey,
            title: Text(
              'Akun',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          buildListTile('Profil Saya'),
          buildListTile('Ubah Rekening Bank'),
          buildListTile('Ubah Email'),
          buildListTile('Ubah Sandi'),
          buildListTile('Ubah PIN'),
          ListTile(
            tileColor: Colors.blueGrey,
            title: Text(
              'Pengaturan Aplikasi',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          buildListTile('Notifikasi'),
          ListTile(
            tileColor: Colors.blueGrey,
            title: Text(
              'Bantuan',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          buildListTile('Pusat Bantuan '),
          buildListTile('Tips dan Trik'),
          buildListTile('Kebijakan '),
          buildListTile('Nilai Kami'),
          buildListTile('Informasi'),
          buildListTile('Hapus Akun'),
          ListTile(
            tileColor: Colors.white,
            title: Text(
              'Logout',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  ListTile buildListTile(String title) {
    return ListTile(
      tileColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.blueGrey,
          ),
        ],
      ),
      onTap: () {
        switch (title) {
          case 'Profil Saya':
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EditProfileScreen()));
            break;
          case 'Ubah Rekening Bank':
            Example:
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EditRekeningScreen()));
            break;
          case 'Ubah Email':
            Example:
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EditProfileScreen()));
            break;

          default:
            break;
        }
      },
    );
  }
}
