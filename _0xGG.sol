pragma solidity ^0.4.0;

import "Bidder.sol";
import "Host.sol";

contract _0xGG {

    address public owner;
    uint256 private key = 0x123;

    mapping(uint => Bidder) public ads;
    string url = "kokos.com.cs.ucy.ac.in.it.kokos.yc.cy";

    modifier check_funds(uint256 wei_bid) {
        if (msg.value < wei_bid) {
            return;
        }
        _;
    }

    function _0xGG() {
        owner = msg.sender;
    }

    function addAd(uint256 wei_bid) check_funds(wei_bid) payable {

        // create new bidder object
        Bidder bidder = new Bidder(msg.sender, msg.value, wei_bid, url, now);
        ads[now] = bidder;

        return;
    }

    function getAd() {
        Host host = Host(msg.sender);
        host.pay();
        return;
    }

}
