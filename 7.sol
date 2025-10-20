bytes4 x = 0x12345678;
bytes2 y = bytes2(x); // y는 0x1234가 된다.
bytes4 z = bytes4(y); // z는 0x12340000이 된다.