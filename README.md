# flutter_architecture

自分が普段つかっているFlutterアーキテクチャをまとめておく。
アーキテクチャの内容は適宜更新する予定。

# 基本的な方針

- クリーンアーキテクチャをベースにレイヤー分離を行う
- レイヤー間をまたぐものは依存関係を逆転するためにDIする

# ディレクトリ構成

```rust
lib/
├── main.dart
├── widget/
│   ├── app.dart
│   ├── navigations/
│   ├── themes/
│   └── pages/
│       ├── home_page.dart
│       └── ... (その他のページ)
├── application/
│   └── usecases/
│       ├── get_data_usecase.dart
│       └── ... (その他のユースケース)
├── domain/
│   ├── entities/
│   │   ├── data.dart
│   │   └── ... (その他のエンティティ)
│   └── repositories/
│       ├── data_repository.dart
│       └── ... (その他のリポジトリインターフェース)
├── infrastructure/
│   └── repositories/
│       ├── data_repository_impl.dart
│       └── ... (リポジトリの実装)
└── di/
```


## widget

- FlutterアプリケーションのView(ウィジェット)をすべてこのディレクトリ配下へ置く
	- app.dart: ルートのアプリコンポーネントを配置
		- テーマの設定やアプリ全体への適応するライブラリの初期化処理はここで実施する。

			- riverpodなど


	- **pages/**: ページ単位のroot widgetを配置する
		- ページ単位=ルーティングの単位
	- components/: elementsを組み合わせたウィジェット
	- elements/: 単一のウィジェット
	- themas/: テーマ

## application

- アプリケーションのビジネスロジックやユースケースを定義する
	- **usecases/**: ユースケース

## domain

- ビジネスロジックのルール・モデルを配置する
	- **entities/**: モデルやエンティティを配置
	- **repositories/**: データアクセスの抽象化としてのリポジトリインターフェース
		- 実装はinfrastructureにおく

## infrastructure

- アプリケーションの外部のサービスやリソースとのやり取り
	- **repositories/**: ドメインレイヤーで定義されたリポジトリインターフェースの実装

## di

- 依存性の注入(Dependency Injection)の設定

# DIのツール


[https://docs-v2.riverpod.dev/](https://docs-v2.riverpod.dev/)

riverpodを使ってDIっぽく書く

# Widget/pageの構成

- pageはアプリケーションにおけるページ単位を指す
- page間は基本ルーティングで遷移
- pageのアーキテクチャはMVVMを採用してViewModelを介してアクセスする
	- reducerでactionをさばくような構成も考えられるが規模の複雑性との相談。基本はシンプルな構成で作る。

![image](https://res.craft.do/user/full/dab629af-b143-f93d-be58-3b58677e1bd0/doc/12DDC94E-B55E-45D6-AE34-FBBC12DF803A/E4737534-F948-4E04-B95B-5637EB786A73_2/A9H6TvZA1MoK5OxhDsaDcvfW5zzGBNTIejxb2RjLJ2Yz/%202023-08-31%208.26.40.png)

##  ルーティング


ページを切り替えるルーティングは、サードパーティ含めいくつか選択肢があるが、 現在は[Navigator](https://flutter.ctrnost.com/basic/routing/)をつかう。

ケースバイケースではあるが、基本の遷移はPathを使い、Pathは一つのファイルにまとめておく。

Navigatorは、navigators配下に配置する。

```dart
class PageNavigator extends ConsumerWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  const PageNavigator({required this.navigatorKey, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Navigator(
      key: navigatorKey,
      initialRoute: PagePath.home,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case PagePath.home:
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const HomePage(title: "Home"),
            );
          case PagePath.counter:
            return MaterialPageRoute(
              settings: settings,
              builder: (context) => const CounterPage(
                arguments: CounterPageArguments(title: "Counter"),
              ),
            );
          default:
            return null;
        }
      },
    );
  }
}

```

