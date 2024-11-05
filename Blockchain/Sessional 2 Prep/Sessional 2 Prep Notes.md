| Chapter<br>Number | Chapter<br>Name                                    | Status             |
| ----------------- | -------------------------------------------------- | ------------------ |
| 5                 | Mechanics of Bitcoin + Bitcoin Transactions slides | :warning:          |
| 6                 | The bitcoin network                                | :white_check_mark: |
| 7-Intro           | Introduction to Ethereum                           | :warning:          |
| 7-A               | Interfacing with Ethereum                          | :white_check_mark: |
| 7-B               | Ganache (Local TestNet)                            | :white_check_mark: |
| 7-C               | Smart Contracts                                    | :white_check_mark: |

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
	- `Nothing to note here`
# Lecture 6: The Bitcoin Network
## 1) Node Types & Roles
- **Overview of Nodes**
	- All nodes in Bitcoin’s P2P network are equal but can have specialized roles.
	- Key roles:
		- **Routing** data
		- **Blockchain Maintenance**
		- **Mining**
		- **Wallet Services**
	- Additional servers:
		- **Mining pool protocols**
		- **Lightweight client-access protocols**
- **Full Nodes**
	- Perform four main functions:
		- **Wallet** management
		- **Mining** (optional for some full nodes)
		- **Blockchain Storage**
		- **Network Routing**
	- Criteria for adding new blocks:
		- **Meets Hash Target**
		- **Valid Transactions**
		- **Chain Consistency** (avoiding forks)
- **Node Definition**
	- Any device in the network capable of sending, receiving, or forwarding Bitcoin data.
	- Examples: Computers, smartphones, servers.
	- All nodes participate in **routing**; additional functionalities depend on node type.
- **Functionality of Nodes**
	- Nodes validate and propagate:
		- **Transactions**
		- **Blocks**
	- Nodes constantly **discover and connect to peers** to ensure resilience.
- **SPV (Lightweight) Nodes**
	- Store only **block headers** rather than full transaction data.
	- Depend on full nodes for **transaction verification**.
	- Commonly used in mobile wallets due to minimal storage needs.
- **Fully-Validating Nodes**
	- Maintain the **entire blockchain** (currently over 40 GB).
	- Contribute to network security by verifying and relaying every transaction.
	- Support the network’s decentralization and integrity.
## 2) Extended Bitcoin Network
- **Definition**: An expanded version of the Bitcoin P2P network, including specialized protocols and nodes.
- **Purpose**: Allows diverse devices and services to connect without needing full blockchain storage.
- **Components**:
	- **Stratum Protocol**: Used primarily by mining operations.
	- **Pool-Mining Protocols**: Enable pooled mining and reward distribution.
- **Node Types in the Extended Network**:
	- **Lightweight (SPV) Wallet**:
		- Includes **Wallet** and **Network Node** on the Bitcoin P2P protocol.
		- Operates without a blockchain, relying on full nodes for data verification.
	- **Pool Protocol Servers**:
		- **Gateway routers** linking the Bitcoin P2P network to nodes using other protocols (e.g., Stratum, pool mining).
	- **Mining Nodes**:
		- Contain the **mining function** only, with no blockchain storage.
		- Connect via **Stratum** or other **pool-mining protocols**.
	- **Lightweight (SPV) Stratum Wallet**:
		- Includes **Wallet** and **Network Node** on the Stratum protocol.
		- Relies on mining pools or gateways for blockchain data.
	- **Reference Client (Bitcoin Core)**:
		- Full node containing **Wallet**, **Miner**, **Blockchain Database**, and **Network Routing**.
		- Acts as the standard Bitcoin implementation.
	- **Full Blockchain Node**:
		- Stores the **entire blockchain** and functions as a **Network Routing Node**.
		- Does not necessarily perform mining or wallet operations.
	- **Solo Miner**:
		- Contains **mining functionality** with a full blockchain copy and **Network Routing**.
		- Operates independently on the Bitcoin P2P network, directly contributing to the blockchain.
