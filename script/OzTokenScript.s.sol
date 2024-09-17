//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {OzToken} from "../src/OzToken.sol";

contract OzTokeScript is Script {
    uint256 public constant INITIALSUPPLY = 1000 ether;

    function run() external {
        vm.startBroadcast();
        new OzToken(INITIALSUPPLY);
        vm.stopBroadcast();
    }
}