// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title 2cent POC1
 * post and retrieve
 */
contract Twocent {
   struct Message{
       string sender;
       string posts;
       string rcv;

   }

    //Message message;
    
    Message[] allMessages;

    function newMessage(string memory _sender, string memory _post, string memory _rcv) public {
      allMessages.push (Message(_sender, _post, _rcv));
    }

    function get(uint _index) public view returns (string memory sender, string memory post, string memory rcv) {
        Message storage message = allMessages[_index];
        return (message.sender, message.posts, message.rcv);
      
      
    }
}
