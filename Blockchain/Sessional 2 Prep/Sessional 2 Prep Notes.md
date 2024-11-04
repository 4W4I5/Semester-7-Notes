| Chapter<br>Number | Chapter<br>Name           | Status             |
| ----------------- | ------------------------- | ------------------ |
| 5                 | Mechanics of Bitcoin      | :warning:          |
| 6                 | The bitcoin network       | :warning:          |
| 7-Intro           | Introduction to Ethereum  | :warning:          |
| 7-A               | Interfacing with Ethereum | :warning:          |
| 7-B               | Ganache (Local TestNet)   | :white_check_mark: |
| 7-C               | Smart Contracts           | :white_check_mark: |

# Lecture 5: Mechanics of Bitcoin
## 1) Bitcoin Transactions
### Transaction Input & Outputs
- Inputs can be considered as "debits" against a bitcoin account
	- Reference to a prevTransactionID, similar to an array, it is also indexed i.e. can pick out exact value sent to an address as a transaction is just an entry in the ledger
- Outputs can be considered as "credits" added to a bitcoin account
	- Spending/'Assigning Outputs' is the process of signing a transaction that transfers value from prevTransaction to newOwnerAddr
	- Splitting + Merging Value of coins
		- Splitting -> Alice needs to pay X BTC but she only has a X+N BTC where N is some offset. She can pay herself with N BTC to split the original X BTC and then pay with the split Y BTC and still have the balance cause of the N BTC.
			- No new coins are generated, just a new UTXO with the smaller value that can be traced back to the original coinbase reward value.
		- Merging -> Bob got paid 15 BTC from Sender1 and 5 BTC from Sender2. He can create a new transaction with 2 inputs referring to the Outputs of Sender1 and Sender2 to merge the value into a new UTXO that has the total value of 20 BTC
	- Multiple inputs from different owners
		- Multiple people can Output to the same address, however they will each then sign the transaction i.e. it will hold the sigs of all parties involved in the Inputs
- Inputs have to add up to the Outputs i.e.;
	- Inputs + transaction fees == Outputs. (Outputs add up to slightly less than the Inputs. The difference represents an implied transaction fee)
	- Coinbase/Initial transaction does `NOT` have any inputs.
- Transactions are invalidated by the following;
	- Not signed by the input owner
	- Sum of all Inputs and Outputs not being Zero
## 2) Bitcoin Scripts
### Transactions
- UTXO
- Block mining
- Bitcoin Batches + Locks
- Bitcoin Transfer Process
- Locking & Unlocking Scripts
- Coinbase Transactions
- Fees
- Script
- PKI
- Realworld Example of BTC Transfer
- Transaction Fields
### Locking Script: Pay2PubKey
### Locking Script: Pay2PubKeyHash
## 3) Application of Bitcoin Scripts
- Escrow Transactions
	- Seller wants payment before shipping goods
	- Middleman generates a transaction with some fraction of total value as required input before transferring goods from the seller to the buyer
		- Transaction is signed by both the middleman and buyer
- Green Addresses
	- Why use it?
		- Recipient might be offline or might not be able to verify the transaction at the current moment in time
		- Bypass confirmation waiting times
	- Practical use
		- Buying fastfood, not practical to wait for an hour to confirm the transaction
		- Introduce a 3rd party known as the bank that can interact with both recipient and sender. The bank uses a "green" or trusted address to pay the seller with funds deducted directly from the sender's account. Since the bank owns a trusted address they are highly secure and usable confirmation of transactions
	- Implications
		- The buyer has to trust the bank, that the bank should not double spend, the banks spending history will be public
- Efficient MicroPayments
	- **How it works?**
		- **Initial Transaction Setup**:
		    - Alice deposits funds in a transaction that locks a certain amount (e.g., 100) for both parties in a multisig account.
		    - This setup creates a trust-minimized payment channel, where funds can only be spent if both parties sign each transaction.
		- **Incremental Payment Transactions:**
		    - Each time Alice wants to pay Bob for a service (e.g., each second of streaming), she creates a transaction that moves a small amount from her balance to Bob's, signing it herself.
		    - However, these incremental transactions are _off-chain_ and are not published immediately on the blockchain. Instead, they are recorded and only finalized (published) when either Alice or Bob decides to close the channel.
		- **Final Settlement:**
		    - Once Alice has finished making payments, the last signed transaction showing the final balances can be published on the blockchain to settle the funds. This avoids multiple on-chain transactions, minimizing fees.
	- **Implications of Non-Signing or Trickery**
		- **If Bob Refuses to Sign:**
		    - If Bob doesn’t sign any of the transactions, the funds remain locked, and Alice can demand a refund after a timeout. This timeout mechanism protects Alice from losing funds if Bob becomes unresponsive.
		- **If Alice Refuses to Sign or Tries to Double-Spend:**
		    - If Alice tries to backtrack or spend the same funds in multiple ways, the design of the protocol, with a series of incrementally updated transactions signed by both parties, prevents her from successfully double-spending. Only the latest signed transaction has value when closing the channel.
	- **Security Implications and Protections**
		- **Timeout Refunds:**
		    - A time-locked refund transaction ensures Alice can get her funds back if Bob refuses to cooperate after locking funds. This feature adds a layer of security against malicious or unresponsive counter-parties.
		- **Final Signed State:**
		    - Since only the last signed transaction can be published, both parties are incentivized to cooperate throughout, ensuring honesty and preventing either party from publishing an old state.
