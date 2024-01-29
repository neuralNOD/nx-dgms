<div align = "justify">

A special repository for adding information for the members of the organization. The [profile/README.md](./profile/README.md) will appear on the organization homepage for the members and is handled/governed by [nxlogic-docs](https://github.com/nxlogics-docs) who is the owner of this repository.

## Database Information

The master tables and transactional records are all maintained in the [**`MySQL`**](https://www.mysql.com/) database. MySQL is versatile and is the second most popular choice when designing a product. However, there is no concept of [*schema*](https://stackoverflow.com/q/1219711/6623589), which can be a drawback when linking tables for different projects. The problem is addressed by creating table names like `<schema>.<table-name>`, which creates a dependency to use backticks (<code>`</code>) on table names, but helps to manage and organize data. The following schema structure is being enforced, and a commit is rejected if it does not adhere to it. To set up activities to register a new schema, and define its use cases.

### TOP-Level Schema: `meta`

A *top*-level schema that contains specifications for all the projects, records, etc. The tables are generally defined for information purposes, and there is no need for a query operation for you. The tables are typically for one-time insert (during setup); thus, there are no *Created On* or *Updated On* flags in the tables. In addition, the table names are defined in "all uppercase" letters, representing global usage. The following tables are part of the `meta` schema:

<div align = "center">

| Table Name | Long Description |
| :---: | --- |
| `SCHEMA_DETAIL` | A table that contains all the registered schema names that are being used in the project. The information from *this readme* partly populates the table. |
| `DATA_SOURCE` | Information about all the data sources (public, proprietary, etc.) that are being used for the project. The data sources are numbered (`1, 2, ...`) which may be referenced in other tables. |

</div>

* **`dbo`**: Database namespace registered for master tables which does not fall under a single category and is cross-functional or product. For example, `METADATA_DATASOURCE` and `WorldDB` are part of this namespace.

| Schema Namespace | Table Name | Long Description |
| :---: | :---: | --- |
| dbo | METADATA_DATASOURCE | Information regarding data source, and the type of information available. |

</div>
