# shp_file_converter

## Dockerfileからイメージ作成
```sh
$ docker build -t ubuntu .
```

## dockerコンテナ起動 & コンテナに入る
```sh
$ docker run -v ./src:/home -it --rm ubuntu
```

## shp -> kml変換
```sh
$ cd home/

# 変換前のdbfファイルの文字コードがutf-8ではない場合下記実行
$ nkf -w ./original_data/original.dbf > ./original_data/original_utf8.dbf

$ ogr2ogr -f "KML" ./converted_data/results.kml ./original_data/original.shp
```