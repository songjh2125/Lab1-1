#include <stdio.h>

int main() {
    int a, b, c, x, y;
    
    // a, b, c, x, y 입력 받기
    printf("양념치킨 한마리 값: ");
    scanf("%d", &a);
    printf("후라이드치킨 한마리 값: ");
    scanf("%d", &b);
    printf("반반치킨 한마리 값: ");
    scanf("%d", &c);
    printf("양념치킨 주문 개수(마리): ");
    scanf("%d", &x);
    printf("후라이드 치킨 주문 개수(마리): ");
    scanf("%d", &y);

    // 반반치킨으로만 산다고 가정했을 때 금액
    int cost_only_banban = c * 2 * (x > y ? x : y);
    
    // 양념치킨 1개 + 후라이드치킨 1개 > 반반치킨 2마리 일때
    int cost_banban, cost_left, cost_total;
    if (a + b > c * 2) {
        int min = x > y ? y : x;    // 양념 or 후라이드 중 적은 치킨 수를 변수 min에 저장
        cost_banban = c * 2 * min;    // 적은 치킨수에 맞춰서 반반치킨을 시킴
        x -= min;
        y -= min;    // 남은 치킨의 수를 계산, x, y중 하나는 0이 됨
        cost_left = a * x + b * y;    // 남은 치킨 값 계산
        cost_total = cost_banban + cost_left;    // 총 주문금액 = 반반치킨 가격 + 나머지 가격
    } else cost_total = a * x + b * y;    // 반반치킨이 이득이 아닌 경우 반반치킨 없이 주문
    
    // 반반으로만 주문하는 경우와 반반과 일반을 섞어서 주문하는 경우를 비교하여 최소주문금액 결정
    int TOTAL = cost_total < cost_only_banban ? cost_total : cost_only_banban;

    printf("최소 주문비용 ; %d", TOTAL);
    return 0;
    
}
