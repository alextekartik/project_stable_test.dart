import 'package:process_run/shell.dart';

Future main() async {
  var shell = Shell();

  await shell.run('''
# Analyze code
# Analyze code
dartanalyzer --fatal-warnings --fatal-infos .
dartfmt -n --set-exit-if-changed .

# Run tests
pub run tekartik_pubtest:pubtestdependencies.dart -p vm -j 1
''');
}
