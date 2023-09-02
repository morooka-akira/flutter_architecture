# flutter_architecture

A new Flutter project.

# 基本的な方針

- クリーンアーキテクチャをベースにレイヤー分離を行う
- レイヤー間をまたぐものは依存関係を逆転するためにDIする

# ディレクトリ構成

```
lib/
├── main.dart
├── widget/
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

- Flutterアプリケーションの主要なウィジェット（コンポーネント）
	- **pages/**: ページ単位で格納
	- components/: elementsを組み合わせたウィジェット
	- elements/: 単一のウィジェット
	- themas/: テーマ

## application

- アプリケーションのビジネスロジックやユースケースを定義する
	- **usecases/**: ユースケース

## domain

- この層は、ビジネスロジックの純粋なルール・モデル
	- **entities/**: データオブジェクトやエンティティを定義
	- **repositories/**: データアクセスの抽象化としてのリポジトリインターフェース
		- 実装はinfrastructureにおく

## infrastructure

- アプリケーションの外部のサービスやリソースとのやり取り
	- **repositories/**: ドメインレイヤーで定義されたリポジトリインターフェースの実装

## di

- 依存性の注入(Dependency Injection)の設定
