| Chapter<br>Number | Chapter<br>Name                       | Status             |
| ----------------- | ------------------------------------- | ------------------ |
| 1                 | Introduction                          | Skipped :x:        |
| 2                 | Towards decentralized P2P Currency    | :warning:          |
| 3                 | Intro to Crypto & Cryptocurrencies    | :warning:          |
| 4                 | How bitcoin achieves decentralization | :white_check_mark: |

# Chapter 2: Decentralized P2P Currency
## Currency
- May(not) have intrinsic value
	- Allows to store value instead of the object itself

### Types of Currency
- #### Ancient Coinage
- #### Paper Currency
- #### Fiat Currency
- #### Physical Currency
- #### Electronic Currency
- #### Non-Fiat (P2P) Currency

### Challenges of P2P Currency
- **Regulatory Issues**:
	- Lack of government control leads to regulatory uncertainty, making it difficult for P2P currencies to be legally accepted.
- **Security Risks**:
	- Vulnerable to hacking, fraud, and scams. P2P platforms can be exploited if proper security measures aren't in place.
- **Scalability**:
	- P2P networks may struggle to handle a large volume of transactions efficiently due to network congestion.
- **Volatility**:
	- P2P currencies like Bitcoin are highly volatile, which discourages their use as stable forms of payment.
- **Trust**:
	- Establishing trust between peers can be challenging without central authority, relying heavily on user reputation and the network's robustness.
- **Adoption**:
	- Limited acceptance compared to traditional fiat currencies, making it hard for users to rely on them for everyday transactions.

### BitCoin at a High Level
- **Definition**:
	- Bitcoin is a decentralized digital currency that operates without a central bank or single administrator, relying on peer-to-peer technology.
- **Blockchain**:
	- Bitcoin transactions are recorded on a public ledger known as the blockchain, which ensures transparency and prevents double-spending.
- **Decentralization**:
	- No central authority controls Bitcoin. Instead, the network is maintained by miners and nodes distributed globally.
- **Supply Limit**:
	- Bitcoin has a capped supply of 21 million coins, which makes it deflationary compared to fiat currencies.
- **Transactions**:
	- Users can send and receive bitcoins using digital wallets through encrypted transactions that are verified by miners.
- **Use Cases**:
	- Primarily used as a store of value and medium of exchange; Bitcoin is considered digital gold due to its scarcity and security.

### Mining
- **Purpose**:
	- Mining is the process by which new bitcoins are created and transactions are validated on the Bitcoin network.
- **Proof of Work**:
	- Miners solve complex cryptographic puzzles to add a new block of transactions to the blockchain, ensuring the integrity of the network.
- **Block Reward**:
	- Miners are rewarded with newly minted bitcoins and transaction fees for each block they successfully add to the blockchain.
- **Difficulty Adjustment**:
	- The mining difficulty adjusts every 2016 blocks (about two weeks) to ensure that blocks are mined approximately every 10 minutes, regardless of how many miners are participating.
- **Energy Consumption**:
	- Mining requires significant computational power and energy, leading to concerns about environmental impact.
- **Mining Pools**:
	- Many miners join mining pools to combine their computational power and share rewards, making it easier to earn bitcoins consistently.


---

# Chapter 3: Intro Crypto & Cryptocurrencies
## Cryptographic Hash Functions
## Hash Pointers & Data Structures
- Hash Pointers and Data Structures
	- hash pointer
		- pointer to where previous block is stored + cryptographic hash of that block
			- chain is structured in a way that a block that is not the genesis block will keep a tamper-sensitive record of all previous blocks in the chains and a pointer to the last directly accessible node
		- allows easy retrieval and then verification
		- NOTE:: Keep in mind the 3 properties of hash when solving hash problems later on
	- merkle tree
		- used for transaction verficaiton/checking if transaction exists in tree/chain
		- binary tree formed by hash pointers, stores hash of the chain not the actual data
			- if odd number of transactions to calc, duplicate the last stored hash node.
		- chain nodes are leaf nodes
		- root of tree aka as merkle root, i.e. hash of the whole chain/tree. represents integrity of entire set of data, value needs to be stored securely/obtained via a trustworthy mechanism
		- first transaction like a binary tree, is at the bottom leftmost
		- provides traversal efficiency
			- to check a certain block, use merkle proof
				- get one transaction, use hash of siblings to generate merkle root and compare w stored value
		- verifies membership in O(logn)
