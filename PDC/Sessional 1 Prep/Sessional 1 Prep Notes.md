| Chapter<br>Number | Chapter<br>Name        | Status    |
| ----------------- | ---------------------- | --------- |
| 1                 | PDC Overview           | :warning: |
| 2                 | Parallel Architectures | :warning: |
| 3                 | MPI P2P                | :warning: |

---

# **Parallel and Distributed Computing (PDC) Overview**

## **1. Introduction to Parallel and Distributed Computing**
### **1.1 Parallel Computing**
### **1.2 Distributed Computing**
### **1.3 Differences Between Parallel and Distributed Computing**

## **2. Goals and Importance of PDC**
### **2.1 Why Use Parallel Computing?**
### **2.2 Why Use Distributed Computing?**

## **3. Challenges in Single-Core Processors**
### **3.1 Moore’s Law**
### **3.2 Power Consumption**
### **3.3 Heat Dissipation**
### **3.4 Limits of Single-Core Processors**

## **4. Multi-Core and Many-Core Processors**
### **4.1 Introduction to Multi-Core Processors**
### **4.2 Benefits of Multi-Core over Single-Core**
### **4.3 Examples of Multi-Core Architectures**
### **4.4 The New Moore’s Law and Multi-core Era**

## **5. Parallelization Strategy**
### **5.1 Problem Understanding**
### **5.2 Partitioning and Decomposition**
#### **5.2.1 Domain Decomposition**
#### **5.2.2 Functional Decomposition**
#### **5.2.3 Fine-Grained vs Coarse-Grained Tasks**
### **5.3 Task Assignment**
### **5.4 Orchestration and Mapping**

## **6. Communication in Parallel and Distributed Systems**
### **6.1 Inter-Task Communication**
#### **6.1.1 Latency and Bandwidth**
### **6.2 Synchronous vs Asynchronous Communication**
### **6.3 Communication Patterns**
#### **6.3.1 Point-to-Point Communication**
#### **6.3.2 Collective Communication**

## **7. Synchronization Mechanisms**
### **7.1 Barrier Synchronization**
### **7.2 Locks and Semaphores**
### **7.3 Deadlocks and Avoiding Synchronization Issues**

## **8. Granularity in Parallel Computing**
### **8.1 Fine-Grained Parallelism**
### **8.2 Coarse-Grained Parallelism**
### **8.3 Trade-offs Between Fine and Coarse Grains**

## **9. Examples of Parallel and Distributed Systems**
### **9.1 Chip Multi-Processors (CMP)**
### **9.2 Distributed Systems (Clusters, Grids, Cloud)**

## **10. Conclusion**
### **10.1 Future Trends in Parallel and Distributed Computing**
### **10.2 Key Takeaways**

---

# **Parallel Architectures Overview**

## **1. Introduction to Parallel Architectures**
### **1.1 Definition and Importance**
### **1.2 Types of Parallel Architectures**

## **2. Flynn’s Taxonomy**
### **2.1 Overview of Flynn’s Taxonomy**
#### **2.1.1 Single Instruction, Single Data Stream (SISD)**
#### **2.1.2 Single Instruction, Multiple Data Stream (SIMD)**
#### **2.1.3 Multiple Instruction, Single Data Stream (MISD)**
#### **2.1.4 Multiple Instruction, Multiple Data Stream (MIMD)**

## **3. Shared vs. Distributed Memory Systems**
### **3.1 Symmetric Multiprocessors (SMP)**
#### **3.1.1 Architecture and Features of SMP**
#### **3.1.2 Advantages of SMP**
### **3.2 Non-Uniform Memory Access (NUMA)**
#### **3.2.1 NUMA Architecture and Features**
#### **3.2.2 Cache-Coherent NUMA (CC-NUMA)**
#### **3.2.3 Pros and Cons of NUMA**
### **3.3 Distributed Memory Systems**
#### **3.3.1 Distributed Memory Characteristics**
#### **3.3.2 Message Passing in Distributed Memory**

## **4. Hybrid Systems**
### **4.1 Combination of Shared and Distributed Memory**
### **4.2 Example of Hybrid Architectures**

## **5. Cluster Computing**
### **5.1 Overview of Cluster Systems**
### **5.2 Characteristics of Clusters**
### **5.3 Benefits of Clusters**
### **5.4 Cluster System Architecture**

## **6. Grid Computing**
### **6.1 Introduction to Grid Computing**
### **6.2 Grid Computing Architecture**
### **6.3 Differences Between Clusters and Grids**

## **7. Cloud Computing**
### **7.1 Introduction to Cloud Computing**
### **7.2 Characteristics of Cloud Computing**
### **7.3 Cloud Service Models**
### **7.4 Cloud Providers and Infrastructure**

