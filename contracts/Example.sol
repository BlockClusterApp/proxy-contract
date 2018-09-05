import "./Utilities.sol";
import "./Assets.sol";
import "./AtomicSwap.sol";
import "./Streams.sol";

contract Example {
    address deployer;
    Assets assets = Assets(0x297c644298f72e2099dac279a590ea0811de768b);
    AtomicSwap atomicSwap = AtomicSwap(0x774a57b6c2e0f4607a37b86cbd3e114aab26d784);
    Streams streams = Streams(0x37e295eb671f44d83b8468724ad93f59992df223);

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
