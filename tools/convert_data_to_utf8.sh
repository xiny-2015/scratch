
function convert_multi_file()
{
    for file in $(find ../data -name "*.txt"); do
        iconv -f cp936 -t utf-8 "$file" -o ${file}
        if [ $? -ne 0 ]
        then
            echo "${file} fail"
            return 1;
        fi
    done
}

convert_multi_file
