import 'package:flutter/material.dart';
import 'package:budgetbuddy_yuni/routes/routes.dart';

import 'halaman_beranda.dart';

class DetailCashFlow extends StatefulWidget {
  const DetailCashFlow({Key? key}) : super(key: key);

  @override
  State<DetailCashFlow> createState() => _DetailCashFlowState();
}

class _DetailCashFlowState extends State<DetailCashFlow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Center(
                      child: Text(
                        'Detail Cash Flow',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, top: 30),
                      child: IconButton(
                        color: Colors.black,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                  ),
                ),
                child: ListView(
                  children: const <Widget>[
                    Card(child: ListTile(title: Text(''))),
                    Card(
                      child: ListTile(
                        title: Text('Rp.50.000.000'),
                        subtitle: Text("biaya operasional"),
                        trailing:
                            Icon(Icons.arrow_forward_sharp, color: Colors.red),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text('Rp.150.000.000'),
                        subtitle: Text("laba keuntungan"),
                        trailing:
                            Icon(Icons.arrow_forward_sharp, color: Colors.red),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text('Rp.35.000.000'),
                        subtitle: Text("harga saham"),
                        trailing:
                            Icon(Icons.arrow_forward_sharp, color: Colors.red),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text('Rp.2.000.000'),
                        subtitle: Text("biaya konsumsi"),
                        trailing:
                            Icon(Icons.arrow_back_sharp, color: Colors.green),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text('Rp.655.000'),
                        subtitle: Text("biaya internet"),
                        trailing:
                            Icon(Icons.arrow_back_sharp, color: Colors.green),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text('Rp.4.100.000'),
                        subtitle: Text("biaya sewa"),
                        trailing:
                            Icon(Icons.arrow_back_sharp, color: Colors.green),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        title: Text('Rp.2.300.000'),
                        subtitle: Text("biaya layanan"),
                        trailing:
                            Icon(Icons.arrow_back_sharp, color: Colors.green),
                      ),
                    ),
                  ],
                )
                // child: const ListTile(
                //   title: Text("Rp.12000"),
                //       subtitle: Text ("deskripsi"),
                // ),
                ),
          ],
        ),
      ),
    );
  }
}
