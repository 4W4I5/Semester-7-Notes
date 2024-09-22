| Chapter<br>Number | Chapter<br>Name                       | Status             |
| ----------------- | ------------------------------------- | ------------------ |
| 1                 | Introduction                          | Skipped :x:        |
| 2                 | Towards decentralized P2P Currency    | :white_check_mark: |
| 3                 | Intro to Crypto & Cryptocurrencies    | :white_check_mark: |
| 4                 | How bitcoin achieves decentralization | :white_check_mark: |

# Chapter 2: Decentralized P2P Currency
## Currency
- May(not) have intrinsic value
	- Allows to store value instead of the object itself
### Types of Currency
- #### Ancient Coinage
  - **Based on**: Precious metals
  - **Value**: Derived from the value of the metal
  - **Advantages**:
    - Even fake gold is still valuable, as creating diluted metals is technologically challenging.
    - Limited mining technology makes it difficult to flood the market, making minting rare.
  - **Problems**:
    - Hard to manage and store large amounts of physical currency.
    - Requires raw materials to mint.
    - Value fluctuates due to speculation.
- #### Paper Currency
  - **Type**: Exchangeable commodity
  - **Value**: Determined by the issuing authority based on gold reserves.
  - **Advantages**:
    - Easier to carry with large denominations available.
    - Issuing authority can inflate or deflate the currency as needed.
  - **Disadvantages**:
    - Risk of counterfeiting.
    - Prone to runaway inflation if too much currency is printed.
    - Bank runs can occur if banks don’t have enough gold to convert.
- #### Fiat Currency
  - **Type**: Not linked to precious metals, similar to paper currency.
  - **Use**: Can be electronic, denominated by fiat.
    - Transaction fees incentivize participation.
    - EC (Electronic Currency) systems prevent entities from minting more than they have contributed.
  - **Why it works**:
    - **Social Contract**: The value is agreed upon and built on trust.
    - **Centralized Power**: Governments can enforce taxation and accept fiat currency as tax payment.
  - **Advantages**:
    - Similar to paper currency but doesn’t require gold reserves.
  - **Problems**:
    - Requires additional trust in the issuing authority (IA).
    - Similar risks as paper currency, including inflation and mismanagement.
- #### Non-Fiat (P2P) Currency
	- **Goal**: Create digital currency without centralized control.
	- **Concept**: Store and transfer value without commodities or central banks. Anyone can join and participate.
	- **Example**: Bitcoin, invented by Satoshi Nakamoto in 2009, is the first widely adopted non-fiat electronic currency.
		- Released as a whitepaper and open-source software.
		- Built on a decentralized peer-to-peer (P2P) network.
		- Participants validate transactions and mint currency.
		- System relies on the majority of users being honest (quorum).
	- **Challenges in P2P Currency**:
		- **Ownership**: Determining who owns a unit of currency is difficult.
		- **Without strong ownership**:
		- **Forgery**: Users could mint fake currency.
		- **Double-spending**: Ensuring the same currency isn’t spent twice is challenging.
		- **Theft**: Hard to distinguish true ownership claims from false ones.

### Physical Currency VS Electronic Currency

| **Feature**       | **Physical Currency**                                     | **Electronic Currency**                                        |
| ----------------- | --------------------------------------------------------- | -------------------------------------------------------------- |
| **Advantages**    | - Easily portable                                         | - Works online                                                 |
|                   | - Cannot double spend (pseudoserialized banknotes)        | - Easy for issuing authority to monitor, tax, and control      |
|                   | - Cannot repudiate payment (irreversible once given)      | - Cannot double-spend                                          |
|                   | - Semi-anonymous with limited tracking                    | - Transactions can be repudiated (e.g., chargebacks)           |
|                   | - Issuing Authority (IA) can inflate/deflate as necessary |                                                                |
| **Disadvantages** | - Easy to steal (bearer token)                            | - Requires trust in the issuing authority and third parties    |
|                   | - Hard to monitor or tax (semi-anonymous)                 | - Manual oversight and auditing needed                         |
|                   | - Requires trust in centralized issuing authority         | - Issuing authority or third parties may prohibit transactions |
|                   | - Cannot be used for online transactions                  | - High transaction fees                                        |
|                   |                                                           | - No privacy (all transactions are monitored)                  |

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