## Public Key Cryptography
## Public Key as Identities
## Simple Cryptocurrencies
---

# Chapter 4: How bitcoin achieves decentralization
## Centralization vs. Decentralization

| **Aspect**          | **Centralized Systems**                                                      | **Decentralized Systems**                                                                |
| ------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| **Control**         | Single entity or a small group controls most of the system.                  | Power and decision-making are distributed across many nodes.                             |
| **Examples**        | Webmail services like Gmail, centralized exchanges.                          | Bitcoin protocol, decentralized web protocols like HTTP, DNS.                            |
| **Security**        | Centralized authority ensures security but can be a single point of failure. | Security is distributed, making it harder for a single failure to compromise the system. |
| **Scalability**     | Easier to scale quickly due to central control.                              | More complex to scale due to decentralized nature.                                       |
| **Fault Tolerance** | Vulnerable to failure if the central authority is compromised.               | More resilient; failure of one node doesn’t collapse the system.                         |

### Distributed Consensus
- **What is Distributed Consensus?**:
    - A distributed consensus protocol ensures that all non-faulty (honest) nodes in a network agree on the same value, even in the presence of malicious or faulty nodes.
    - This protocol requires two properties:
        1. It must reach a conclusion with all honest nodes agreeing on the value.
        2. The final value must have been proposed by at least one correct node.
- **Challenges in Consensus**:
    - **Imperfect Networks**: In a peer-to-peer system like Bitcoin, not all nodes are connected, and some may not receive the same transaction data at the same time. Latency, node crashes, and malicious nodes contribute to difficulties in ensuring all nodes agree on a common state.
    - **Byzantine Generals Problem**: This is a metaphor for a situation in distributed systems where some participants might act maliciously. The problem shows that consensus is impossible if more than 1/3 of nodes are faulty or malicious.

### Byzantine Fault Tolerance (BFT)
- **Byzantine Faults**: Nodes in a distributed system may fail arbitrarily, sending conflicting information to other nodes. A Byzantine fault-tolerant system is one that can still reach consensus even when some nodes are acting maliciously.
    - **Example - Byzantine Generals Problem**: The analogy involves generals trying to agree on a plan of attack or retreat. If 1/3 or more generals are traitors, reaching consensus becomes impossible. This demonstrates why Bitcoin’s consensus protocol must account for dishonest nodes.

