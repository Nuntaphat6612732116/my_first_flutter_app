import 'package:flutter/material.dart';

class MixLayoutPage extends StatelessWidget {
  const MixLayoutPage({Key? key}) : super(key: key);

  final List<Map<String, String>> menuItems = const [
    {
      'name': 'เรอัลมาดริด',
      'image': 'assets/images/t1.png',
      'description':
          'สโมสรฟุตบอลเรอัลมาดริด เป็นสโมสรฟุตบอลในประเทศสเปน ตั้งอยู่ที่กรุงมาดริด ปัจจุบันเล่นอยู่ในลาลิกา ลีกสูงสุดของฟุตบอลสเปน'
    },
    {
      'name': 'บาร์เซโลนา',
      'image': 'assets/images/t2.png',
      'description':
          'สโมสรฟุตบอลบาร์เซโลนา เป็นสโมสรฟุตบอลอาชีพของสเปน ตั้งอยู่ที่เมืองบาร์เซโลนา แคว้นกาตาลุญญา ประเทศสเปน ปัจจุบันเล่นอยู่ในลาลิกา ลีกสูงสุดของฟุตบอลสเปน'
    },
    {
      'name': 'เชลซี',
      'image': 'assets/images/t3.png',
      'description':
          'สโมสรฟุตบอลเชลซี เป็นสโมสรฟุตบอลอาชีพที่ตั้งอยู่ในเขตฟูลัม ทางตะวันตกของกรุงลอนดอน ประเทศอังกฤษ'
    },
    {
      'name': 'แมนเชสเตอร์ซิตี้',
      'image': 'assets/images/t4.png',
      'description':
          'สโมสรฟุตบอลแมนเชสเตอร์ซิตี้เป็น สโมสร ฟุตบอล อาชีพ ที่มีฐานอยู่ในเมืองแมนเชสเตอร์ประเทศอังกฤษ ซึ่งแข่งขันในพรีเมียร์ลีกซึ่งเป็นลีกสูงสุดของฟุตบอลอังกฤษ'
    },
    {
      'name': 'แมนเชสเตอร์ยูไนเต็ด',
      'image': 'assets/images/t5.png',
      'description':
          'สโมสรฟุตบอลแมนเชสเตอร์ยูไนเต็ด เป็นสโมสรฟุตบอลตั้งอยู่ที่เขตโอลด์แทรฟฟอร์ดในเกรเทอร์แมนเชสเตอร์ ประเทศอังกฤษ ปัจจุบันแข่งขันในพรีเมียร์ลีกซึ่งเป็นลีกสูงสุดของฟุตบอลอังกฤษ'
    },
    {
      'name': 'ปารีแซ็ง แฌร์แม็ง',
      'image': 'assets/images/t6.png',
      'description':
          'สโมสรฟุตบอลปารีแซ็ง แฌร์แม็ง เป็นสโมสรฟุตบอลซึ่งตั้งอยู่ในกรุงปารีส ประเทศฝรั่งเศส ปัจจุบันเล่นอยู่ในลีกเอิง ลีกสูงสุดของฟุตบอลฝรั่งเศส'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('ทีมฟุตบอลระดับโลก'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '6 ทีมฟุตบอลระดับโลก',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 0.85,
                      ),
                      itemCount: menuItems.length,
                      itemBuilder: (context, index) {
                        final item = menuItems[index];
                        return Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                flex: 3,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(12),
                                  ),
                                  child: Image.asset(
                                    item['image']!,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: Colors.grey[300],
                                        child: const Icon(
                                          Icons.restaurant,
                                          size: 40,
                                          color: Colors.grey,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        item['name']!,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: menuItems.length,
                      itemBuilder: (context, index) {
                        final item = menuItems[index];
                        return Card(
                          margin: const EdgeInsets.only(bottom: 8),
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ListTile(
                            contentPadding: const EdgeInsets.all(8),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                item['image']!,
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    width: 60,
                                    height: 60,
                                    color: Colors.grey[300],
                                    child: const Icon(
                                      Icons.restaurant,
                                      color: Colors.grey,
                                    ),
                                  );
                                },
                              ),
                            ),
                            title: Text(
                              item['name']!,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            subtitle: Text(
                              item['description']!,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 12,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
