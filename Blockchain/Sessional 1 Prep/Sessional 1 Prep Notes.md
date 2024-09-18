| Chapter<br>Number | Chapter<br>Name                       | Status      |
| ----------------- | ------------------------------------- | ----------- |
| 1                 | Introduction                          | Skipped :x: |
| 2                 | Towards decentralized P2P Currency    | :warning:   |
| 3                 | Intro to Crypto & Cryptocurrencies    | :warning:   |
| 4                 | How bitcoin achieves decentralization | :warning:   |

# Chapter 2: Decentrailized P2P Currency

---

# Chapter 3: Intro Crypto & Cryptocurrencies

---

# Chapter 4: How bitcoin achieves decentralization
### Centralization vs. Decentralization
| **Aspect**          | **Centralized Systems**                                                      | **Decentralized Systems**                                                                |
| ------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| **Control**         | Single entity or a small group controls most of the system.                  | Power and decision-making are distributed across many nodes.                             |
| **Examples**        | Webmail services like Gmail, centralized exchanges.                          | Bitcoin protocol, decentralized web protocols like HTTP, DNS.                            |
| **Security**        | Centralized authority ensures security but can be a single point of failure. | Security is distributed, making it harder for a single failure to compromise the system. |
| **Scalability**     | Easier to scale quickly due to central control.                              | More complex to scale due to decentralized nature.                                       |
| **Fault Tolerance** | Vulnerable to failure if the central authority is compromised.               | More resilient; failure of one node doesn’t collapse the system.                         |


#### Distributed Consensus
- **What is Distributed Consensus?**:
    - A distributed consensus protocol ensures that all non-faulty (honest) nodes in a network agree on the same value, even in the presence of malicious or faulty nodes.
    - This protocol requires two properties:
        1. It must reach a conclusion with all honest nodes agreeing on the value.
        2. The final value must have been proposed by at least one correct node.
- **Challenges in Consensus**:
    - **Imperfect Networks**: In a peer-to-peer system like Bitcoin, not all nodes are connected, and some may not receive the same transaction data at the same time. Latency, node crashes, and malicious nodes contribute to difficulties in ensuring all nodes agree on a common state.
    - **Byzantine Generals Problem**: This is a metaphor for a situation in distributed systems where some participants might act maliciously. The problem shows that consensus is impossible if more than 1/3 of nodes are faulty or malicious.

#### Byzantine Fault Tolerance (BFT)
- **Byzantine Faults**: Nodes in a distributed system may fail arbitrarily, sending conflicting information to other nodes. A Byzantine fault-tolerant system is one that can still reach consensus even when some nodes are acting maliciously.
    - **Example - Byzantine Generals Problem**: The analogy involves generals trying to agree on a plan of attack or retreat. If 1/3 or more generals are traitors, reaching consensus becomes impossible. This demonstrates why Bitcoin’s consensus protocol must account for dishonest nodes.

#### Consensus Without Identity: The Blockchain
- **Why Identity Matters**: In systems with identifiable nodes, it would be easier to track malicious behavior. For example, if nodes had identities, it could be possible to designate specific roles (like the node with the lowest ID takes a step) and remove malicious actors.
- **Bitcoin’s Lack of Identity**: Bitcoin's pseudonymous system makes identity tracking impossible by design, making it vulnerable to Sybil attacks, where a malicious actor could generate many fake identities to manipulate the network.
- **Implicit Consensus**:
    - **Random Node Selection**: In each round, Bitcoin selects a random node to propose the next block. If other nodes accept the block by building on it, consensus is implicitly achieved.
    - **Block Containment**: Each block contains the hash of the previous block, making the chain grow sequentially and ensuring nodes signal their acceptance by building on top of the accepted block.

#### Proof of Work (PoW)
- **Incentives for Honest Behavior**:
    - Miners are rewarded with newly created bitcoins (block rewards) and transaction fees when they add valid blocks to the blockchain. Invalid blocks do not get accepted, and the miner loses both the block reward and the energy invested in solving the hash puzzle.
    - **Cost of Attack**: Gaining control of 51% of the network’s hash power is economically prohibitive, thus discouraging large-scale attacks.
- **Hash Puzzles and Mining**:
    - **Hash Puzzle**: To add a new block, miners must find a nonce such that the hash of the block (previous block hash + transactions + nonce) is smaller than a target value.
    - **Mining Process**: Miners compete by repeatedly trying different nonce values until they find a valid hash. Once a valid hash is found, the miner broadcasts the block to the network, and other miners validate it.
    - **Visual Example**: The slides depict the mining process visually, showing blocks of transactions being added one after the other in a linear fashion, representing the blockchain. Each block is connected to the next via hash pointers.
- **Mining Reward**:
    - Initially, miners were rewarded with 50 BTC per block, but this reward halves roughly every four years. By 2040, no new bitcoins will be created, and miners will rely solely on transaction fees.
    - **Finite Supply**: The total supply of bitcoins is capped at 21 million. This scarcity is built into the protocol to ensure long-term value retention.

#### Double-Spending Attack
- **What is Double Spending?**: A double-spending attack occurs when a malicious user (e.g., Alice) spends the same bitcoins twice by manipulating the network. Alice could send a payment to Bob, but before the transaction is confirmed, she creates a conflicting transaction that sends the same coins to herself.
- **Defense Mechanisms**:
    - Honest nodes always extend the longest valid blockchain. If a double-spend is detected, the chain containing the fraudulent transaction is rejected.
    - **Visual Example**: The slides show an example of Alice attempting a double-spend, where two conflicting transactions (paying Bob and paying herself) are broadcasted. The network rejects the shorter chain containing the double-spend.
- **Confirmations**: A common heuristic is to wait for six confirmations (blocks) before considering a transaction final. Each confirmation exponentially reduces the probability of a successful double-spend.


#### Mining Economics
- **Profitability**: Mining is profitable if the reward (block reward + transaction fees) exceeds the cost of hardware and electricity. As the block reward diminishes, miners will increasingly rely on transaction fees.
- **Mining Farms**: The slides depict professional mining centers, which operate in locations with cheap electricity and favorable climates. These centers dominate the Bitcoin mining landscape due to their economies of scale.
- **Malware Miners**: Some malicious actors use malware to mine cryptocurrencies using someone else’s resources (e.g., their electricity and CPU).


#### Longest Chain Rule
- **What is the Longest Chain Rule?**: The longest chain in the Bitcoin network is the chain with the most computational work behind it. Nodes adopt this chain as the valid blockchain, ensuring consistency across the network.
- **Orphan Blocks**: Sometimes, two miners solve the hash puzzle at the same time, resulting in two valid blocks. This creates a temporary fork in the chain, but eventually, one chain becomes longer, and the other becomes an orphan block.
    - **Visual Example**: The images illustrate how two miners could mine blocks simultaneously, leading to two competing chains. Eventually, the network resolves this by adopting the longest chain, leaving the other block orphaned.

#### Transaction Process
- **Broadcasting Transactions**: When a Bitcoin transaction is created, it is broadcast to the network. Nodes validate the transaction by checking whether the user has enough funds and whether the transaction is properly signed.
- **Mempool**: Verified transactions are added to a waiting area called the mempool. When a miner successfully solves a block, they include transactions from the mempool in the block.

    - **Miner Reward**: The miner who successfully mines a block is rewarded with both the block reward and the transaction fees. The order in which transactions are included in the block is determined by the miner, who may prioritize transactions with higher fees.
    - **Visual Representation**: The images show how miners add transactions from the mempool to a new block and broadcast it to the network.