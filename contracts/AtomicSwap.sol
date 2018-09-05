pragma solidity ^0.4.18;

contract AtomicSwap {
    function lock(address to, bytes32 hash, uint lockExpiryMin, string assetType, string assetName, string assetId, int256 assetUnits, int256 parts, string otherAssetType, string otherAssetName, int256 otherAssetUnits, int256 otherParts, string otherAssetId, bytes32 otherGenesisBlockHash) {}
    function unlock(bytes32 hash) {}
    function claim(bytes32 hash, string secret) {}
    function atomicSwapDetails(bytes32 hash) returns (address from, address to, string assetType, string assetName, int256 assetUnits, int256 parts, string assetId) {}
    function atomicSwapOtherChainDetails(bytes32 hash) returns (string otherAssetType, string otherAssetName, int256 otherAssetUnits, int256 otherParts, string otherAssetId, bytes32 otherGenesisBlockHash) {}
    function atomicSwapLockPeriod(bytes32 hash) returns (uint lockPeriod) {}
    function atomicSwapStatus(bytes32 hash) returns (int status) {}
    function atomicSwapSecret(bytes32 hash) returns (string secret) {}
    function getGenesisBlockHash() returns (bytes32 hash) {}
}
