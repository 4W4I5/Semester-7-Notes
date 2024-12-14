| Chapter<br>Number | Chapter<br>Name                                    | Status             |
| ----------------- | -------------------------------------------------- | ------------------ |
| 1                 | Introduction                                       | Skipped :x:        |
| 2                 | Towards decentralized P2P Currency                 | :white_check_mark: |
| 3                 | Intro to Crypto & Cryptocurrencies                 | :white_check_mark: |
| 4                 | How bitcoin achieves decentralization              | :white_check_mark: |
| 5                 | Mechanics of Bitcoin + Bitcoin Transactions slides | :white_check_mark: |
| 6                 | The bitcoin network                                | :white_check_mark: |
| 7-Intro           | Introduction to Ethereum                           | :white_check_mark: |
| 7-A               | Interfacing with Ethereum                          | :white_check_mark: |
| 7-B               | Ganache (Local TestNet)                            | :white_check_mark: |
| 7-C               | Smart Contracts                                    | :white_check_mark: |
| 7-E               | Ethereum Tokens                                    | :white_check_mark: |

> [!WARNING]
> - Lecture 5 and the unnumbered lecture have a lot of similar content, merged the two
> - Moved P2SH from Lecture 7-Intro to Lecture 5 with the other locking scripts

---

>[!NOTE]

> Sessional 1 Content

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

### Double-Spending
- **Prevention**:
	- To prevent users from mining their own coins and using them, everyone maintains a ledger of all transactions
		- NOTE:: The ledger being central defeats the point of cryptocurrency so it is important everyone has a copy of the ledger to maintain

---

# Chapter 3: Intro Crypto & Cryptocurrencies
## 3.1: Cryptographic Hash Functions

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
## 3.2: Hash Pointers and Data Structures

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

## 3.3: Digital Signatures

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

#### **ECDSA**: Bitcoin’s signature scheme is based on **Elliptic Curve Digital Signature Algorithm (ECDSA)**, a secure elliptic curve-based scheme.
- **Private Key**: 256 bits
- **Public Key**: 512 bits (uncompressed) or 257 bits (compressed)
- **Message to Sign**: 256 bits (usually a hash of the actual message)

### **Signature of Hash Pointers**:
- In systems like blockchains, signing a **hash pointer** is equivalent to signing the entire chain of data it points to. This means that signing the head of a blockchain effectively signs all the previous blocks.

## 3.4:  Public Keys as Identities

In decentralized systems, a **public key** acts as an identity. If a message is signed by a private key, and the signature can be verified using the public key, then it is as if the public key “spoke” the message.

### **Decentralized Identity Management**
- In decentralized systems like **Bitcoin**, users generate their own identities by creating a new key pair. No central authority is needed to issue identities or manage registration.
- These identities are referred to as **addresses** in Bitcoin, which are just hashes of public keys. Users can generate and discard new identities freely, enhancing privacy.


## 3.5: Simple Cryptocurrency Models
### **GoofyCoin**
- **Creation**: Goofy can create new coins by signing a statement with a unique coin ID.
- **Transfer**: Owners transfer coins by signing statements that specify the new owner’s public key.
- **Double-Spending Problem**: GoofyCoin doesn’t prevent double-spending, where the same coin is transferred to multiple recipients.
- **Issue:** No hash pointer to the previous block, a spender can append the same coin in the transaction

### **ScroogeCoin**
- **Append-Only Ledger**: Scrooge publishes a **blockchain** containing all transactions. This prevents double-spending, as any transaction not in the blockchain is invalid.
- **Centralization Issue**: Scrooge has control over the ledger and can deny transactions or mint new coins arbitrarily, making the system centralized.

# Book Questions

## 1. Authenticated Data Structures (SecureBox)

**Question**: You are designing SecureBox, an authenticated online file storage system. For simplicity, there is a single folder. Users must be able to add, edit, delete, retrieve files, and list the folder contents. When a user retrieves a file, SecureBox must provide proof that the file hasn’t been tampered with since its last update. If a file doesn’t exist, the server must report that — with proof. The goal is to minimize proof size, verification time, and digest size. Can you devise a protocol where proof size, verification time, and digest size are all sublinear?

**Answer**:

To achieve sublinear efficiency, we can use **Merkle Trees**.

