pragma solidity ^0.6.0;

//import other files used in program
import "@chainlink/contracts/src/v0.6/ChainlinkClient.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./../libraries/openzeppelin-solidity/SafeMathLib.sol";
import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";
import "@chainlink/evm-contracts/src/v0.6/interfaces/AggregatorInterface.sol";
contract PriceOracle is Ownable {
    using SafeMath for uint256;

    AggregatorInterface internal priceFeed;


    constructor(address aggregator) public {
        priceFeed = AggregatorInterface(aggregator);
    }

    function getLatestPrice() public view returns (uint256){
        return pricefeed.latestAnswer();
    }


}