import 'package:flutter/cupertino.dart';

class SampleListPage extends StatefulWidget {
  static const String path = '/sampleListPage';

  const SampleListPage({Key? key}) : super(key: key);

  @override
  _SampleListPageState createState() => _SampleListPageState();
}

class _SampleListPageState extends State<SampleListPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Row(
          children: const [
            Text('Sample Name',style: TextStyle(fontSize: 14),),
            SizedBox(width: 5,),
            Text('Sample address',style: TextStyle(fontSize: 14),),
          ],
        );
      },
      itemCount: 4,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 2,
        );
      },
    );
  }
}
