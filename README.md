# Native iOS Module in React Native using Swift



English:


The idea of ​​creating the module is quite similar to writing in Objective-C, but of course with an important way of syntax and one detail, it will be necessary to include @objc to ensure that all functions will be exported correctly to Objective-C C. This is because even a module being created in swift, it is still necessary for it to pass through the Objective-C bridge.

Steps:

1 - A file of type .m(Objective-C) was created to include and externalize this module and as done in swift.

2- The module is exported through RCT_EXTERN_MODULE passing the module made in swift as a parameter.

3- The last step is to mix the Objective-C and Swift files, this is done through a bridge file (bridging head file) that will export the Objective-C files to Swift. Xcode itself already gives the option to create this file in the File ⇒ New File menu. In this file it will be necessary to import the RCTBridgeModule.h

##

Português:

A ideia de criação do módulo é bastante similar com a escrita em Objective-C, mas claro que com ajustes de sintaxe e com um detalhe importante, sera necessário incluir  **@objc** para garantir que todas as funções serão exportadas de maneira correta para o Objective-C. Isso ocorre porque mesmo um módulo sendo criado em swift, ainda é necessário que ele passe pela bridge do Objective-C.

Passos:

1 - Foi criado um arquivo do tipo .m(Objective-C) para incluir e externalizar esse módulo e as funções feitas em swift.

2- O módulo é exportado através da `RCT_EXTERN_MODULE` passando como parâmetro o módulo feito em swift.Já as funções, serão exportadas atráves do `RCT_EXTERN_METHOD` passando como parâmetro a função feita em swift.

3- O último passo é fazer o mix dos arquivos Objective-C e Swift, isso é feito através de um arquivo de bridge(bridging head file) que irá expor os arquivos Objetivo-C para o Swift.O próprio Xcode já da a opção de criação desse arquivo no menu **File ⇒ New File**.Nesse arquivo será necessário importar o `RCTBridgeModule.h`

