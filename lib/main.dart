
import './bootstrap/loader.dart';

void main() {
  runApp(MyApp());
}
final key = new GlobalKey<PDFViewState>();
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'قصة التتار',
      theme: themeDate,
      home: Book(),
    );
  }
}