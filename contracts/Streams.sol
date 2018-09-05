pragma solidity ^0.4.18;

contract Streams {
    function createStream(string streamName, string description) {}
    function publish(string streamName, string key, string data, bool encrypted, string ownerPublicKey, string receiverPublicKeys) {}
    function addPublisher(string streamName, address publisher) {}
    function removePublisher(string streamName, address publisher) {}
    function canPublish(string streamName, address publisher) returns (bool canAddressPublish) {}
    function getStreamAdmin(string streamName) returns (address admin) {}
    function changeAdmin(string streamName, address newAdmin) {}
}
