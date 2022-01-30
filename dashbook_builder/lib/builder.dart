library dashbook_builder;

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

class DashbookGenerator extends Generator {
//     List<String> content = [
//       // "import 'package:dashbook/dashbook.dart';",
//       // ''
//       //     'void dashbookLoader(Dashbook dashbook) {',
//     ];
  @override
  String? generate(LibraryReader library, BuildStep buildStep) {
//     return "var t = '${library.allElements.first.source.toString()}';";

//     // for (var element in library.allElements) {
//     //   if (element.source.toString().contains('.dashbook.dart') &&
//     //       element.name != null &&
//     //       element.name!.isNotEmpty) {
//     //     content.add('\t' + element.name! + '(dashbook);');
//     //   }
//     // }
//     // content.add('}\n');
//     // if (content.isNotEmpty) {
//     //   buildStep.writeAsString(
//     //       AssetId(buildStep.inputId.package, 'lib/main_dashbook.loader.dart'),
//     //       // content.join('\n')
//     //       'ok');
//     // }
//     // library.allElements.whereType<TopLevelVariableElement>().forEach((element) {
//     //   buffer.writeln('/*');
//     //   buffer.writeln(element.toString());
//     //   buffer.writeln('*/');
//     //   buffer.writeln(
//     //       '// ${element.name} - ${element.kind.displayName} - ${element.declaration}');
//     // });
  }
}

Builder dashbookBuilder(BuilderOptions options) {
  var builder = LibraryBuilder(
    DashbookGenerator(),
    generatedExtension: '.loader.dart',
  );

  return builder;
}
