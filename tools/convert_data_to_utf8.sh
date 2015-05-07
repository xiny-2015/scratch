
for file in $(find ../data -name "*.txt"); do
    iconv -f cp936 -t utf-8 "$file" -o ${file} || (echo "${file} fail";exit 1)
done
