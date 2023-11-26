import 'package:flutter/material.dart';
import 'package:ui/core/constants/const.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
          title: "عنوان التسليم",
          center: true,
          color: Theme.of(context).scaffoldBackgroundColor),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const Text("يشحن الي"),
            SizedBox(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RadioListTile(
                                value: 1,
                                groupValue: 1,
                                onChanged: (value) {},
                                title: const Text(
                                  "البيت",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                secondary: const Icon(
                                  Icons.more_horiz,
                                  color: Colors.black,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: Text(
                                  "address describtion sadasdasdsa asd asdas das adsa sd",
                                  maxLines: 3,
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Text("${"0105115515"} : جوال"),
                            ]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
