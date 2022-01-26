# HONG ZHUYANG's master degree project
## ForPredictフォルダ
### UseGoogleTrendsフォルダ
- 7日前から14日前のGoogle Trendと感染人数のcsvが保存された
- 実行の場合， Python.ipynbファイルに入れて，名前を「Fortraining.csv」に変更
### withoutGoogleTrendsフォルダ
- 7日前から14日前の感染人数とターゲットの感染人数のcsvが保存された
- 実行の場合， Python.ipynbファイルに入れて，名前を「Fortraining.csv」に変更
## Project.ipynb
- 一年半以上の感染人数予測のpythonファイル
- XGBoost,LSTM,Prophetとこの三つのモデルの組み合わせモデルが実装された
- Google Colaboratoryを使用して作成した
## all_period_analyse（一年半以上のデータ）
### KXX_X.csv
各検索用語のGoogle Trends人気度のcsvファイル(Xは数字)
### Japan_daily.csv
感染人数のcsvファイル
### Script.R
相関分析，Lag and Lead相関分析用Rファイル．
### timeSeries.png
時系列のプロット
## early_stage_analyse（初期段階の３ヶ月のデータ）
### Japan.csv
３ヶ月の感染人数
### Japan_kX.csv
各検索用語のGoogle Trends人気度のcsvファイル（Xは数字）
### Scatterplot.png
検索用語と感染人数の散布図
### lag&leadCoef.png
感染人数と検索用語のLag and Lead相関係数結果図
### TimeSeries.png
感染人数と各検索用語の時系列プロット
### script.R
相関分析，Lag and Lead相関分析用Rファイル．
## 内部仕様書.docx
RとPythonで使用した主な関数の説明
