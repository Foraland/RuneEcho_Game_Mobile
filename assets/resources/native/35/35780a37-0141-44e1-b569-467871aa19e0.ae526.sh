
# !bin/sh
# function trim(){
# for file in `ls`
# do
#         echo $file
#     if test -f $file 
#     then
#         if [ "${file#*.}" = $"png.meta" ]
#         then
#             sed -i '' 's/\"trimType\": \"auto\",/\"trimType\": \"none",/g' $file
#         fi
#     elif test -d $file
#     then
#         cd $file
#         trim
#         cd ..
#     fi
# done
# }
# trim
find . -name "*.png.meta" -type f | while read -r file; do
    # 将文件中的"trimType:auto"替换为"trimType:none"
    sed -i '' 's/\"trimType\": \"auto\",/\"trimType\": \"none",/g' "$file"
    sed -i '' 's/\"filterMode\": \"bilinear\",/\"filterMode\": \"point",/g' "$file"
    #echo  "$file"
done