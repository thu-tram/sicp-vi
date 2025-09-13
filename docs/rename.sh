#!/bin/bash

# Mảng mapping từ số tệp (1-22) đến tên mới (ví dụ: 1-1, 1-2, ...)
# Tên mới được đặt theo thứ tự trong mục lục bạn đã cung cấp.
declare -a new_names=(
"1-1" "1-2" "1-3"
"2-1" "2-2" "2-3" "2-4" "2-5"
"3-1"
)

# Vòng lặp để đổi tên tệp
for i in $(seq 1 9); do
    old_name="0${i}.md"
    new_name="${new_names[$i-1]}.md"
    if [ -f "$old_name" ]; then
        mv "$old_name" "$new_name"
        echo "Đổi tên tệp: $old_name -> $new_name"
    else
        echo "Không tìm thấy tệp: $old_name"
    fi
done