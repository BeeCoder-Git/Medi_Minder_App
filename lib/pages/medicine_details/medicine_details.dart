import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicine_reminder/constants.dart';
import 'package:sizer/sizer.dart';

class MedicineDetails extends StatefulWidget {
  const MedicineDetails({Key? key}) : super(key: key);

  @override
  State<MedicineDetails> createState() => _MedicineDetailsState();
}

class _MedicineDetailsState extends State<MedicineDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(2.h),
        child: Column(
          children: [
            MainSection(),
            ExtendedSection(),
            Spacer(),
            SizedBox(
              width: 100.w,
              height: 7.h,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: kSecondaryColor,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {
                  // open alter dialog box,+global bloc, later
                  openAlterBox(context);
                },
                child: Text(
                  'Delete',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: kScaffoldColor,
                      ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }

  openAlterBox(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: kScaffoldColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          contentPadding: EdgeInsets.only(top: 1.h),
          title: Text(
            'Delete This Reminder?',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Cancel',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            TextButton(
              onPressed: () {
                // Global bloc to delete medicine, later
              },
              child: Text(
                'OK',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: kSecondaryColor),
              ),
            ),
          ],
        );
      },
    );
  }
}

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SvgPicture.asset(
          'assets/icons/bottle.svg',
          height: 7.h,
          color: kOtherColor,
        ),
        SizedBox(
          width: 2.w,
        ),
        Column(
          children: const [
            MainInfoTab(fieldTitle: 'Medicine Name', fieldInfo: 'Catapol'),
            MainInfoTab(fieldTitle: 'Dosage', fieldInfo: '500 mg'),
          ],
        )
      ],
    );
  }
}

class MainInfoTab extends StatelessWidget {
  const MainInfoTab(
      {Key? key, required this.fieldTitle, required this.fieldInfo})
      : super(key: key);

  final String fieldTitle;
  final String fieldInfo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40.w,
      height: 10.h,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              fieldTitle,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(
              height: 0.3.h,
            ),
            Text(
              fieldInfo,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}

class ExtendedSection extends StatelessWidget {
  const ExtendedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        ExtendedInfoTab(
          fieldTitle: 'Medicine Type',
          fieldInfo: 'Pill',
        ),
        ExtendedInfoTab(
          fieldTitle: 'Dosage Interval',
          fieldInfo: 'Every 8 hours | 3 times a day',
        ),
        ExtendedInfoTab(
          fieldTitle: 'Start Time',
          fieldInfo: '01:19',
        ),
      ],
    );
  }
}

class ExtendedInfoTab extends StatelessWidget {
  const ExtendedInfoTab(
      {Key? key, required this.fieldTitle, required this.fieldInfo})
      : super(key: key);
  final String fieldTitle;
  final String fieldInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.h),
            child: Text(
              fieldTitle,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: kTextColor,
                  ),
            ),
          ),
          Text(
            fieldInfo,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: kSecondaryColor,
                ),
          ),
        ],
      ),
    );
  }
}