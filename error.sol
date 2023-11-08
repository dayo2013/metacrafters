// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;


contract ExceptionHandling {
    uint256 public value;

    function setValue(uint256 _newValue) public {
        // Use require to check a condition
        require(_newValue > 0, "Value must be greater than 0");

        // Use assert to perform an internal consistency check
        assert(_newValue != 999);

        // Perform a state change
        value = _newValue;

        // Use revert to revert with a custom message
        if (_newValue == 42) {
            revert("The answer to life, the universe, and everything");
        }
    }
}