- **Merkle Tree Structure**: The digest is the hash of the root of a Merkle tree, where each leaf node corresponds to a file, and its value is the hash of the file content. Intermediate nodes are hashes of the concatenation of their child nodes.
- **Operations** (Add/Delete/Edit):
	- When a user adds, deletes, or edits a file, the server only needs to update the hash values of the nodes along the path from the affected leaf node to the root. The user’s digest is updated accordingly.
- **Proof Size and Verification**:
	- When retrieving a file, SecureBox sends the file’s hash and the hash values along the path to the root. The user verifies the file's integrity by recomputing the path from the file to the root.
	- The proof size and verification time are both `O(log n)`, where `n` is the number of files.
- **Digest Size**:
	- The digest size is constant `O(1)`, as it only stores the root hash.
This protocol ensures sublinear proof size, verification time, and digest size by taking advantage of the logarithmic depth of the Merkle tree.

## 2. Birthday Attack

**Question 1**: Show that the time-space trade-off is parameterizable: we can achieve any space complexity between `O(1)` and `O(2^(n/2))` with a corresponding decrease in time complexity.

**Answer**:

The **time-space trade-off** is parameterized by choosing a variable number `t` between `1` and `2^(n/2)` for the space complexity. By storing `t` hash outputs:

- The time complexity to find a collision is reduced to `O(2^n / t^2)`.
- The space complexity is `O(t)`.
Thus, we can adjust `t` to achieve any space complexity between `O(1)` (with time `O(2^n)`) and `O(2^(n/2))` (with time `O(2^(n/2))`).

**Question 2**: Is there an attack for which the product of time and space complexity is `o(2^n)`?

**Answer**:

No, there is no known attack where the product of time and space complexity is less than `2^n`. The **birthday paradox** provides the best known trade-off, where the product remains `O(2^n)`. Achieving an attack with a product complexity of `o(2^n)` is currently infeasible in cryptographic contexts.

## 3. Hash Function Properties

**Question**: Let `H` be a hash function that is both hiding and puzzle-friendly. Consider `G(z) = H(z) || z_last`, where `z_last` represents the last bit of `z`. Show that `G` is puzzle-friendly but not hiding.

**Answer**:

- **Puzzle-Friendliness**:
  `G(z)` retains the puzzle-friendliness of `H(z)` because solving for `G(z)` still requires solving the original hash function `H(z)`. Thus, `G(z)` remains computationally hard to reverse or solve without computing `H(z)`.
- **Non-Hiding**:
  `G(z)` is **not hiding** because the last bit of `z` (`z_last`) is appended to the hash output. This leaks part of the input (`z`), compromising the hiding property since an attacker gains partial knowledge of `z` simply by observing `G(z)`.

## 4. Randomness in ScroogeCoin

**Question**: In ScroogeCoin, if Mallory generates `(sk, pk)` pairs until her secret key matches someone else’s, what will she be able to do? How long will it take on average? What happens if Alice’s random number generator has a bug and her key generation produces only 1,000 distinct pairs?

**Answer**:

- **Key Collision**:
  If Mallory generates `(sk, pk)` pairs until her secret key matches someone else’s, she could impersonate that person by signing transactions on their behalf. Given ScroogeCoin uses 256-bit secret keys, the probability of finding a collision is approximately `2^-128`, which is practically impossible.
- **Average Time**:
  On average, it would take `2^128` attempts to find a matching secret key.
- **Alice’s Bug**:
  If Alice's random number generator only produces 1,000 distinct pairs, Mallory could simply brute-force those possibilities. If the network contains many public keys, this drastically reduces security. For example, if there are 10,000 unique public keys, Mallory could succeed in approximately `1000/10000 = 0.1` trials, making it extremely vulnerable.


# Chapter 4: How bitcoin achieves decentralization
## 4.1: Centralization vs. Decentralization

| **Aspect**          | **Centralized Systems**                                                      | **Decentralized Systems**                                                                |
| ------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| **Control**         | Single entity or a small group controls most of the system.                  | Power and decision-making are distributed across many nodes.                             |
| **Examples**        | Webmail services like Gmail, centralized exchanges.                          | Bitcoin protocol, decentralized web protocols like HTTP, DNS.                            |
| **Security**        | Centralized authority ensures security but can be a single point of failure. | Security is distributed, making it harder for a single failure to compromise the system. |
| **Scalability**     | Easier to scale quickly due to central control.                              | More complex to scale due to decentralized nature.                                       |
| **Fault Tolerance** | Vulnerable to failure if the central authority is compromised.               | More resilient; failure of one node doesn’t collapse the system.                         |

