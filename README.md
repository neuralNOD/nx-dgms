<div align = "justify">

A special repository for adding information for the members of the organization. The [profile/README.md](./profile/README.md) will appear on the organization homepage for the members and is handled/governed by [nxlogic-docs](https://github.com/nxlogics-docs) who is the owner of this repository.

## Database Information

The master tables, transactional records are all maintained in [`MySQL`](https://www.mysql.com/) database. MySQL is versatile, and is the second most popular choice when designing a product. However, there is no concept of [*schema*](https://stackoverflow.com/q/1219711/6623589), which can be a drawback when linking tables for different projects. The problem is addressed by creating table names like `<schema>.<table-name>`, which creates a dependency to use backticks (<code>`</code>) on table name, but helps to manage and organize data.

* **`dbo`**: Database namespace registered for master tables which does not fall under a single category and is cross-functional or product. For example, `METADATA_DATASOURCE` and `WorldDB` are part of this namespace.

| Schema Namespace | Table Name | Long Description |
| :---: | :---: | --- |
| dbo | METADATA_DATASOURCE | Information regarding data source, and the type of information available. |

</div>