## 4: Bitcoin Blocks
- Why group transactions into a single block
	- Batch Processing of transactions as consensus on each individual transaction would slow the chain down
	- Hash Chain of blocks is faster to verify than the Hash Chain of every transaction, again due to Batch Processing.
- Merkle Tree
	- The whole chain can be considered a merkle tree as each block holds the hash of all the blocks before it
		- Merkle Root -> Fingerprint for all transactions in a block
	- Why not just hash each TXiD in a block? Cannot confirm if a given TX was part of the root otherwise
		- To find if a TXiD is part of the root, just need to know a few of the transactions preceding the one currently. This is known as Merkle Proof
	- Used to create lightweight wallets
		- These do not store the block contents, just the header
		- Used for transaction verification only
		- AKA Simplified Payment Verification Nodes (SPV)
		- They **require** merkle proofs from full nodes to complete the verification
		- Shortcut for quickly calculating a hash
			- Go in a diagonal from the leftmost bottom entry i.e. the starting transaction
- Bitcoin Block Header
	- Block verison (4 bytes)
	- PrevBlockHash (32 bytes)
	- MerkleRoot (32 bytes)
	- Time (4 bytes)
	- Bits (4 bytes)
	- Nonce (4 bytes)
- Coinbase Transaction Contents
# Lecture 6: The Bitcoin Network
## 1) Node Types & Roles

Maybe add 7, 8 and 9 here

## 2) Extended Bitcoin Network
## 3) Bitcoin Relay Networks
## 4) Bitcoin P2P Network

NOTE:: Add in points from Heading "Joining the P2P network" slides here

NOTE:: Add in points from Heading "Transaction Propagation" slides here

NOTE:: Add in points from Heading "Block Propagation nearly identical" slides here

NOTE:: Add in points from Heading "Should I relay a proposed transaction" slides here

## 5) Network Discovery
## 6) Race Conditions
## 7) Fully-Validating Nodes

NOTE:: Add in points from Heading "Storage Costs" slides here

## 8) Thin/SPV Clients
## 9) Software Diversity

# Lecture 7-Intro: Introduction to Ethereum
## 1) Example to understand the need of a smart contract
## 2) Bitcoin Scripts in Practice
## 3) Ethereum Accounts & Types
## 4) Contracts
## 5) Ethereum Virtual Machine
## 6) Turing Completeness
# Lecture 7-A: Interfacing with Ethereum
- ### Two ways to do it
	- **Developers** -> Web3JS
	- **Consumers** -> Metamask or Mist Browser(WIP)
- ### Switching Networks
	- Main ETH network
		- Real Value
	- Goerli TestNet
		- PoS consensus
	- Sepolia TestNet
		- PoS consensus
			- Used to be PoW before the merge in 2022
		- Will not be maintained long term
	- Localhost 8545
		- Ganache
- ### ETH Accounts
	- 
# Lecture 7-B: Ganache (Local TestNet)
## Ganache
- Trivia
	- Ganache GUI listens at port 7545, CLI at port 8545
- Advantages
	- No need to obtain test ether; you "award" yourself mining rewards that you can use for testing
	- When deploy contract on Ethereum blockchain, we pay gas. It is best to test contract locally without any fee, and when the contract is ready then we deploy it the main ethereum.
	- Uploading work to both ethereum and test networks takes time. This means that we need to wait for our contracts to deploy on the chain before testing them, which can be avoided with a local blockchain set up with Ganache. No other users, just you
	- No other contracts, just the ones you deploy after you launch it
- Disadvantages
	- Having no other users means that it doesn't behave the same as a public blockchain. There's no competition for transaction space or sequencing of transactions.
	- No miners other than you means that mining is more predictable; therefore, you can't test some scenarios that occur on a public blockchain.
	- Having no other contracts means you have to deploy everything that you want to test, including dependencies and contract libraries.
# Lecture 7-C: Smart Contracts
## Boilerplate

```
//SPDX-License-Identifier: MIT                 <- Used to specify what license the contract falls under, generally MIT is best
pragma solidity >= X.X.XX < X.X.XX             <- Specify which compiler versions to support, can also use ^X.X.XX to include specified version and till the next                                                       breaking change

contract someContractName {                    <- Main contract block where everything happens, can specify multiple
	function someContractFunction() viewSpecifier {  <- functions to be served by the contract
	}
}
```

