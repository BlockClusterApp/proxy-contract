import "./Utilities.sol";
import "./Assets.sol";
import "./AtomicSwap.sol";
import "./Streams.sol";

contract Example {
    address deployer;
    Assets assets = Assets(0x5b14477d9fa94a343db7654294a52fe122316209);

    function Example() {
        deployer = msg.sender;
        Utilities.uint2str(2);
    }
}
