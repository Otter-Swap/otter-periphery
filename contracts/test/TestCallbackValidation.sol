// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.15;

import '../libraries/CallbackValidation.sol';

contract TestCallbackValidation {
    function verifyCallback(
        address factory,
        address tokenA,
        address tokenB,
        uint24 fee
    ) external view returns (IOtterSwapPool pool) {
        return CallbackValidation.verifyCallback(factory, tokenA, tokenB, fee);
    }
}