## 4.2: Distributed Consensus
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

## 4.3: Consensus Without Identity: The Blockchain
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
## 4.4: Incentives for Distributed Consensus
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

# Past Paper/Book Questions

- **1: Explain the decentralized consensus algorithm used in Bitcoin to agree on a valid block. Discuss why consensus without identity is used in Blockchain?**
	- New transactions are broadcast to all nodes.
	- Each node collects new transactions into a block.
	- A random node broadcasts its block during each round.
	- Other nodes accept the block if all transactions are valid.
	- Nodes express acceptance by including the block's hash in their next block.
	- **No identity in consensus:**
		- There's no central authority to assign identities, preventing Sybil attacks (fake nodes controlled by one entity).
		- Pseudonymity is a goal in Bitcoin to preserve privacy.
- **2: Why do miners run “full nodes” while Bob the merchant uses a “lite node” with simplified payment verification?**
	- Miners need full nodes to validate transactions and blocks, ensuring the integrity of the blockchain.
	- Bob, the merchant, only needs to verify recent transactions to prevent fraud, relying on miners for full validation.
- **3: If a malicious ISP controls a user’s connections, can it launch a double-spend attack? How much computational effort would this take?**
	- Yes, the ISP could attempt a double-spend by creating a fork.
	- To succeed, the ISP would need over 50% of the network's hashing power, which is highly computationally demanding.
- **4: Why does Bob check how many confirmations CA→ B has received, instead of comparing chain lengths?**
	- Confirmations reduce the chance of reorganization, as each confirmation means the transaction is deeper in the chain.
	- Checking confirmations is simpler and sufficient compared to computing chain differences.
- **5: Even when all nodes are honest, blocks will occasionally get orphaned: if two miners Minnie and Mynie discover blocks nearly simultaneously, neither will have time to hear about the other’s block before broadcasting hers.**
	- **5a: What determines whose block will end up on the consensus branch?**
		- The block that gets extended first by another miner becomes part of the consensus branch.
	- **5b: What factors affect the rate of orphan blocks? Can you derive a formula?**
		- Factors: network latency, block propagation time, mining difficulty.
		- Orphan rates depend on how quickly new blocks propagate and the frequency of simultaneous block discoveries.
	- **5c: Try to empirically measure the orphan rate on the Bitcoin network.**
		- Measure by tracking block propagation times and observing simultaneous block broadcasts, leading to chain splits.
	- **5d: If Mynie hears about Minnie’s block before discovering her own, did she waste her effort?**
		- Yes, Mynie’s block becomes invalid if she learns about Minnie’s block just before she mines hers.
	- **5e: Do all miners experience orphaned blocks at the same rate?**
		- No, miners with better network connectivity or larger pools are less affected, while smaller miners suffer more.
- **6a: How can a miner establish a hard-to-fake identity?**
	- Miners can include a unique identifier in the coinbase transaction, which makes their blocks identifiable.
- **6b: If a miner misbehaves, can others boycott her?**
	- In theory, miners could boycott by refusing to build on her blocks, but coordination across the network would be difficult.
- **7a: What is the probability of finding a block in the next 10 minutes assuming constant hash power?**
	- The probability is around 63%, assuming block discovery follows an exponential distribution with a 10-minute average.
- **7b: How should Bob set x so that with 99% confidence, 6 blocks will be found within x minutes?**
	- Bob should set x to around 60 minutes for 99% confidence that 6 blocks will be found.
---

>[!NOTE]

> Sessional 2 + Finals Content

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
- #### **Node Definition**
	- Any device in the network capable of sending, receiving, or forwarding Bitcoin data.
	- Examples: Computers, smartphones, servers.
	- All nodes participate in **routing**; additional functionalities depend on node type.
- #### **Overview of Nodes**
	- **Functionality of Nodes**
		- Nodes validate and propagate:
			- **Transactions**
			- **Blocks**
		- Nodes constantly **discover and connect to peers** to ensure resilience.
	- All nodes in Bitcoin’s P2P network are equal but can have specialized roles.
		- Key roles:
			- **Routing** data
			- **Blockchain Maintenance**
			- **Mining**
			- **Wallet Services**
		- Additional servers:
			- **Mining pool protocols**
			- **Lightweight client-access protocols**
