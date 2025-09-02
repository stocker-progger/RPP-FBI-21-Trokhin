echo "Введите путь к директории: "
read dir_path

if [ -d "$dir_path" ]; then
    echo "Список файлов в директории $dir_path (отсортированные по дате):"
    ls -lt "$dir_path"
else
    echo "Ошибка: Директория '$dir_path' не существует или не является директорией"
fi