# Flutter Aprendendo — O que foi praticado

Este projeto é um catálogo de estudos em Flutter: uma tela inicial lista diferentes exemplos (widgets de conteúdo, widgets de layout, ciclo de vida de StatefulWidget e um contador com setState), cada um acessível por navegação. Abaixo está um resumo dos conceitos praticados no código.

## Conceitos praticados

### 1. Estrutura de um catálogo de exemplos
- Tela inicial (`ListContents`) que exibe um `GridView` com cards, cada um representando um exemplo diferente.
- Uso de uma classe auxiliar `CatalogoItem` para padronizar título, ícone, descrição e widget de destino de cada exemplo.
- Navegação para cada exemplo com `Navigator.push` e `MaterialPageRoute`.

### 2. Widgets de conteúdo (`WidgetsConteudo`)
- Exibição de texto estilizado com `Text` e `TextStyle` (tamanho, peso, cor).
- Carregamento de imagem da internet com `Image.network`.
- Uso de `Icon` com cores e tamanhos customizados.
- Uso de `ElevatedButton` com `onPressed`, incluindo `print` para debug e `Navigator.pop` para voltar à tela anterior.
- Componente reutilizável (`TitleSection`) para separar seções dentro da tela.

### 3. Widgets de layout (`WidgetsLayout`)
- `Padding` para espaçamento interno de um widget.
- `Align` e `Center` para posicionar elementos dentro de um `Container`.
- `SizedBox` para criar espaçamento fixo entre widgets.
- `Expanded` e `Flexible` dentro de `Column` e `Row`, incluindo o uso do parâmetro `flex` para dividir o espaço disponível proporcionalmente.

### 4. Ciclo de vida de um StatefulWidget
- Implementação de um widget filho (`CicloStateful`) que recebe uma cor via parâmetro e sobrescreve os principais métodos do ciclo de vida: `initState`, `didChangeDependencies`, `didUpdateWidget`, `build` e `dispose`, com `print` para observar quando cada um é chamado.
- Widget pai (`CicloStatefulParent`) que altera o estado (`corAtual`) via `setState`, forçando a reconstrução do filho e demonstrando `didUpdateWidget` na prática.

### 5. Gerenciamento de estado com setState
- Exemplo de contador (`Contador`) com estado interno (`_contador`), incrementando e decrementando o valor por meio de `setState`.
- Duas formas de atualizar o estado: chamando um método (`incrementaValor`) e alterando o estado diretamente dentro de uma função anônima no `onPressed`.

### 6. Boas práticas de projeto Flutter
- Organização do código em `lib/screens` (telas) e `lib/widgets` (componentes reutilizáveis).
- Suporte multiplataforma configurado (Android, iOS, Linux, macOS, Web e Windows).
- Configuração de lint com `flutter_lints` em `analysis_options.yaml`.
- Estrutura padrão de testes (`test/widget_test.dart`).

## Como rodar o projeto

```bash
flutter pub get
flutter run
```

## Possíveis próximos passos
- Adicionar mais exemplos de widgets (formulários, animações, listas com Dismissible, etc.).
- Explorar gestão de estado mais avançado (Provider, Riverpod, Bloc) como evolução do setState.
- Adicionar testes de widget para os exemplos existentes.