# talk of alexbdebrie

Two types of primary key 

- Partion key
- Composite key (partition key + sort key)

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/6cff1615-39e5-417e-95a0-06f02b2ff691/Screenshot_2021-05-19_at_9.15.55_PM.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/6cff1615-39e5-417e-95a0-06f02b2ff691/Screenshot_2021-05-19_at_9.15.55_PM.png)

### Composite primary key + Query

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/96bc85e8-1213-42a5-93ca-cf78df4e6b97/Screenshot_2021-05-16_at_9.25.13_PM.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/96bc85e8-1213-42a5-93ca-cf78df4e6b97/Screenshot_2021-05-16_at_9.25.13_PM.png)

Two different types of entities ( ORG + User)

This is basically emulating a join. Get users for the organisation

### Secondary index + Query

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/90b2ed7a-bb07-4a55-af8e-b3610c3f784f/Screenshot_2021-05-19_at_9.11.11_PM.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/90b2ed7a-bb07-4a55-af8e-b3610c3f784f/Screenshot_2021-05-19_at_9.11.11_PM.png)

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f74d7fe6-3efc-405a-87f5-2fb1998bfa7b/Screenshot_2021-05-19_at_9.12.23_PM.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f74d7fe6-3efc-405a-87f5-2fb1998bfa7b/Screenshot_2021-05-19_at_9.12.23_PM.png)

Standardise casing ALL UPPER or all lower

### Composite sort key

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/7f31ea6a-15ca-4651-876b-d1660ac7d437/Screenshot_2021-05-19_at_9.16.45_PM.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/7f31ea6a-15ca-4651-876b-d1660ac7d437/Screenshot_2021-05-19_at_9.16.45_PM.png)

### Data Modeling

SQL Modeling - Generally normalise data by creating table each entity.

Joins are expensive which needs scanning large portions of multiple tables includes comparing different values and returning a result set.

[Under the hood 🚨](https://www.notion.so/Under-the-hood-b8af417f6ea04b9c841286fccca97f41)

[DynamoDB](https://www.notion.so/DynamoDB-4a179835f5c24d32ac2f39d9b17298f2)

[keywords](https://www.notion.so/keywords-b95360e23c7f4993be609c04cd951f2a)

[questions](https://www.notion.so/questions-accf414b4c7d4cca85c62169c86b49c8)

### Under the hood -

Paxos (white-paper 1999) - Bunch of distributed system to agree on a particular value. In DynamoDB we have similar concept of leader.

**Partition Key -** Must have one attribute, uniquely identify an item

It is used for building an unordered hash index

Allows table to partitioned for scale

**Sort Key -** Optional Attribute Key helps to query with range ( with operator) 

Analogy -

*Partitions are folders or bucket which contain items and sort key orders the items within that folder. It helps to apply complex range queries against the items within a partitions.* 

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/db963ff9-2755-41c0-b709-0968b3e805b2/Screenshot_2021-05-10_at_6.28.51_PM.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/db963ff9-2755-41c0-b709-0968b3e805b2/Screenshot_2021-05-10_at_6.28.51_PM.png)

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f4faca3a-27e9-46eb-b624-d6251c70ad61/Screenshot_2021-05-12_at_5.44.58_PM.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f4faca3a-27e9-46eb-b624-d6251c70ad61/Screenshot_2021-05-12_at_5.44.58_PM.png)

Partition:Sort Key 

Uses two attributes together to uniquely identify an item

Within unordered hash index, data is arranged by the sort key

No limit on the number items per partition key

Except if you have local secondary indexes

Partitions are three-way replicated.

Reads are eventual consistency (cheap way to double the capacity) and strong consistent (always read from primary node)

**Indexes** 

Local Secondary Indexes - It is used to resorts the data. Identify the access pattern and then create LSI according to that. Then we can query the LSI for a different access pattern. It must always use the same partition key as the table.

Strongly Consistent 

Global Secondary Indexes -  Secondary Access pattern 

Eventually Consistent

It may cause throttling if speed of GSI doesn't match with the table. 

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/d299aa3b-58a2-4264-980b-64746138535f/Screenshot_2021-05-12_at_6.17.57_PM.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/d299aa3b-58a2-4264-980b-64746138535f/Screenshot_2021-05-12_at_6.17.57_PM.png)

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/5a6264da-a45e-4916-926d-59cbd216fa60/Screenshot_2021-05-12_at_6.21.24_PM.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/5a6264da-a45e-4916-926d-59cbd216fa60/Screenshot_2021-05-12_at_6.21.24_PM.png)

Partition key should be distributed. High Cardinality.

SQL vs NoSQL design pattern 

A lot of need is usually because of the relation al which we using as we don't join data and there are lesser disk operation.

In NoSql data comes from single partition.

Single trip to get the data.

---

### **Data Modeling in NoSQL**

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/5d784e88-6366-426a-9fc0-e9ed39d8ae23/Screenshot_2021-05-14_at_3.11.30_PM.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/5d784e88-6366-426a-9fc0-e9ed39d8ae23/Screenshot_2021-05-14_at_3.11.30_PM.png)

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/d5416d5f-8873-447d-a017-ec3b9e879ac3/Screenshot_2021-05-14_at_3.08.42_PM.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/d5416d5f-8873-447d-a017-ec3b9e879ac3/Screenshot_2021-05-14_at_3.08.42_PM.png)

---

### Understand the use case -

- Nature of the application
    - OLTP/OLAP/ DSS
- Define the Entity Relationship Model
- Identify Data Life Cycle
    - TTL, Backup, Archival
    

### Define Access Pattern

- Identify data sources
- Define query aggregations
- Document all flows

### Data-modeling

- Avoid relation design pattern, use one table
- 1 application service = 1 table
    - Reduce round trips
    - Simplify access patterns
- Identify Primary Keys
    - How will items be inserted and read ?
    - Overload items into partitions
- Define indexes for secondary access patterns

---

In Streams and Lambda all the processing of the data  occurs  in different processing  space than the table we don't worry about the availability of the table instead  in RDBMS most of the things happens in the same sever space.

**Limits**

**Item size limit** 

→ 400 KB limit for DynamoDB limit

Why?

→ Pointing to proper OLTP usage

**Page size limit** 

→ Query & Scan fetch a range of items in a single request

→ 1 MB limit on the size of an individual request

→ Aggregation is slow (sum, avg)

**Partition throughput limits**

→ 3000 RCUs / 1000 WCUs

Per partition

Per second

→ DAX (DynamoDB Accelerator)

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/30b8eab2-1486-4768-b74e-528d77da2f8e/Screenshot_2021-05-14_at_3.29.14_PM.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/30b8eab2-1486-4768-b74e-528d77da2f8e/Screenshot_2021-05-14_at_3.29.14_PM.png)