A **hash function** processes an input of arbitrary size and produces a fixed-size output (e.g., 256 bits). It must be computationally efficient, meaning the time to compute the hash should scale linearly with the input size. A general-purpose hash function can be used for data structures like hash tables, but **cryptographic hash functions** require additional properties:

1. **Collision-Resistance**:
	- A cryptographic hash function is resistant to collisions if it is computationally infeasible to find two distinct inputs (x and y, where x ≠ y) such that `H(x) = H(y)`. Although collisions theoretically exist (because the input space is infinite and the output space is finite), the goal is to make finding them practically impossible.
	- Example: For SHA-256, you’d need to hash 2^128 inputs before finding a collision, which would take more time than the universe’s age, even with modern computing power.
1. **Hiding**:
	- If `y = H(x)`, it must be infeasible to figure out the input `x` from the output `y`. This requires the input `x` to be unpredictable, often achieved by combining it with a randomly chosen value (nonce).
	- For example, if you hash "heads" or "tails," it's easy to reverse the process if there are only two options. To prevent this, the input is typically combined with a random nonce: `H(r || x)`.
1. **Puzzle-Friendliness**:
	- A hash function is puzzle-friendly if, given a target output `y`, finding an input `x` such that `H(k || x) = y` is computationally infeasible. This property ensures that no shortcuts exist in the computation, forcing attackers to perform a brute-force search.
### Applications of Hash Functions
- **Message Digests**:
	- Hashes can be used to verify the integrity of data without storing or comparing the entire file. For instance, Alice can hash a file before uploading it to the cloud and later verify that the file hasn’t been tampered with by checking the hash.
- **Commitment Schemes**:
	- A **commitment** is like placing a secret value inside a sealed envelope, where you can’t change the content after committing, but the content remains hidden until revealed.
	- A commitment scheme is constructed using a cryptographic hash, where the commitment is computed as `H(nonce || msg)`, and the commitment is verified by providing both `nonce` and `msg` to ensure it matches the original.
## Hash Pointers and Data Structures

A **hash pointer** is a data structure that combines a pointer to data with the cryptographic hash of that data. The hash serves two purposes:

1. It points to the location of the data.
2. It verifies the integrity of the data, ensuring that it hasn’t been altered.
The hash pointer allows us to build more complex data structures like **blockchains** and **Merkle trees** with tamper-evident properties.

### **Blockchain Using Hash Pointers**
- In a **blockchain**, each block contains data and a hash pointer to the previous block, forming a chain of blocks. The hash pointer ensures that any tampering with a block’s data would break the hash chain.
- The blockchain is **tamper-evident**: If an adversary modifies the data in any block (say, block `k`), the hash pointer in the subsequent block (`k+1`) would no longer match, revealing the tampering.
- This makes blockchains suitable for building systems that need tamper-evidence, such as **cryptocurrencies**, where blocks represent transaction histories.
- The first block in the chain is called the **genesis block**, and the head of the chain holds the hash pointer that links the entire blockchain. As long as the head pointer is secure, the entire chain remains tamper-evident.

### **Merkle Trees**
- A **Merkle tree** is a binary tree where each leaf node represents a block of data, and every non-leaf node stores the hash of its child nodes.
- To verify that a particular data block exists in the tree, you don’t need to hash the entire tree. Instead, you can compute hashes along the path from the leaf node to the root, comparing only a logarithmic number of nodes.
- **Proof of Membership**: If someone wants to prove that a particular data block is in a Merkle tree, they only need to provide the block itself and the hash pointers along the path from the block to the root of the tree. This allows quick verification without needing the entire tree.
- **Proof of Non-Membership**: In a **sorted Merkle tree** (where leaf nodes are sorted lexicographically), it’s possible to prove that a specific block doesn’t exist. To do so, you show the neighboring blocks before and after the missing block’s position. If these two blocks are consecutive, it proves the absence of the queried block.

