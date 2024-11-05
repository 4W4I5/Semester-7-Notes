| Chapter<br>Number | Chapter<br>Name                                    | Status             |
| ----------------- | -------------------------------------------------- | ------------------ |
| 5                 | Mechanics of Bitcoin + Bitcoin Transactions slides | :white_check_mark: |
| 6                 | The bitcoin network                                | :white_check_mark: |
| 7-Intro           | Introduction to Ethereum                           | :white_check_mark: | 
| 7-A               | Interfacing with Ethereum                          | :white_check_mark: |
| 7-B               | Ganache (Local TestNet)                            | :white_check_mark: |
| 7-C               | Smart Contracts                                    | :white_check_mark: |

> [!WARNING]
> - Lecture 5 and the unnumbered lecture have a lot of similar content, merged the two
> - Moved P2SH from Lecture 7-Intro to Lecture 5 with the other locking scripts

# Lecture 5: Mechanics of Bitcoin
## 1) Transaction Input & Outputs
### Transaction Inputs & Outputs
- **Inputs** represent "debits," referencing previous transaction IDs. They’re indexed, allowing precise identification of the value sent to an address. Each input is a reference to a previous Unspent Transaction Output (UTXO).
- **Outputs** act as "credits," indicating the value added to a recipient’s account. Signing a transaction spends or assigns these outputs to a new owner's address.
### Splitting & Merging Value of Coins
- **Splitting**: To pay an amount (e.g., X BTC), if Alice only has X+N BTC, she can split by paying herself N BTC and use the remaining X BTC for the transaction.
    - This creates a new UTXO with the correct amount, traceable to the original UTXO.
- **Merging**: If Bob receives 15 BTC from Sender1 and 5 BTC from Sender2, he can create a new transaction with two inputs, merging them into a 20 BTC UTXO.
### Multiple Inputs & Transaction Fees
- Transactions can include multiple inputs from different owners, requiring all signatories to sign.
- **Fee Structure**: Inputs + transaction fees must equal Outputs. (Outputs are slightly less, with the difference being the transaction fee).
- **Coinbase Transactions**: These are initial transactions that introduce new BTC into circulation as mining rewards and do not have any inputs.
### Validity Rules
- A transaction is invalid if:
    - It’s not signed by the input owner(s).
    - The sum of all inputs and outputs isn’t zero.
## 2) UTXOs (Un-numbered slides) + Scripts
- ### Unspent Transaction Outputs (UTXOs)
	- **UTXOs (Unspent Transaction Outputs)**:
		- Every Bitcoin transaction generates UTXOs, representing the "leftover" value after a transaction, which can be used as inputs in future transactions. UTXOs track unspent funds associated with each address, preventing double-spending and preserving Bitcoin's accounting integrity.
	    - **Analogy**:
		    - Similar to receiving change after a cash transaction, where a large denomination is split into smaller units. For example, if you pay 3 BTC out of 5 BTC coin you own, you receive a 2 BTC UTXO as "change."
	- #### Block Mining Recap
		1. **Transaction Initiation**:
			- When a transaction is made (e.g., from sender A to receiver B), it’s first sent to the network.
		2. **Broadcasting**:
			- The transaction is broadcasted across the Bitcoin network nodes.
		3. **Inclusion in a Block**:
			- A miner selects the transaction from the mempool (a pool of pending transactions) and, upon successfully solving the consensus puzzle, includes it in a new block.
		4. **Verification & Consensus**:
			- Other nodes verify the block's validity and, upon consensus, add it to their copy of the blockchain ledger.
	- #### Bitcoin Batches & Locking/Unlocking Scripts
		- **UTXO Batches**:
			- Multiple UTXOs can be aggregated for efficiency, allowing a single transaction to reference several UTXOs as inputs, which can then be spent in multiple outputs.
		- **Locking Scripts (ScriptPubKey)**:
			- Every UTXO is "locked" using a script that associates it with the recipient's public key. This script defines the conditions needed to spend the UTXO.
		- **Unlocking Scripts (ScriptSig)**:
			- When spending a UTXO, the sender provides an unlocking script (usually their digital signature), allowing the transfer. This signature is proof of ownership for the specific UTXO.
	- #### Coinbase Transactions
		- **Coinbase Transaction**:
			- The only method to introduce new Bitcoin into the system, the Coinbase transaction is the miner’s reward for successfully mining a block. It has no inputs and generates the reward directly as a new UTXO.
		- **Reward Composition**:
			- This reward includes newly minted BTC and the transaction fees collected from other transactions within the block, incentivizing miners to prioritize transactions with higher fees.