### Consensus Without Identity: The Blockchain
- **Why Identity Matters**: In systems with identifiable nodes, malicious behavior is easier to track. For example, nodes with identities can have designated roles (e.g., the node with the lowest ID takes an action), and malicious actors can be identified and removed from the system.
- **Bitcoin’s Lack of Identity**: Bitcoin's pseudonymous system intentionally makes identity tracking impossible, making the network vulnerable to Sybil attacks, where a malicious actor can generate many fake identities to manipulate the network.
- **Implicit Consensus (Bitcoin's Approach to Consensus)**:
	- If a node extends a chain from new block then it gets accepted however if a previous block is used then it is implicitly rejected. This prevents illegal branching within the chain
	    - **Random Node Selection**: Bitcoin randomly selects a node in each round to propose the next block. If the other nodes accept the block by building on top of it, consensus is implicitly achieved.
	    - **Block Containment**: Each block contains the hash of the previous block, ensuring that the chain grows sequentially, and the inclusion of a new block indicates acceptance of the previous block.
- **Consensus Algorithm**:
    - New transactions are broadcast to all nodes.
    - Each node collects new transactions into a block.
    - In each round, a random node gets to broadcast its block.
    - Other nodes accept the block only if all transactions in it are valid (unspent, valid signatures).
    - Nodes express their acceptance of the block by including its hash in the next block they create.
- **Possible Attacks**:
    - **Double Spend Attack**: A malicious node can attempt to spend the same coins twice. For instance, Alice could send a transaction to Bob and have it included in a block. However, if Alice is selected to propose the next block, she could create a new block that ignores the block containing her payment to Bob and instead includes a transaction where she spends the same coins elsewhere. If the network extends her fraudulent block, the payment to Bob becomes invalid and will never be confirmed.
    - **Denial of Service (DoS)**: A malicious node can exclude transactions from specific addresses (e.g., Bob’s transactions). However, this attack is limited because an honest node in the next round could include Bob’s transactions in their proposed block, effectively bypassing the malicious actor's interference.
- **Scenario: Malicious Transaction From Bob's Perspective**:
    - Bob, the merchant, hears about Alice's payment transaction over the network before it is included in a block. If Bob is too eager and allows Alice to download the software immediately, without waiting for block confirmations (a **zero-confirmation transaction**), Alice could quickly broadcast a conflicting transaction (a double-spend), and an honest node might include the new transaction in the next block.
    - A cautious merchant would wait for multiple block confirmations before releasing the software. If Alice successfully launches a double-spend attack, Bob will see that the block containing her payment has been orphaned, and he should abandon the transaction.
    - If, however, the next few nodes continue to build on the block containing Alice's payment to Bob, it becomes more likely that this transaction will be part of the long-term consensus chain, giving Bob confidence that the payment is valid.
## Incentives for Distributed Consensus
### Proof of Work (PoW)
- **Properties of PoW**
	- 1: Somewhat Difficult to compute i.e. Block Rewards
	- 2: Parameterizable Cost i.e. avg time b/w blocks dictates the probability that the next block is won by the owner
	- 3: Trivial to verify i.e. easy to calculate the block hash as nonce is provided as well which is part of Transaction fees
- **Incentives for Honest Behavior**:
    - Miners are rewarded with **newly created bitcoins (block rewards)** and transaction fees when they add valid blocks to the blockchain. Invalid blocks are rejected by the network, causing the miner to lose both the block reward and the energy invested in solving the hash puzzle.
    - **Cost of Attack**: Gaining control of 51% of the network’s hash power is economically prohibitive due to the immense cost of energy and hardware. This discourages large-scale attacks.
- **Hash Puzzles and Mining**:
    - **Hash Puzzle**: Miners must find a **nonce** such that the hash of the block (combining the previous block's hash, transactions, and the nonce) is smaller than a predefined target value. The goal is to make the hash start with a specific number of leading zeros.
	    - Such a goal is needed to make the hash difficult to compute **(Property 1 of PoW)**
    - **Mining Process**: Miners repeatedly try different nonce values until they find one that produces a valid hash. The successful miner broadcasts the block to the network, and other miners validate the block by checking its hash.
- **Mining Reward**:
    - Initially, miners were rewarded with **50 BTC** per block, and this amount halves approximately every four years. By 2040, the block reward will cease, and miners will rely solely on **transaction fees**.
    - **Finite Supply**: Bitcoin's total supply is capped at **21 million** coins, which helps ensure long-term value retention as scarcity increases over time.

### Double-Spending Attack
- **Definition**: A double-spend attack occurs when a user tries to spend the same bitcoin more than once by broadcasting two conflicting transactions.
    - **Example**: Alice sends bitcoin to Bob for a service, and simultaneously broadcasts another transaction to spend the same bitcoin to another address she controls.
- **Defense Mechanisms**:
    - **Longest Chain Rule**: Honest nodes follow the longest valid blockchain, ensuring that only one of the conflicting transactions (Alice → Bob or Alice → herself) gets confirmed.
    - **Confirmations**: The risk of a successful double-spend attack diminishes with each confirmation. Typically, after **six confirmations**, the transaction is considered highly secure.

### Mining Economics
- **Profitability**:
    - Miners earn rewards from block creation and transaction fees. Profitability is influenced by the **cost of electricity, mining hardware**, and **mining difficulty**.
- **Mining Farms**:
    - Large-scale operations, often located in areas with **cheap electricity and cool climates**, have an economic advantage due to economies of scale.
- **Malware Mining**:
    - Some attackers use malware to hijack computers, using the victim's resources (electricity and hardware) to mine cryptocurrencies for their own gain.

### Longest Chain Rule
- **Definition**: The longest chain with the most accumulated proof-of-work is the valid blockchain. Nodes always follow this chain to ensure consistency.
- **Useful**: When two blocks are mined at the same time while protecting blocks already on the blockchain
	- **Orphan Blocks**: Occasionally, two miners may produce blocks simultaneously, creating a temporary fork. The shorter chain eventually gets orphaned, and only the longest chain remains.

### Transaction Process
- **Broadcasting Transactions**:
    - Transactions are broadcast to all nodes. Each node validates them by checking the balance of the sender and verifying signatures.
- **Mempool**:
    - Unconfirmed transactions wait in the **mempool** until miners include them in a block.
	    - They have a continuation number of 0, it gets set to 1 when its posted on the blockchain.
    - Miners typically prioritize transactions based on the attached fees.
- **Miner Reward**:
    - Miners receive the block reward and transaction fees. They tend to prioritize transactions with higher fees to maximize their earnings.