- #### Node Types
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
	- **SPV (Lightweight) Nodes**
		- Store only **block headers** rather than full transaction data.
		- Depend on full nodes for **transaction verification**.
		- Commonly used in mobile wallets due to minimal storage needs.
	- **Fully-Validating Nodes**
		- Maintain the **entire blockchain** (currently over 40 GB).
		- Contribute to network security by verifying and relaying every transaction.
		- Support the network’s decentralization and integrity.
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
## 2) Extended Bitcoin Network
- **Definition**: An expanded version of the Bitcoin P2P network, including specialized protocols and nodes.
- **Purpose**: Allows diverse devices and services to connect without needing full blockchain storage.
- **Components**:
	- **Stratum Protocol**: Used primarily by mining operations. Main protocol for communication b/w nodes
	- **Pool-Mining Protocols**: Enable pooled mining and reward distribution.
- **Node Types in the Extended Network**:

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
	- **Procedure:**
		1. Query DNS via number of DNS Seeds i.e. DNS Servers that provide the list containing the IP of every bitcoin node
			- DNS Seeds are special in the sense that they return a list of randomly selected nodes that are using the port 8333
		2. One known node aka the `SEED NODE` is
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

# Lecture 7-E: Ethereum Tokens
## **OneCoin Scam**
1. **OneCoin: The "Bitcoin Killer"**
	- Marketed as a revolutionary cryptocurrency by Dr. Ruja Ignatova (Cryptoqueen).
	- Lacked blockchain, operated on a SQL database.
	- Promised high returns, leading to billions in investor losses.
	- Timeline:
		- Rapid revenue growth (2015-2017).
		- Dr. Ruja disappeared in October 2017 amidst concerns.
2. **Victim Experience: Jen McAdam**
	- Initially invested €16,000 personally, convinced others to invest €250,000.
	- Discovered the lack of blockchain after asking technical questions.
	- Responses from OneCoin representatives were evasive and misleading.
3. **Why Scams Work in Crypto**
	- Exploits excitement around Bitcoin’s success.
	- Offers the allure of "getting rich quick" through new opportunities.
	- Lack of technical knowledge among investors aids deception.
## **Crowdfunding: Initial Coin Offerings (ICOs)**
1. **Definition and Process**
	- Crowdfunding mechanism for blockchain projects.
	- Key Steps:
		- Develop a whitepaper outlining goals and token specifics.
		- Create tokens on platforms like Ethereum or Binance Smart Chain.
		- Sell tokens to raise funds, often in Bitcoin or Ethereum.
		- Distribute tokens post-ICO for trading or platform use.
2. **Advantages**
	- Lower entry barriers for fundraising.
	- Global access to investors.
	- Potential speculative gains for early participants.
3. **Risks**
	- Lack of regulation increases chances of scams.
	- Project viability is uncertain; many fail to deliver.
	- Market volatility affects token value unpredictably.
4. **Largest ICOs by Funds Raised**
	- EOS: $4.0 billion.
	- Telegram Open Network: $1.7 billion.
	- Others: Filecoin ($257M), Tezos ($232M), etc.
## **Ethereum Tokens**
1. **Ethereum Tokens**
	- **Mechanism:**
		- Tokens are managed via smart contracts, unlike Ether, which is intrinsic to the Ethereum protocol.
		- Requires custom smart contracts for token creation and management.
	- **ERC Standards:**
		- ERC-20: Fungible tokens (e.g., utility tokens, stablecoins).
		- ERC-721: Non-fungible tokens (NFTs).
		- ERC-1155: Hybrid fungible and non-fungible tokens.
2. **Smart Contracts and Interoperability**
	- Automate token functionalities like ownership, transfers, and logic.
	- Ensure compatibility across Ethereum-based apps, wallets, and exchanges.
	- Tools like OpenZeppelin simplify contract creation and deployment.

### **Practical Application and Development**
1. **ERC-20 Tokens**
	- Widely used for fungible tokens in Ethereum's ecosystem.
	- Features include fungibility, interoperability, and adherence to common standards.
2. **Deployment of ERC-20 Tokens**
	- Tools: OpenZeppelin Wizard for rapid contract generation.
	- Example Use Case:
		- Create a "Coffee Token" for redemption of goods.
		- Burn tokens upon use to ensure accountability.
3. **Testing and Deployment Steps**
	- Use Remix IDE to compile and deploy smart contracts.
	- Transfer tokens to different addresses and test burn functionality.