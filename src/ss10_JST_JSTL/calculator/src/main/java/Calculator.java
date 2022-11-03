public class Calculator {
    public static double calculator(double firthOperand, double secondOperand, char operator) {
        switch (operator) {
            case '+':
                return firthOperand + secondOperand;
            case '-':
                return firthOperand - secondOperand;
            case '*':
                return firthOperand * secondOperand;
            case '/':
                return firthOperand / secondOperand;
            default:
                return 0;
        }
    }
}