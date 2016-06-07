# Arm #

ActiveRecord::MigraterをWindowsで簡単に実行できます。

## Usage ##

``
migrate.exe database.ymlファイルのパス<:DB設定KEY> migrateディレクトリのパス<:VERSION>
``

## Compile ##

windows環境下のrubyでocraを用いてコンパイルできます。

ruby 2.1.5, ocra 1.3.5で動作確認しています。

`gem install bundler ocra`

`bundle install --without development`

`ocra --no-autoload --add-all-core --gemfile Gemfile --gem-full arm.rb`

## Log -ログ- ##

ログは active_record.log へ出力されます。

## License -ライセンス- ##

このソフトウェアは、 MITライセンスで配布されている製作物が含まれています。  
このソフトウェアは、 Apache 2.0ライセンスで配布されている製作物が含まれています。

## Authors -作者- ##

[metalels](https://github.com/metalels)
