# Ввод первого числа
echo "Введите первое число"
read num1

# Ввод оператора
echo "Введите операцию (+, -, *, /)"
read op

# Ввод второго числа
echo "Введите второе число"
read num2

# Выполнение операции с целыми числами
if [ "$op" == "+" ]; then
    result=$((num1 + num2))
    echo "$num1 $op $num2 = $result"
elif [ "$op" == "-" ]; then
    result=$((num1 - num2))
    echo "$num1 $op $num2 = $result"
elif [ "$op" == "*" ]; then
    result=$((num1 * num2))
    echo "$num1 $op $num2 = $result"
elif [ "$op" == "/" ]; then
    if [ "$num2" -eq 0 ]; then
        echo "Ошибка: деление на ноль невозможно"
    else
        result=$((num1 / num2))
        echo "$num1 $op $num2 = $result"
    fi
else
    echo "Ошибка: Некорректный оператор. Используйте +, -, *, или /"
fi
