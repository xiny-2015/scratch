# use vim convert all file encoding into utf8
function convert_multi_file()
{
    for file in $(find ../data -type f -name "*.txt"); do
        #iconv -f cp936 -t utf-8 "$file" -o ${file}
        vim +"argdo se bomb | se fileencoding=utf-8 | wq" ${file}
        if [ $? -ne 0 ]
        then
            echo "${file} fail"
            return 1;
        fi
    done
}

convert_multi_file