- Any variables declared outside of the contract scope itself will be globally accessible and publicly as well
## Code blocks
- ### Address
	- `address`: Holds an Ethereum address (20 byte value). `address payable` : Same as address, but includes additional methods `transfer` and `send`
	- Operators:
		- Comparisons: `<=`, `<`, `==`, `!=`, `>=` and `>`
	- Methods:
		- #### Balance
			- `<address>.balance (uint256)`: balance of the Address in Wei
		- #### Transfer
			- `<address>.transfer(uint256 amount)`: send given amount of Wei to Address, throws on failure
		- #### Send
			- `<address>.send(uint256 amount) returns (bool)`: send given amount of Wei to Address, returns false on failure
- ### Struct
	- New types can be declared using struct.

```solidity
struct Funder {
    address addr;
    uint amount;
}

Funder funders;
```

- ### Mapping
	- Declared as `mapping(_KeyType => _ValueType)`
	- Mappings can be seen as **hash tables** which are virtually initialized such that every possible key exists and is mapped to a value.
	- **Key** can be almost any type except for a mapping, a dynamically sized array, a contract, an enum, or a struct. **value** can actually be any type, including mappings.
## Functions
- ### Structure
	- `function (<parameter types>) {internal|external|public|private} [pure|constant|view|payable] [returns (<return types>)]`
- ### Visibility Modifiers
	- `public` - Accessible from this contract, inherited contracts and externally
	- `private` - Accessible only from this contract
	- `internal` - Accessible only from this contract and contracts inheriting from it
	- `external` - Cannot be accessed internally, only externally. Recommended to reduce gas. Access internally with `this.f`.
- ### Parameters
	- #### Input parameters
		- Parameters are declared just like variables and are `memory` variables.

```solidity
function f(uint _a, uint _b) {}
```

- #### Output parameters
	- Output parameters are declared after the `returns` keyword
	- Output can also be specified using `return` statement. In that case, we can omit parameter name `returns (uint)`.
	- Multiple return types are possible with `return (v0, v1, ..., vn)`.

```solidity
function f(uint _a, uint _b) returns (uint _sum) {
   _sum = _a + _b;
}
```

- ### Constructor
	- Function that is executed during contract deployment. Defined using the `constructor` keyword.

```solidity
contract C {
   address owner;
   uint status;
   constructor(uint _status) {
       owner = msg.sender;
       status = _status;
   }
}
```

- ### Function Calls
	- #### Internal Function Calls
		- Functions of the current contract can be called directly (internally - via jumps) and also recursively

```solidity
contract C {
    function funA() returns (uint) { 
       return 5; 
    }
    
    function FunB(uint _a) returns (uint ret) { 
       return funA() + _a; 
    }
}
```

- #### External Function Calls
	- `this.g(8);` and `c.g(2);` (where c is a contract instance) are also valid function calls, but, the function will be called “externally”, via a message call.
> `.gas()` and `.value()` can also be used with external function calls.
- #### Named Calls
	- Function call arguments can also be given by name in any order as below.

```solidity
function f(uint a, uint b) {  }

function g() {
    f({b: 1, a: 2});
}
```

- ### Function Modifier
	- Modifiers can automatically check a condition prior to executing the function.

```solidity
modifier onlyOwner {
    require(msg.sender == owner);
    _;
}

function close() onlyOwner {
    selfdestruct(owner);
}
```

- `pure` for functions: Disallows modification or access of state.
- `view` for functions: Disallows modification of state.
- `payable` for functions: Allows them to receive Ether together with a call.
- `constant` for state variables: Disallows assignment (except initialization), does not occupy storage slot.
- `immutable` for state variables: Allows assignment at construction time and is constant when deployed. Is stored in code.
- `anonymous` for events: Does not store event signature as topic.
- `indexed` for event parameters: Stores the parameter as topic.
- `virtual` for functions and modifiers: Allows the function’s or modifier’s behavior to be changed in derived contracts.
- `override`: States that this function, modifier or public state variable changes the behavior of a function or modifier in a base contract.
- ### View or Constant Functions
	- Functions can be declared `view` or `constant` in which case they promise not to modify the state, but can read from them.

```solidity
function f(uint a) view returns (uint) {
    return a * b; // where b is a storage variable
}
```

> The compiler does not enforce yet that a `view` method is not modifying state.
- ### Pure Functions
	- Functions can be declared `pure` in which case they promise not to read from or modify the state.

```solidity
function f(uint a) pure returns (uint) {
    return a * 42;
}
```

- ### Payable Functions
	- Functions that receive `Ether` are marked as `payable` function.
## Transaction variables
- `msg.data (bytes)`: complete calldata
- `msg.gas (uint)`: remaining gas
- `msg.sender (address)`: sender of the message (current call)
- `msg.sig (bytes4)`: first four bytes of the calldata (i.e. function identifier)
- `msg.value (uint)`: number of wei sent with the message
- `tx.gasprice (uint)`: gas price of the transaction
- `tx.origin (address)`: sender of the transaction (full call chain)
## Validations & Assertions
- `assert(bool condition)`: abort execution and revert state changes if condition is `false` (use for internal error)
- `require(bool condition)`: abort execution and revert state changes if condition is `false` (use for malformed input or error in external component)