## **8. Supercomputers**
### **8.1 Definition and Characteristics**
### **8.2 Performance Measurement (FLOPS)**
### **8.3 Top Supercomputers List**

---

# MPI P2P

| **MPI Function** | **Type**                | **Use**                                                                    | **Functional Definition**                                                                                                          | **Arguments**                                                                                             | **Returns**                                                                  |
| ---------------- | ----------------------- | -------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `MPI_Init`       | Initialization          | Initializes the MPI environment.                                           | Prepares the MPI environment for use and must be called before any other MPI function.                                             | `(int *argc, char ***argv)`                                                                               | `MPI_SUCCESS` on success, or an error code.                                  |
| `MPI_Finalize`   | Termination             | Terminates the MPI environment.                                            | Cleans up the MPI environment and must be called after all other MPI functions.                                                    | `void`                                                                                                    | `MPI_SUCCESS` on success, or an error code.                                  |
| `MPI_Comm_size`  | Query                   | Determines the number of processes in a communicator.                      | Provides the size of the specified communicator (number of processes).                                                             | `(MPI_Comm comm, int *size)`                                                                              | `MPI_SUCCESS` on success, or an error code.                                  |
| `MPI_Comm_rank`  | Query                   | Determines the rank of the calling process in a communicator.              | Provides the rank (ID) of the calling process within the specified communicator.                                                   | `(MPI_Comm comm, int *rank)`                                                                              | `MPI_SUCCESS` on success, or an error code.                                  |
| `MPI_Send`       | Blocking                | Sends a message from one process to another.                               | Waits until the data has been copied out of the send buffer and is ready for the receiving process.                                | `(void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm)`                         | `MPI_SUCCESS` on success, or an error code.                                  |
| `MPI_Recv`       | Blocking                | Receives a message sent by another process.                                | Waits until the incoming message is completely copied into the receive buffer before returning.                                    | `(void *buf, int count, MPI_Datatype datatype, int source, int tag, MPI_Comm comm, MPI_Status *status)`   | `MPI_SUCCESS` on success, or an error code.                                  |
| `MPI_Isend`      | Non-blocking            | Initiates sending a message without waiting for the operation to complete. | The function returns immediately, allowing the sender to continue its execution. The actual send completes in the background.      | `(void *buf, int count, MPI_Datatype datatype, int dest, int tag, MPI_Comm comm, MPI_Request *request)`   | `MPI_SUCCESS` on success, or an error code.                                  |
| `MPI_Irecv`      | Non-blocking            | Initiates receiving a message without blocking the process.                | Starts receiving data and allows the receiving process to continue other operations while the receive completes in the background. | `(void *buf, int count, MPI_Datatype datatype, int source, int tag, MPI_Comm comm, MPI_Request *request)` | `MPI_SUCCESS` on success, or an error code.                                  |
| `MPI_Wait`       | Non-blocking Completion | Waits for a non-blocking send or receive to complete.                      | Blocks until the operation associated with a `MPI_Request` is completed.                                                           | `(MPI_Request *request, MPI_Status *status)`                                                              | `MPI_SUCCESS` on success, or an error code.                                  |
| `MPI_Test`       | Non-blocking Completion | Checks if a non-blocking operation has completed.                          | Non-blocking check to see if the operation associated with `MPI_Request` has finished.                                             | `(MPI_Request *request, int *flag, MPI_Status *status)`                                                   | `MPI_SUCCESS` on success, or an error code. Returns `flag = 1` if completed. |
| `MPI_Probe`      | Blocking                | Allows a process to check for incoming messages.                           | Determines if a message is available to be received without actually receiving it.                                                 | `(int source, int tag, MPI_Comm comm, MPI_Status *status)`                                                | `MPI_SUCCESS` on success, or an error code.                                  |

## Explanation of Arguments:
- `buf`: Pointer to the buffer containing data to be sent or received.
- `count`: Number of elements in the buffer.
- `datatype`: The type of data (e.g., `MPI_INT`, `MPI_FLOAT`).
- `dest/source`: Rank of the destination or source process.
- `tag`: Message identifier for matching send and receive operations.
- `comm`: Communicator specifying the group of processes involved.
- `status`: (For `MPI_Recv`, `MPI_Wait`, and `MPI_Probe`) Provides information on the completed operation.
- `request`: (For non-blocking functions) Used to track the status of the non-blocking operations.
- `argc`: Pointer to the argument count for the program (usually from `main`).
- `argv`: Pointer to the argument vector for the program (usually from `main`).
- `size`: Pointer to store the number of processes in the communicator.
- `rank`: Pointer to store the rank of the calling process.