#### Merkle Tree Use Case in Cryptocurrencies:
- **Efficient Membership Proof**: Instead of verifying the entire blockchain for transaction history, cryptocurrencies like **Bitcoin** use Merkle trees to verify specific transactions efficiently. The root of the Merkle tree represents the entire set of transactions in a block, and the tree allows anyone to verify a specific transaction’s inclusion by providing just the relevant hashes along the path to the root.

### **Merkle-Damgård Construction**
- This construction extends a hash function that operates on fixed-size inputs into one that works on inputs of arbitrary size.
- The input data is broken into blocks, each block is hashed using the hash function, and the result of each hash is passed into the next block. For the first block, an **initialization vector (IV)** is used, which is a predetermined constant.
- The Merkle-Damgård construction ensures that if the underlying fixed-length hash function is collision-resistant, the overall function will be collision-resistant.

## Digital Signatures

A **digital signature** is the digital equivalent of a handwritten signature. It guarantees that:

1. Only the holder of the private key can generate the signature.
2. Anyone with the public key can verify the signature’s validity.
3. The signature is tied to the specific document and cannot be transferred to another.

### **Signature Scheme Components**
1. **Key Generation**: A pair of keys (public and private) is generated.
2. **Signing**: The private key signs a message.
3. **Verification**: The public key verifies the signature.

### **Properties**:
1. **Unforgeability**:
	- It’s computationally infeasible for an attacker to forge a valid signature without the private key, even if they have access to the public key and other signed messages.

2. **Existential Unforgeability**:
	- An attacker cannot forge a valid signature for a new message, even after seeing multiple valid signatures for other messages.

### **ECDSA**: Bitcoin’s signature scheme is based on **Elliptic Curve Digital Signature Algorithm (ECDSA)**, a secure elliptic curve-based scheme.
- **Private Key**: 256 bits
- **Public Key**: 512 bits (uncompressed) or 257 bits (compressed)
- **Message to Sign**: 256 bits (usually a hash of the actual message)

### **Signature of Hash Pointers**:
- In systems like blockchains, signing a **hash pointer** is equivalent to signing the entire chain of data it points to. This means that signing the head of a blockchain effectively signs all the previous blocks.

## Public Keys as Identities

In decentralized systems, a **public key** acts as an identity. If a message is signed by a private key, and the signature can be verified using the public key, then it is as if the public key “spoke” the message.

### **Decentralized Identity Management**
- In decentralized systems like **Bitcoin**, users generate their own identities by creating a new key pair. No central authority is needed to issue identities or manage registration.
- These identities are referred to as **addresses** in Bitcoin, which are just hashes of public keys. Users can generate and discard new identities freely, enhancing privacy.


## Simple Cryptocurrency Models
### **GoofyCoin**
- **Creation**: Goofy can create new coins by signing a statement with a unique coin ID.
- **Transfer**: Owners transfer coins by signing statements that specify the new owner’s public key.
- **Double-Spending Problem**: GoofyCoin doesn’t prevent double-spending, where the same coin is transferred to multiple recipients.

### **ScroogeCoin**
- **Append-Only Ledger**: Scrooge publishes a **blockchain** containing all transactions. This prevents double-spending, as any transaction not in the blockchain is invalid.
- **Centralization Issue**: Scrooge has control over the ledger and can deny transactions or mint new coins arbitrarily, making the system centralized.

## Exercises From the Book
### 1. Authenticated Data Structures (SecureBox)

