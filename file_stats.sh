echo "Введите путь и название файла"
read file_path

if [ -f "$file_path" ]; then
    lines=$(wc -l < "$file_path")
    words=$(wc -w < "$file_path")
    chars=$(wc -m < "$file_path")

    echo "Файл $file_path существует"
    echo "Количество строк: $lines"
    echo "Количество слов: $words"
    echo "Количество символов: $chars"
else
    echo "Ошибка: Файл '$file_path' не существует"
fi
