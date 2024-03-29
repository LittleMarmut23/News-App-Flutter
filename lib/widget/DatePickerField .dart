import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TanggalLahir extends StatefulWidget {
  const TanggalLahir({super.key});

  @override
  State<TanggalLahir> createState() => _TanggalLahirState();
}

class _TanggalLahirState extends State<TanggalLahir> {
  TextEditingController dateInput = TextEditingController();
  String ageText = '';

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  void calculateAge(DateTime selectedDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - selectedDate.year;
    if (currentDate.month < selectedDate.month ||
        (currentDate.month == selectedDate.month &&
            currentDate.day < selectedDate.day)) {
      age--;
    }
    setState(() {
      ageText = 'Umur Anda sekarang: $age tahun';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.width / 3,
      child: Column(
        children: [
          TextField(
            controller: dateInput,

            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              hintText: "Tanggal Lahir",
            ),
            readOnly: true,
            //set it true, so that user will not able to edit text
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1950),
                //DateTime.now() - not to allow to choose before today.
                lastDate: DateTime(2100),
              );

              if (pickedDate != null) {
                print(
                    pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                String formattedDate =
                    DateFormat('dd-MM-yyyy').format(pickedDate);
                print(
                    formattedDate); //formatted date output using intl package =>  2021-03-16
                setState(() {
                  dateInput.text =
                      formattedDate; //set output date to TextField value.
                  calculateAge(pickedDate);
                });
              } else {}
            },
          ),
          SizedBox(height: 2),
          Align(alignment: Alignment.centerLeft, child: Text(ageText)),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
