# Errorcheck Smart Contract

## Description

This Solidity smart contract, `Errorcheck`, provides functions for input validation and overflow checking.

## Functions

### 1. `checkinput(uint256 _input)`

- **Description:** Validates the input to ensure it is a valid uint8.

- **Parameters:**
  - `_input` (uint256): Input to be checked.

- **Returns:** 
  - `string memory`: Returns "success" if the input is valid.

### 2. `checkoverflow(uint256 _num1, uint256 _num2)`

- **Description:** Checks for overflow in the sum of two numbers.

- **Parameters:**
  - `_num1` (uint256): First number.
  - `_num2` (uint256): Second number.

- **Note:** Uses `assert` to ensure the sum does not exceed 255.

### 3. `Checkrevert(uint256 _num1, uint256 _num2)`

- **Description:** Checks for overflow in the sum of two numbers using `revert`.

- **Parameters:**
  - `_num1` (uint256): First number.
  - `_num2` (uint256): Second number.

- **Returns:** 
  - `string memory`: Returns "no overflow" if there is no overflow, otherwise reverts with "overflow exist".

## License

SPDX-License-Identifier: UNLICENSED