**Question**: You are designing SecureBox, an authenticated online file storage system. For simplicity, there is a single folder. Users must be able to add, edit, delete, retrieve files, and list the folder contents. When a user retrieves a file, SecureBox must provide proof that the file hasn’t been tampered with since its last update. If a file doesn’t exist, the server must report that — with proof. The goal is to minimize proof size, verification time, and digest size. Can you devise a protocol where proof size, verification time, and digest size are all sublinear?

**Answer**:

To achieve sublinear efficiency, we can use **Merkle Trees**. Here’s how the solution works:

- **Merkle Tree Structure**: Each file is stored as a leaf node in a Merkle tree. The root of the Merkle tree acts as the **digest** that the user stores.
- **Operations (Add/Delete/Edit)**:
	- For these operations, only the affected leaf node and the path to the root need updating. This ensures sublinear changes to the tree.
- **Verification**:
	- When retrieving a file, the server provides the file’s hash and the hash values along the path to the root.
	- The user verifies the integrity by recomputing the path from the file to the root, checking against the stored digest.
- **Proof Size and Verification Time**:
	- Since the proof only requires the path from the file to the root, the proof size and verification time are `O(log n)`, where `n` is the number of files.
- **Digest Size**:
	- The digest remains a constant `O(1)`, as it only stores the root hash.
### 2. Birthday Attack

**Question 1**: Show that the time-space trade-off is parameterizable: we can achieve any space complexity between `O(1)` and `O(2^(n/2))` with a corresponding decrease in time complexity.

**Answer**:

The **time-space trade-off** is parameterized by choosing a variable number `t` between `1` and `2^(n/2)` for the space complexity. By storing `t` hash outputs:

- The time complexity to find a collision is reduced to `O(2^n / t^2)`.
- The space complexity is `O(t)`.
Thus, we can adjust `t` to achieve any space complexity between `O(1)` (with time `O(2^n)`) and `O(2^(n/2))` (with time `O(2^(n/2))`).

**Question 2**: Is there an attack for which the product of time and space complexity is `o(2^n)`?

**Answer**:

No, there is no known attack where the product of time and space complexity is less than `2^n`. The **birthday paradox** provides the best known trade-off, where the product remains `O(2^n)`. Achieving an attack with a product complexity of `o(2^n)` is currently infeasible in cryptographic contexts.

### 3. Hash Function Properties

**Question**: Let `H` be a hash function that is both hiding and puzzle-friendly. Consider `G(z) = H(z) || z_last`, where `z_last` represents the last bit of `z`. Show that `G` is puzzle-friendly but not hiding.

**Answer**:

- **Puzzle-Friendliness**:
  `G(z)` retains the puzzle-friendliness of `H(z)` because solving for `G(z)` requires solving the hash function `H(z)`, which remains computationally hard. The additional `z_last` bit doesn’t provide shortcuts, so `G(z)` is puzzle-friendly.
- **Not Hiding**:
  `G(z)` is **not hiding** because `z_last`, the last bit of the input `z`, is appended directly to the output, leaking part of the input. This compromises the hiding property, as an attacker gains partial knowledge of `z`.

### 4. Randomness in ScroogeCoin

**Question**: In ScroogeCoin, if Mallory generates `(sk, pk)` pairs until her secret key matches someone else’s, what will she be able to do? How long will it take on average? What happens if Alice’s random number generator has a bug and her key generation produces only 1,000 distinct pairs?

**Answer**:

- **Matching Secret Key**:
  If Mallory’s secret key matches someone else’s public key, she can impersonate that person by signing transactions on their behalf. However, since ScroogeCoin uses 256-bit keys, the probability of matching is `1 in 2^256`, making this attack infeasible.
- **Average Time to Match**:
  On average, it would take **2^256 attempts** to find a matching secret key, which is practically impossible even with immense computing power.
- **Alice’s Bug**:
  If Alice’s random number generator is faulty and only produces 1,000 distinct key pairs, Mallory can simply brute-force the 1,000 possibilities. This would take at most 1,000 attempts, making the system easily compromised.

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