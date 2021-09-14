// pragma solidity ^0.4.0;
pragma solidity >=0.4.4 <0.7.0;
import "./ERC20.sol";

// Comment in one line
/**
Multi line comment
*/

// natspec
/// nat_contract
/// @title A title that should describe the contract/interface
/// @author The name of the author
/// @notice Explain to an end user what this does
/// @dev Explain to a developer any extra details
/// @notice Explain to an end user what this does
/// @param Documents a parameter just like in doxygen (must be followed by parameter name)
/// @return Documents the return variables of a contract’s function state variable
/// @inheritdoc	Copies all missing tags from the base function (must be followed by the contract name)


// Create contract
contract FirstContract {
    //the person who deploy the contract
    address owner;
    ERC20Basic token;

    // Constructor, specify properties that define the contract
    constructor () public {
        owner = msg.sender;
        token = new ERC20Basic();
    }
}