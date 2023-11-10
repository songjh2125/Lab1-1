#! /bin/sh

order=$1

Fuction() {
    echo "함수 안으로 들어왔음"
    ls $order
}

echo "프로그램을 시작합니다"
Fuction
echo "프로그램을 종료합니다"

exit 0