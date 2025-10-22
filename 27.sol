function mul(uint8 num1, uint8 num2) public pure returns (uint8) {

    uint16 result = num1;

    result *= num2;

    return uint8(result);

}