import 'package:process_run/shell.dart';

Future main() async {
  var shell = Shell();

  await shell.run('''
# Analyze code
dartanalyzer --fatal-warnings --fatal-infos tool

# Run tests
pub run tekartik_pubtest:pubtestdependencies.dart -p vm -j 1
''');
}
