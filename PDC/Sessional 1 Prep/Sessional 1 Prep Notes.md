| Chapter<br>Number | Chapter<br>Name        | Status    |
| ----------------- | ---------------------- | --------- |
| 1                 | PDC Overview           | :warning: |
| 2                 | Parallel Architectures | :warning: |
| 3                 | MPI P2P                | :warning: |

---
# **1. Parallel and Distributed Computing (PDC) Overview**

## **Introduction to Parallel and Distributed Computing**
- ### **Parallel Computing**
	-
- ### **Distributed Computing**
- ### **Differences Between Parallel and Distributed Computing**

## **Goals and Importance of PDC**
- ### **Why Use Parallel Computing?**
- ### **Why Use Distributed Computing?**

## **Challenges in Single-Core Processors**
- ### **Moore’s Law**
- ### **Power Consumption**
- ### **Heat Dissipation**
- ### **Limits of Single-Core Processors**

## **Multi-Core and Many-Core Processors**
- ### **Introduction to Multi-Core Processors**
- ### **Benefits of Multi-Core over Single-Core**
- ### **Examples of Multi-Core Architectures**
- ### **The New Moore’s Law and Multi-core Era**

## **Parallelization Strategy**
- ### **Problem Understanding**
- ### **Partitioning and Decomposition**
	- #### **Domain Decomposition**
	- #### **Functional Decomposition**
	- #### **Fine-Grained vs Coarse-Grained Tasks**
- ### **Task Assignment**
- ### **Orchestration and Mapping**

## **Communication in Parallel and Distributed Systems**
- ### **Inter-Task Communication**
	- #### **Latency and Bandwidth**
- ### **Synchronous vs Asynchronous Communication**
- ### **Communication Patterns**
	- #### **Point-to-Point Communication**
	- #### **Collective Communication**

## **Synchronization Mechanisms**
- ### **Barrier Synchronization**
- ### **Locks and Semaphores**
- ### **Deadlocks and Avoiding Synchronization Issues**

## **Granularity in Parallel Computing**
- ### **Fine-Grained Parallelism**
- ### **Coarse-Grained Parallelism**
- ### **Trade-offs Between Fine and Coarse Grains**

## **Examples of Parallel and Distributed Systems**
- ### **Chip Multi-Processors (CMP)**
- ### **Distributed Systems (Clusters, Grids, Cloud)**

## **Conclusion**
- ### **Future Trends in Parallel and Distributed Computing**
- ### **Key Takeaways**

---

# **2. Parallel Architectures**

## **Introduction to Parallel Architectures**
- ### **Definition and Importance**
- ### **Types of Parallel Architectures**

## **Flynn’s Taxonomy**
- ### **Overview of Flynn’s Taxonomy**
	- #### **Single Instruction, Single Data Stream (SISD)**
	- #### **Single Instruction, Multiple Data Stream (SIMD)**
	- #### **Multiple Instruction, Single Data Stream (MISD)**
	- #### **Multiple Instruction, Multiple Data Stream (MIMD)**

## **Shared vs. Distributed Memory Systems**
- ### **Symmetric Multiprocessors (SMP)**
	- #### **Architecture and Features of SMP**
	- #### **Advantages of SMP**
- ### **Non-Uniform Memory Access (NUMA)**
	- #### **NUMA Architecture and Features**
	- #### **Cache-Coherent NUMA (CC-NUMA)**
	- #### **Pros and Cons of NUMA**
- ### **Distributed Memory Systems**
	- #### **Distributed Memory Characteristics**
	- #### **Message Passing in Distributed Memory**

## **Hybrid Systems**
- ### **Combination of Shared and Distributed Memory**
- ### **Example of Hybrid Architectures**

## **Cluster Computing**
- ### **Overview of Cluster Systems**
- ### **Characteristics of Clusters**
- ### **Benefits of Clusters**
- ### **Cluster System Architecture**

## **Grid Computing**
- ### **Introduction to Grid Computing**
- ### **Grid Computing Architecture**
- ### **Differences Between Clusters and Grids**

## **Cloud Computing**
- ### **Introduction to Cloud Computing**
- ### **Characteristics of Cloud Computing**
- ### **Cloud Service Models**
- ### **Cloud Providers and Infrastructure**

## **Supercomputers**
- ### **Definition and Characteristics**
- ### **Performance Measurement (FLOPS)**
- ### **Top Supercomputers List**
---

# **3. MPI P2P**

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


- **Question**: What is the one extra parameter used in MPI_Recv() that is not used in MPI_Send(), and in what circumstances would it be of greater importance?
	- **Answer**:
		- The status parameter (of MPI_Status type) is the extra parameter. It may be of greater importance when we call the MPI_Recv() using wildcards for either source or tag, or possibly both. This parameter provides us with information on the (i) source, (ii) tag, and (iii) error from the incoming message from another process.
- **Question**: Single-Program-Multiple-Data (SPMD) is similar to what in Flynn's taxonomy
	- **Answer**:
		- MIMD