## 3) Bitcoin Relay Networks
- **Purpose**: Enhance **block propagation speed**, reducing latency and aiding mining efficiency.
- **Example**:
	- **FIBRE (Fast Internet Bitcoin Relay Engine)** creates a high-speed overlay to expedite block transmission.
- **Value**: Reduces delays, especially beneficial for miners spread across different locations.
## 4) Bitcoin P2P Network
- **Decentralized Structure**: A mesh network without central control, nodes interconnect in an ad-hoc manner.
- **Node Types**:
	- **Full Nodes** with complete blockchain data
	- **SPV Nodes** for lightweight data access
	- **Mining Nodes**
	- **Wallet Nodes**
- **Communication**: Nodes connect via TCP (usually on port 8333) and share transaction/block data.
- **Connection Inactivity**: Nodes drop peers after 3 hours of inactivity to maintain network freshness.
- ### Joining the P2P Network
	- **Node Initialization**: New nodes join by connecting to existing peers.
	- **Handshake**:
		- Sends a **version** message with protocol version, services, and blockchain height.
		- Peers reply with `verack` to confirm the connection.
	- **Peer Discovery**:
		- DNS seeds and `addr` messages help nodes find peers.
		- `getaddr` requests retrieve additional IPs for redundancy.
- ### Transaction Propagation
	- **Mempool**:
		- Each node holds unconfirmed transactions in **temporary storage** until included in a block.
	- **Relaying**:
		- Nodes validate transactions before forwarding.
		- Transactions spread to all peers, ensuring network-wide visibility.
- ### Block Propagation
	- **Process**:
		- Blocks propagate similarly to transactions, spreading across the network.
		- Relaying new blocks to peers promotes consensus.
	- **Inventory (`inv`) Messages**:
		- Help nodes identify missing blocks or transactions, minimizing redundant data transmission.
- ### Should I Relay a Proposed Transaction?
	- **Relay Checks**:
		1. **Transaction Validation**: Transaction must be valid within the current blockchain context.
			- Nodes run scripts for each input to confirm it returns **true**.
		2. **Double-Spend Check**: Verifies that outputs being redeemed haven’t been spent.
		3. **Duplicate Check**: Avoids relaying transactions already seen, preventing redundancy.
		4. **Standard Script Requirement**: Only relays transactions with **"standard" scripts** (based on a whitelist) for compatibility.
	- **Efficiency**: These checks filter transactions, conserving network resources and supporting reliability.
## 5) Network Discovery
- **Peer Discovery**:
	- Nodes find peers using **DNS seeds** or by reconnecting with previous peers.
	- Nodes share **addr** messages to keep peer lists updated.
- **Resilience**:
	- Stale or inactive connections are dynamically replaced.
	- Ensures robust, decentralized connectivity.
## 6) Race Conditions
- **Cause**: Occurs when nodes receive competing blocks or transactions at nearly the same time.
- **Resolution**:
	- Nodes prioritize the **longest valid chain** to resolve conflicts.
	- This approach enables consensus and maintains network consistency.
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
	- **Holds (Stored as hex)**:
		- Account Address
		- Public Key
		- Private Key
	- Used for all 4 networks mentioned above
		- Account address has its own context for every network, value from one network does not work in the other
# Lecture 7-B: Ganache (Local TestNet)
## Ganache
- ### Trivia
	- Ganache GUI uses port 7545; CLI uses port 8545.
- ### Advantages
	- No need for test ether; you can self-award mining rewards for testing.
	- Test contracts locally without gas fees before deploying to the Ethereum mainnet.
	- Avoid delays in contract deployment by using a local Ganache setup with no other users.
	- Only your contracts are present, simplifying the testing process.
- ### Disadvantages
	- No other users means it doesn't replicate public blockchain behavior; no competition for transaction space.
	- Predictable mining lacks scenarios found on a public blockchain.
	- You must deploy all contracts and dependencies for testing, as no others are available.
# Lecture 7-C: Smart Contracts
## Boilerplate

```
//SPDX-License-Identifier: MIT                 <- Used to specify what license the contract falls under, generally MIT is best
pragma solidity >= X.X.XX < X.X.XX             <- Specify which compiler versions to support, can also use ^X.X.XX to include specified version and till the next breaking change

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