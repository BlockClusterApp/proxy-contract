import "./Utilities.sol";
import "./Assets.sol";
import "./AtomicSwap.sol";
import "./Streams.sol";

contract Example {
    address deployer;
    Assets assets = Assets(0xeaebe91d5d658be4016154d8572d6abdea729e6d);
    AtomicSwap atomicSwap = AtomicSwap(0xe2b8c8140d31fa5fa289806703110846a1edc3b0);
    Streams streams = Streams(0x149315bb869dd791dbb7d48d1e9a8d88b0002deb);

    function Example() {
        deployer = msg.sender;
    }

    function testAssets() {
        //Create example coin asset
        assets.createBulkAssetType("exampleCoin", true, 2, "");

        //Issuing 100 example coins.
        assets.issueBulkAsset("exampleCoin", 10000, msg.sender, "Self Issue"); //We supplied 10000 because of 2 parts.
    }

    function getTestAssetBalance() returns (uint balance) {
        return assets.getBulkAssetUnits("exampleCoin", msg.sender);
    }
}
