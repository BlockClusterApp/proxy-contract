pragma solidity ^0.4.18;

contract Assets {
    function changeAdmin(string assetName, address newAdmin) {}

    function createBulkAssetType(string assetName, bool reissuable, uint parts, string description) {}
    function getBulkAssetTypeIssuer(string assetName) returns (address issuer) {}
    function getBulkAssetParts(string assetName) returns (uint parts) {}
    function issueBulkAsset(string assetName, uint units, address to, string description) {}
    function getBulkAssetUnits(string assetName, address from) returns (uint units) {}
    function transferBulkAssetUnits(string assetName, address to, uint units, string description) returns (bool result) {}

    function createSoloAssetType(string assetName, string description) {}
    function getSoloAssetTypeAdmin(string assetName) returns (address issuer) {}
    function issueSoloAsset(string assetName, address to, string uniqueAssetIdentifier, string encryptionPublicKey) {}
    function getSoloAssetDetails(string assetName, string uniqueAssetIdentifier) returns (bool isClosed, address owner, string publicKey) {}
    function getSoloAssetExtraData(string assetName, string uniqueAssetIdentifier, string key) returns (string value) {}

    function addOrUpdateSoloAssetExtraData(string assetName, string uniqueAssetIdentifier, string key, string value) {}
    function addOrUpdateEncryptedDataObjectHash(string assetName, string uniqueAssetIdentifier, string encryptedDataObjectHash) {}
    function soloAssetChangeAccess(string assetName, string uniqueAssetIdentifier, string publicKey, bool access) {}
    function hasSoloAssetEncryptedDataAccess(string assetName, string uniqueAssetIdentifier, string publicKey) returns (bool result) {}
    function transferOwnershipOfSoloAsset(string assetName, string uniqueAssetIdentifier, address to, string description) returns (bool result) {}
    function addSoloAssetIssuer(string assetName, address newIssuer) {}
    function removeSoloAssetIssuer(string assetName, address issuer) {}
    function canIssueSoloAsset(string assetName, address issuer) returns (bool canIssue) {}
    function closeSoloAsset(string assetName, string uniqueAssetIdentifier) {}

    function approve(string assetType, string assetName, string assetId, uint assetUnits, address spender) {}
    function isApproved(string assetType, string assetName, string assetId, uint assetUnits, address spender, address from) returns (bool result) {}
    function transferAssetFrom(string assetType, string assetName, string assetId, uint assetUnits, address from, address to) returns (bool result) {}
}
