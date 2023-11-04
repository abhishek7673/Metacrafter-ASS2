# Metacrafter-ASS2

# Intro to Project 
I am going to use or show the use of require(), assert(), revert() function and we will check the working of these three functions.

# Description:
I will be creating smart contract on Etherem blockchain using solidity porogramming language,(I got to know about this platform afer great research, I have tried doing on gitpod, but I was unable to do, anyways) the function in this programe used handle the software issue correctly build and execute the smart contract. I have used three function statements require(), assert(), revert(). and explain this all later:

# Getting Started:
# Code:
I have used online Solidity IDE Remix to excute this program for now. Visit the Remix website at https://remix.ethereum.org to get started after opening the website, clicked the "+" icon in the left sidebar to start a new file. Save the document with the extension ".sol" (for example, functionErrorDemo.sol).

    SPDX-License-Identifier: MIT
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
        uint _AgeOfSiam=35;
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

# Explanation:
# function requireConditon()
As per require(), it work is to verify input and and condition before excutation to the programe.Its take unsigned integer _voterAge as a input and return output as string. It will check _voterAge is greater than 25 (Voter can Vote according to criteria) and if not, it will display the message "require",  (Voter Can Vote according to criteria).

# function assertCondition()
assert() function accepts an unsigned integer _LiasAge as input. It determines whether _LiasAge exceeds 35(_AgeOfSiam). The "assert" statement will result in an error if the condition is not satisfied. Otherwise, "Siam is elder than Lias" will be returned on the screen.

# function revertCondittion()
revert() function is a pure function and it takes an unsigned integer _feepaid as input and checks if it is greater than a value stored in _totalRupee, which is 799. If the condition is met, it will return a "revert" with the message "opps! Less Balance, Need to try agiain with lesser amount".

# Error Handling:
There are three methods that constitute the error-handling process in Solidity:

require(): Used to validate certain conditions before further execution of a function. It takes two parameters as an input.
The first parameter is the condition that you want to validate and the second parameter is the message that will be passed back to the caller if the condition fails. If the condition is satisfied, then the execution of the function continues and the execution jumps to the next statement. 

However, if the condition fails, then the function execution is terminated and the message (the second parameter) is displayed in the logs. The second parameter, however, is optional. require() will work even if you pass only parameter, that is, the condition to be checked. The require() statement is defined as follows:

require(<condition to be validated> , <message to be displayed if the condition fails>);

assert(): The assert function, like require, is a convenience function that checks for conditions. If a condition fails, then the function execution is terminated with an error message.
assert() takes only one parameter as input. You pass a condition to assert(), and if the condition is true, then the function execution continues and the execution jumps to the next statement in the function. The assert() statement is defined as:

assert(<condition to be checked/validated>);

revert(): Can be used to flag an error and revert the current call. You can also provide a message containing details about the error, and the message will be passed back to the caller. However, the message, like in require(), is an optional parameter. revert() causes the EVM to revert all the changes made to the state, and things return to the initial state or the state before the function call was made.
The reason for reverting is that there is no safe way to continue execution because something unexpected happened. This is important as it helps in saving gas.
