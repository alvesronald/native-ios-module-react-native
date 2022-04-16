# Native iOS Module in React Native using Swift

A ideia de criação do módulo é bastante similar com a escrita em Objective-C, mas claro que com ajustes de sintaxe e com um detalhe importante, sera necessário incluir  **@objc** para garantir que todas as funções serão exportadas de maneira correta para o Objective-C. Isso ocorre porque mesmo um módulo sendo criado em swift, ainda é necessário que ele passe pela bridge do Objective-C.

Passos:

1 - Foi criado um arquivo do tipo .m(Objective-C) para incluir e externalizar esse módulo e as funções feitas em swift.

2- O módulo é exportado através da `RCT_EXTERN_MODULE` passando como parâmetro o módulo feito em swift.Já as funções, serão exportadas atráves do `RCT_EXTERN_METHOD` passando como parâmetro a função feita em swift.

3- O último passo é fazer o mix dos arquivos Objective-C e Swift, isso é feito através de um arquivo de bridge(bridging head file) que irá expor os arquivos Objetivo-C para o Swift.O próprio Xcode já da a opção de criação desse arquivo no menu **File ⇒ New File**.Nesse arquivo será necessário importar o `RCTBridgeModule.h`
