import "./Utilities.sol";
import "./Assets.sol";
import "./AtomicSwap.sol";
import "./Streams.sol";

contract Example {
    address deployer;
    Assets assets = Assets(0xf9a70819010c72d89fc184e4e716eb1d71a1f215);
    AtomicSwap atomicSwap = AtomicSwap(0x235c1c2d8c6bc4a873de2246605f902ef77f2987);
    Streams streams = Streams(0x75c2f1b40d648c31392f8de7d1cbaca35e112769);

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
