import 'package:dev_test/package.dart';
import 'package:process_run/shell.dart';

Future main() async {
  await packageRunCi('.');
  var shell = Shell();

  await shell.run('''
# Run tests
pub run tekartik_pubtest:pubtestdependencies.dart -p vm -j 1
''');
}
