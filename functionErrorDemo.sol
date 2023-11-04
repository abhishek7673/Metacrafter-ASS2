// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract functionError{
    function requireConditon(uint _voterAge) 
    public pure returns (string memory){
        uint _perfectAge =25;
        require(_voterAge > _perfectAge,"Voter Can Vote according to criteria");
        return ("C");
    }
    function assertCondition(uint _LiasAge) 
    public pure returns (string memory){
        uint _AgeOfSiam=34;
        assert(_AgeOfSiam > _LiasAge);
        return("Siam is elder than Lias");
    }
    function revertCondittion(uint _feepaid) 
    public pure {
        uint _totalRupee = 799;
        if (_feepaid > _totalRupee ) {
        revert("opps! Less Balance, Need to try agiain with lesser amount");
        }
         
    }
}
