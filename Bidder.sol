pragma solidity ^0.4.0;

contract Bidder {
    address public user;       // user address
    uint256 public wei_count;  // wei_count invested
    uint256 public wei_bid;    // bid value
    //uint public db_id;         // external database index
    string public url;         // ad url
    uint256 public timestamp;  // timestamp

    function Bidder(address new_user, uint256 new_wei_count, uint256 new_wei_bid, string new_url, uint256 new_timestamp) {
        user = new_user;
        wei_count = new_wei_count;
        wei_bid = new_wei_bid;
        url = new_url;
        timestamp = new_timestamp;
    }

    function refund() {
        return;
    }
}
