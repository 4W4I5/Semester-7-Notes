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
- **Decentralization Spectrum**: Decentralization is not absolute.
    - **Email Example**: While email was initially decentralized, most users rely on centralized services like Gmail for convenience and security.
    - **Web Example**: Although the core protocols of the web (HTTP, DNS) allow for decentralized communication, control over content and traffic has become concentrated in a few centralized entities.
- **Bitcoin and Decentralization**:
    - Bitcoin's protocol remains decentralized, but centralized entities like exchanges and wallet providers exist.

### Distributed Consensus
- **Properties of Distributed Consensus**: Ensures that all honest nodes agree on a value, and that the value proposed comes from a valid node.
- **Challenges**:
    - Imperfect networks (e.g., latency, faulty nodes) make achieving consensus difficult.
    - Nodes may not all agree on the order of events due to network faults or different versions of the transaction pool.
    - The Byzantine Generals Problem shows that achieving consensus is difficult when some nodes are faulty or malicious.

### Byzantine Fault Tolerance (BFT)
- **Byzantine Faults**: Faulty nodes may provide conflicting information to different parts of the network.
- **Byzantine Generals Problem**: In a network where at least 1/3 of nodes are faulty, consensus cannot be reliably achieved. This demonstrates the importance of fault-tolerant systems for achieving distributed consensus in Bitcoin.

### Consensus without Identity: The Blockchain
- **Why Identity Matters**: In systems with identifiable nodes, malicious behavior could be traced, simplifying consensus. However, Bitcoin avoids identity due to privacy goals and the risk of Sybil attacks (where a malicious user controls multiple fake nodes).

- **Implicit Consensus**:

    - Bitcoin does not use a leader-based consensus but relies on random node selection to propose new blocks.
    - A block is accepted if other nodes build on it; otherwise, it's implicitly rejected if ignored in favor of earlier blocks.

### Proof of Work (PoW)
- **Incentives and Honest Behavior**:
    - Miners are rewarded with new bitcoins and transaction fees for creating valid blocks.
    - Invalid blocks result in lost rewards and energy, encouraging miners to act honestly.
- **Hash Puzzles**:
    - To add a block, miners must find a nonce that, when hashed with the previous block and transactions, produces a hash smaller than the target.
    - As computing power increases, so does the difficulty of finding a valid nonce.
- **Block Creation and Reward**:
    - The block reward incentivizes miners to add valid blocks to the blockchain. The current reward halves approximately every four years, with an eventual cap of 21 million bitcoins in circulation.

### Double-Spending Attack
- **Attack Vector**: A malicious node could attempt to include a transaction paying itself instead of an earlier transaction paying someone else (e.g., Alice trying to pay both Bob and herself).
- **Mitigation**: Honest nodes extend the longest valid chain, which is typically the one with the most confirmations. After six confirmations, the risk of a double-spend attack succeeding is extremely low.

### Mining Economics
- **Costs and Rewards**:
    - Profitability depends on balancing the reward from mining (block reward + transaction fees) against the costs (hardware and electricity).
    - Mining rewards decrease over time as the block reward reduces, leading to an increased reliance on transaction fees for profit.
- **Mining Farms**: Professional mining operations, often located in areas with cheap electricity and cool climates, dominate the mining landscape.

### Longest Chain Rule
- **Longest Chain Rule**: Bitcoin nodes follow the chain with the most accumulated work, ensuring that the longest chain remains the valid blockchain.
- **Orphan Blocks**: Sometimes, two blocks are mined simultaneously, creating a temporary fork. Eventually, the network resolves this by adopting the chain with the most accumulated work, and the shorter chain becomes an orphan.

### Transaction Process
- **Broadcasting Transactions**: When a Bitcoin transaction is made, it is broadcasted to the network. Nodes verify its validity and add it to a pool of unconfirmed transactions.
- **Mempool and Mining**: Unconfirmed transactions wait in the mempool until a miner includes them in a new block. The miner that solves the PoW puzzle broadcasts the block to the network, and other miners validate it.