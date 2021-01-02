# Database optimization

## Normalization
### First normal form (1NF)
- Eliminate repeating groups in individual tables
- Create a separate table for each set of related data
- Identify each set of related data with a primary key

### Second normal form (2NF)
- It is in first normal form.
- It does not have any non-prime attribute that is functionally dependent on any proper subset of any candidate key of the relation.


### Third normal form (3NF)
- The relation R (table) is in second normal form.
- Every non-prime attribute of R is non-transitively dependent on every key of R.

Summary: 2NF tells us we should not determine a value in a column by only part of a composite key, 3NF tells us we should not be able to figure out any value in a column from a field that isn't a key.

## Denormalization
A strategy used on a previously-normalized database to increase performance, for example, intentionally leave duplicate data in the database.

It does not mean we skip the normalization process.

Denormalization is a trade-off. Gaining speed may reduce consistency.