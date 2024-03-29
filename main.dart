import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Tambahkan import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz UI Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Quiz UI Flutter'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Nomor Kelompok:  35',
            ),
            const Text(
              'Mhs 1:  2201271, TALITHA FAYARINA ADHIGUNAWAN',
            ),
            const Text(
              'Mhs 2:  2202339, TIA IFANIA NUGRAHANINGTYAS',
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SoalNo1();
                  }));
                },
                child: const Text('   Jawaban No 1   '),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SoalNo2();
                  }));
                },
                child: const Text('   Jawaban No 2   '),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Jawaban no 1
class SoalNo1 extends StatefulWidget {
  @override
  SoalNo1State createState() => SoalNo1State();
}

class SoalNo1State extends State<SoalNo1> {
  DateTime? selectedDate; // Variabel untuk menyimpan tanggal yang dipilih

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 61, 102), // Warna biru
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 11, 61, 102),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0, top: 5.0),
                      child: Text(
                        'Profil',
                        style: TextStyle(
                          color: Colors.white, // Warna teks putih
                          fontSize: 24, // Ukuran teks
                          fontWeight: FontWeight.bold, // Teks menjadi tebal
                        ),
                      ),
                    )
                    // Widget lainnya disini
                  ],
                ),
              ),
              Positioned(
                top: 50,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 50,
                          offset: Offset(0, 20),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 100, // Lebar foto profil
                                height: 100, // Tinggi foto profil
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Colors.black), // Border warna hitam
                                  borderRadius:
                                      BorderRadius.circular(8), // Sudut border
                                ),
                                child: InkWell(
                                  onTap: () {
                                    // Tambahkan kode untuk menangani aksi ketika teks diklik
                                  },
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: Text(
                                          'Masukkan foto profil',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        left: 0,
                                        right: 0,
                                        child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            width:
                                                100, // Lebar kotak biru disesuaikan dengan lebar foto profil
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 4,
                                                vertical:
                                                    2), // Padding untuk teks "Ubah"
                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 11, 61, 102),
                                              borderRadius: BorderRadius.circular(
                                                  4), // Membuat sudut pada kotak "Ubah"
                                            ),
                                            child: Text(
                                              'Ubah',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 25),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nama Panjang',
                                      style: TextStyle(
                                        color: const Color.fromARGB(255, 11, 61,
                                            102), // Warna teks biru
                                        fontSize: 14,
                                        fontWeight: FontWeight
                                            .bold, // Teks menjadi bold
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      height:
                                          60, // Tinggi foto profil dan nama panjang
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors
                                                .black), // Border warna hitam
                                        borderRadius: BorderRadius.circular(
                                            8), // Sudut border
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Masukkan nama lengkap',
                                          hintStyle: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 10,
                                              horizontal:
                                                  12), // Menambahkan padding horizontal
                                          border: InputBorder.none,
                                          alignLabelWithHint: true,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              height:
                                  25), // Tambahkan jarak antara foto profil dan NIK
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'NIK',
                                      style: TextStyle(
                                        color: const Color.fromARGB(255, 11, 61,
                                            102), // Warna teks biru
                                        fontSize: 14,
                                        fontWeight: FontWeight
                                            .bold, // Teks menjadi bold
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      height: 40, // Tinggi NIK
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors
                                                .black), // Border warna hitam
                                        borderRadius: BorderRadius.circular(
                                            8), // Sudut border
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Masukkan NIK anda',
                                          hintStyle: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 10,
                                              horizontal:
                                                  12), // Menambahkan padding horizontal
                                          border: InputBorder.none,
                                          alignLabelWithHint: true,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              height:
                                  25), // Tambahkan jarak antara NIK dan Tanggal Lahir
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Tanggal Lahir',
                                      style: TextStyle(
                                        color: const Color.fromARGB(255, 11, 61,
                                            102), // Warna teks biru
                                        fontSize: 14,
                                        fontWeight: FontWeight
                                            .bold, // Teks menjadi bold
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    InkWell(
                                      onTap: () async {
                                        // Implementasi untuk menampilkan kalender
                                        final DateTime? pickedDate =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1900),
                                          lastDate: DateTime.now(),
                                        );

                                        if (pickedDate != null) {
                                          setState(() {
                                            selectedDate = pickedDate;
                                          });
                                        }
                                      },
                                      child: Container(
                                        height: 40, // Tinggi tgl lahir
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors
                                                  .black), // Border warna hitam
                                          borderRadius: BorderRadius.circular(
                                              8), // Sudut border
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              selectedDate != null
                                                  ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
                                                  : 'DD/MM/YYYY',
                                              style: TextStyle(
                                                color: selectedDate != null
                                                    ? Colors.black
                                                    : Colors.grey,
                                                fontSize: 12,
                                              ),
                                            ),
                                            Icon(Icons.calendar_today),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                  width:
                                      20), // Tambahkan jarak horizontal antara Tanggal Lahir dan Jenis Kelamin
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Gender',
                                      style: TextStyle(
                                        color: const Color.fromARGB(255, 11, 61,
                                            102), // Warna teks biru
                                        fontSize: 14,
                                        fontWeight: FontWeight
                                            .bold, // Teks menjadi bold
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      height:
                                          40, // Tinggi dropdown jenis kelamin
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors
                                                .black), // Border warna hitam
                                        borderRadius: BorderRadius.circular(
                                            8), // Sudut border
                                      ),
                                      child: DropdownButtonFormField<String>(
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal:
                                                  16), // Padding dropdown
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                8), // Sudut border dropdown
                                          ),
                                          hintText: 'Pilih Jenis Kelamin',
                                          hintStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize:
                                                12, // Ukuran hint text diperkecil
                                          ),
                                          alignLabelWithHint:
                                              true, // Tengahkan hint text
                                        ),
                                        value: null, // Nilai awal dropdown
                                        onChanged: (String? newValue) {
                                          // Fungsi yang dipanggil ketika nilai dropdown berubah
                                          // (akan diimplementasikan nanti)
                                        },
                                        items: <String>[
                                          'Laki-laki',
                                          'Perempuan',
                                        ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          },
                                        ).toList(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              height:
                                  25), // Tambahkan jarak antara Jenis Kelamin dan Email
                          Text(
                            'Email',
                            style: TextStyle(
                              color: const Color.fromARGB(
                                  255, 11, 61, 102), // Warna teks biru
                              fontSize: 14,
                              fontWeight: FontWeight.bold, // Teks menjadi bold
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            height: 40, // Tinggi email
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black), // Border warna hitam
                              borderRadius:
                                  BorderRadius.circular(8), // Sudut border
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Masukkan email anda',
                                hintStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 12,
                                    horizontal:
                                        12), // Menambahkan padding vertikal dan horizontal
                                border: InputBorder.none,
                                alignLabelWithHint: true, // Tengahkan hint text
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  25), // Tambahkan jarak antara Email dan Alamat Rumah
                          Text(
                            'Alamat',
                            style: TextStyle(
                              color: const Color.fromARGB(
                                  255, 11, 61, 102), // Warna teks biru
                              fontSize: 14,
                              fontWeight: FontWeight.bold, // Teks menjadi bold
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            height: 80, // Tinggi alamat rumah
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black), // Border warna hitam
                              borderRadius:
                                  BorderRadius.circular(8), // Sudut border
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Masukkan alamat rumah',
                                hintStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal:
                                        12), // Menambahkan padding vertikal dan horizontal
                                border: InputBorder.none,
                                alignLabelWithHint: true,
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  25), // Tambahkan jarak antara Alamat Rumah dan tombol Simpan
                          Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Container(
                                width: 100, // Menentukan lebar tombol
                                child: Text(
                                  'Simpan',
                                  textAlign:
                                      TextAlign.center, // Teks di tengah tombol
                                  style: TextStyle(
                                    color: Colors.white, // Warna teks putih
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(
                                    255, 11, 61, 102), // Warna biru
                                minimumSize: Size(200,
                                    50), // Menentukan lebar dan tinggi minimum tombol
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Jawaban no 2
class SoalNo2 extends StatelessWidget {
  const SoalNo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 250, 220, 75),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(1),
              child: Image.network(
                'https://picsum.photos/id/357/600/200',
                width: 150,
                height: 50,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Action when shopping cart icon is pressed
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 250, 220, 75),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Hai Budi Martami',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            'Tetap Jaga Kesehatan ya',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 32, top: 32, left: 60),
                      child: AspectRatio(
                        aspectRatio: 9 / 16,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://picsum.photos/id/669/200',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 230,
                left: 100,
                right: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 190, 190, 190),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Cari Pemeriksaan Kesehatan',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        isDense: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 300,
                left: 10,
                child: Text(
                  'Layanan Prodiax',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Positioned(
                top: 340,
                left: 0,
                right: 0,
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.edit,
                                      size: 48,
                                      color: Color.fromARGB(255, 247, 197, 98),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Cari dan Pesan",
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.comment,
                                      size: 48,
                                      color: Color.fromARGB(255, 247, 197, 98),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Chat dengan CS",
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.black),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.edit_note_sharp,
                                      size: 48,
                                      color: Color.fromARGB(255, 247, 197, 98),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Hasil Pemeriksaan",
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 500,
                left: MediaQuery.of(context).size.width * 0.5 -
                    150, // 150 adalah setengah dari lebar widget Container
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: 300, // Atur lebar sesuai yang diinginkan
                  height: 60, // Atur tinggi sesuai yang diinginkan
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            'Gunakan Kode Rujukan Dokter',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_circle_right,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.bookmark),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.location_on),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.phone),
            label: 'Profile',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Settings',
          ),
        ],
        backgroundColor: Colors.white,
      ),
    );
  }
}
