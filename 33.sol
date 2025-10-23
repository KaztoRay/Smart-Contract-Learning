contract HigherVersionCalc {

    function add(int8 num1, int8 num2) public pure returns (int8 result) {

        result = num1 + num2;

    }

    function sub(int8 num1, int8 num2) public pure returns (int8 result) {

        result = num1 - num2;

        return result;

    }

}