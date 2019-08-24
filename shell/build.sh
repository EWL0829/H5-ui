# 清空dist目录中的旧文件
echo '正在清除原有dist文件...'
rm -rf dist/*.css

# 打包出不压缩的CSS文件h5-ui.css
echo '正在生成h5\(^o^)/~-ui.css文件...'
npx postcss src/h5-ui.css -o dist/h5-ui.css -u postcss-import autoprefixer --no-map 

# 打包出被压缩的CSS文件tuitui-ui.min.css
echo '正在生成h5\(^o^)/~.min.css文件...'
npx postcss src/h5-ui.css -o dist/h5-ui.min.css -u postcss-import autoprefixer cssnano --no-map 