- ### Scripts
	- Bitcoin scripts, used within transactions, rely on a stack-based execution model similar to **lexical analysis**.
	- #### Script Execution with a Stack
		- **Example Script**: `2 7 OP_ADD 3 OP_SUB 1 OP_ADD 7 OP_EQUAL`
			- The script pushes operands onto the stack until an operator appears. Upon an operator, the necessary operands are popped from the stack, the operation is performed, and the result is pushed back.
			- This process can handle **nested operations** and ensures that each result is computed before moving to the next operation.
	- #### Common Script Operators
		- **OP_DUP**: Duplicates the top operand on the stack.
		- **OP_HASH160**: Hashes the top stack element twice, first with SHA-256 and then with RIPEMD-160, a common operation in address generation and verification.
		- **OP_EQUALVERIFY**: Compares the top two stack elements for equality; if not equal, the transaction fails.
		- **OP_CHECKSIG**: Verifies a digital signature against a public key, ensuring the sender authorized the transaction.
		- **OP_CHECKMULTISIG**: Checks multiple signatures against provided public keys, useful for multi-signature transactions.
	- ### Bitcoin Transactions Using Scripts
		- **Address Generation Recap**: Bitcoin addresses are generated by hashing a public key using `OP_HASH160`, adding a version byte in front and a checksum at the end, and then encoding the result in Base58.
		- **Basic Transaction Flow**: When Alice sends a transaction to Bob, Bob’s address is derived from his public key, and he can later spend the transaction by providing proof of ownership with his private key.
	- #### Types of Locking Scripts (ScriptPubKey)
		- Locking scripts are conditions included with each transaction output, specifying what’s required to spend it.
	1. **Pay-to-Public-Key (P2PK)**
		- Script: `<rSIG> <sPUBKEY> OP_CHECKSIG`
		- **Unlocking (scriptSig)**: The recipient must provide a valid signature using their private key and include their public key. The `OP_CHECKSIG` operation then verifies the provided signature against the public key, ensuring the transaction’s authenticity.
	2. **Pay-to-Public-Key-Hash (P2PKH)**
		- Script: `<rSIG> <rPUBKEY> OP_DUP OP_HASH160 <sPUBKEYHASH> OP_EQUALVERIFY OP_CHECKSIG`
		- **Process**: The sender specifies a public key hash, and the recipient provides their signature and public key.
		- **Steps**:
		    - `OP_DUP` duplicates the public key.
		    - `OP_HASH160` hashes the public key.
		    - `OP_EQUALVERIFY` checks that this hash matches the specified public key hash.
		    - `OP_CHECKSIG` verifies the signature against the public key.
		- **Note**: In the script notation above, `s` (sender) and `r` (receiver) prefixes denote the parts of the script each party provides.
	3. **Pay-to-Script-Hash (P2SH)**
	    - **Purpose**: P2SH enables transactions with custom locking conditions. Instead of specifying a public key, the sender specifies a hash of a redeem script, which contains the spending conditions.
	    - **ScriptPubKey**: `<rSIG> <redeemScriptHash> OP_EQUAL`
	    - **Redeem Script**: The recipient provides a **redeem script** (a custom set of instructions) whose hash matches the one specified by the sender.
	    - **Unlocking (scriptSig)**: To unlock a P2SH output, the recipient provides:
	        - The **redeem script** (whose hash matches the `redeemScriptHash`).
	        - The required inputs or signatures as per the redeem script.
	    - **Verification**:
	        - The transaction checks that the hash of the redeem script matches `redeemScriptHash` provided by the sender.
	        - Then, the script interpreter runs the redeem script to ensure all conditions (e.g., signatures) are met.
		- ###### Example of P2SH with a Multi-Signature Redeem Script
			- For instance, a P2SH address could be set up with a redeem script that requires multiple signatures, such as **2-of-3** multisig:
		- **ScriptPubKey** (locking script): `<redeemScriptHash> OP_EQUAL`
		- **Redeem Script**: `OP_2 <pubKey1> <pubKey2> <pubKey3> OP_3 OP_CHECKMULTISIG`
		    - This script specifies that any two out of three provided public keys must sign the transaction to unlock it.
		- **scriptSig** (unlocking script): `<rSIG1> <rSIG2> <redeemScript>`
			- In this setup:
				- The redeem script (included in the transaction by the spender) matches the `redeemScriptHash` set by the sender.
				- `OP_CHECKMULTISIG` then verifies that two valid signatures out of three are present, satisfying the redeem script.
		- ##### Pay-to-Script-Hash (P2SH) Stack Execution for 2-of-3 Multi-Signature
			- **Scenario Setup:**
				- **ScriptPubKey (Locking Script):** `<redeemScriptHash> OP_EQUAL`
				- **Redeem Script:** `OP_2 <pubKey1> <pubKey2> <pubKey3> OP_3 OP_CHECKMULTISIG`
				- **scriptSig (Unlocking Script):** `<rSIG1> <rSIG2> <redeemScript>`
			- **Execution Stages:**
				- **Stage 1: Unlocking Script Execution**
					- Push `rSIG1` onto the stack: `[rSIG1]`
					- Push `rSIG2` onto the stack: `[rSIG1, rSIG2]`
					- Push `RedeemScript` onto the stack: `[rSIG1, rSIG2, RedeemScript]`
					- Hash the `RedeemScript` and compare with `<redeemScriptHash>`
						- Push `redeemScriptHash` from ScriptPubKey: `[rSIG1, rSIG2, RedeemScript, redeemScriptHash]`
						- `OP_EQUAL`: Checks if `RedeemScript` hash matches `redeemScriptHash`; if true, moves to Stage 2, else fails.
				- **Stage 2: Redeem Script Execution (Multi-Signature Verification)**
					- Push `OP_2` (number of required signatures): `[rSIG1, rSIG2, 2]`
					- Push `<pubKey1>`, `<pubKey2>`, and `<pubKey3>`: `[rSIG1, rSIG2, 2, pubKey1, pubKey2, pubKey3]`
					- Push `OP_3` (total number of public keys): `[rSIG1, rSIG2, 2, pubKey1, pubKey2, pubKey3, 3]`
					- `OP_CHECKMULTISIG`:
						- Pops `3` (public key count) and `2` (required signature count)
						- Verifies `rSIG1` and `rSIG2` match any two of the public keys provided
			- If both signatures match the required public keys, the script returns true, validating the transaction; otherwise, it fails.

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
## 1) Accounts in Ethereum
- ### Types of accounts
	- **Externally Owned Accounts**
		- Have their own Private key
			- Can control access to their funds/contracts
		- Can initate transactions
	- **Contract Accounts**
		- Has smart contract code, EOAs do not have this
		- Owned + controlled by the logic of its own code
		- Can only react to transactions or call other contracts (inheritance)
## 2) Contracts
- Have their own addresses, just like EOA. Can send/receive funds if marked payable in code
- Contain functions that transactions can call
- Contracts are executed by a transaction by setting one of its outputs to the transaction address
	- The state of the contract is then saved on the blockchain as it is a transaction
## 3) Ethereum Virtual Machine
- Multiple clients in various programming languages
	- All synced via the web3 API that uses JSON-RPC
	- Kind of follows the old client-server model
## 4) Turing Completeness & implications
- Halting problem, no way to determine how much execution time a program will take
- Possibility of a DOS attack on the blockchain by running a neverending contract
- Fix?
	- Implementation of Gas fee
	- Every write to the state consumes a gas fee that the sender has to pay to the contract
	- Gas is calculated based on the complexity of the contract, every instruction accounts for some level of gas fees
	- Allows for execution to stop when an address is out of gas
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