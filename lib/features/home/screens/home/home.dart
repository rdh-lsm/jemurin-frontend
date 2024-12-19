import 'dart:convert'; // Untuk JSON decoding
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Variabel untuk menyimpan data
  String statusJemuran = "Loading...";
  String statusCuaca = "Loading...";
  String lokasi = "Loading..."; // Variable to store location
  double suhuUdara = 0.0; // Changed to double to store decimal values
  int kelembaban = 0;
  String kontrol = "Loading...";

  // Fungsi untuk mengambil data dari API
  Future<void> fetchData() async {
    final url = Uri.parse('http://localhost/jemuran-otomatis/beken/fetch/fetch.php');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          statusJemuran = data['status_jemuran'] ?? "N/A";
          statusCuaca = data['status_cuaca'] ?? "N/A";
          suhuUdara = data['suhu_udara'] != null ? data['suhu_udara'].toDouble() : 0.0; // Handle decimal values
          kelembaban = data['kelembaban'] ?? 0;
          kontrol = data['kontrol'] ?? "N/A";
          lokasi = data['lokasi'] ?? "N/A"; // Set the location
        });
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      setState(() {
        statusJemuran = "Error";
        statusCuaca = "Error";
        suhuUdara = 0.0;
        kelembaban = 0;
        kontrol = "Error";
        lokasi = "Error"; // Error handling for location
      });
      print('Error fetching data: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData(); // Panggil fetchData saat widget dimulai
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 18, 18),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Status Jemuran
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 43, 43, 43),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Status Jemuran:",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              statusJemuran,
                              style: TextStyle(
                                fontSize: 16,
                                color: statusJemuran == "tertutup" ? Colors.red : Colors.green,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.dry_cleaning,
                          size: 48,
                          color: Colors.purple,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Perkiraan Cuaca
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 43, 43, 43),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Perkiraan Cuaca:",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              statusCuaca,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.cloud,
                          size: 48,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Lokasi Container (separate from Perkiraan Cuaca)
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 43, 43, 43),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Lokasi:",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          lokasi,  // Displaying the location here
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Suhu Udara dan Kelembapan
                  Row(
                    children: [
                      // Suhu Udara
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 43, 43, 43),
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              const Text(
                                "Suhu Udara",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "$suhuUdara°C",  // Handle decimal value correctly
                                style: const TextStyle(fontSize: 24, color: Colors.orange),
                              ),
                              const SizedBox(height: 8),
                              const Icon(Icons.thermostat, size: 32, color: Colors.orange),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),

                      // Kelembapan
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 43, 43, 43),
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              const Text(
                                "Kelembapan",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "$kelembaban%",  // Integer value for humidity
                                style: const TextStyle(fontSize: 24, color: Colors.blue),
                              ),
                              const SizedBox(height: 8),
                              const Icon(Icons.water_drop, size: 32, color: Colors.blue),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Kontrol Otomatis",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Switch(
                          value: kontrol == "otomatis",
                          onChanged: (bool value) {
                            setState(() {
                              kontrol = value ? "otomatis" : "manual";
                            });
                            print("Kontrol diubah ke: $kontrol");
                          },
                          activeColor: Colors.green,
                          inactiveThumbColor: Colors.grey,
                          inactiveTrackColor: Colors.grey[400],
                        ),
                      ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
