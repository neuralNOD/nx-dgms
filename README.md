<div align = "justify">

A centralized repository for data governance and management enforcing data quality, standards and checks across the organization.

The master tables and transactional records are all maintained in the [**`MySQL`**](https://www.mysql.com/) database. MySQL is versatile and is the
second most popular choice when designing a product. However, there is no concept of [*schema*](https://stackoverflow.com/q/1219711/6623589), which
can be a drawback when linking tables for different projects. The problem is addressed by creating table names like `<schema>.<table-name>`, which
creates a dependency to use backticks (<code>`</code>) on table names, but helps to manage and organize data. The following schema structure is being
enforced, and a commit is rejected if it does not adhere to it. To set up activities to register a new schema, and define its use cases.

(TODO: Check the documentation/README.md for each specific [schema](./schema/) in their respective subdirectories.)

## TOP-Level Schema: *`meta`*

A *top*-level schema that contains specifications for all the projects, records, etc. The tables are generally defined for information purposes, and
there is no need for a query operation for you. The tables are typically for one-time insert (during setup); thus, there are no *Created On* or
*Updated On* flags in the tables. In addition, the table names are defined in "all uppercase" letters, representing global usage. The following
tables are part of the `meta` schema:

<div align = "center">

| Table Name | Long Description |
| :---: | --- |
| `SCHEMA_DETAIL` | A table that contains all the registered schema names that are being used in the project. |
| `DATA_SOURCE` | Information about all the data sources (public, proprietary, etc.) that are being used for the project. |

</div>

## Master Data Management Schema: *`dbo`*

A collection of master/transactional tables which is independent of any project/product and generally has one/multiple keys that are referenced by
any transactional table. The `dbo` and all dependent/independent child schema uses the *table prefix terminology* of:

* **`mw`** to represent master table, while the prefix,
* **`tbl`** represents a transactional table, and 
* Certain table will use the prefix **`key`** which represents a collection of *primary key* and its description referenced primarily by the transactional table.

The table names are defined in [*camelCase*](https://en.wikipedia.org/wiki/Camel_case), while the feature are named in
[*PascalCase*](https://www.theserverside.com/definition/Pascal-case). Some fields/features are named in
[*snake_case*](https://en.wikipedia.org/wiki/Snake_case) with a leading `_` which represents the column is not intended for the end-users but for
the developers.

The following **modules**, and their tables are primarily defined under the `dbo` schema:

* **World DB**: A collection of countries, states, and cities along with various informations sourced from [OSS Database](https://countrystatecity.in/).
* **Currencies Master**: A set of table that holds information regarding the currency used/adopted by each country and their details (*under development*).
* **Exchange Rates**: A table with primary key as the date holds the exchange rates between of all the available world currencies (check `mwCurrencies` for
currency code detail) on the specified date.

## Developer Usage Schema: *`dev`*

A specifically designed schema that contains tables, views, stored procedures and/or functions useful for develpment purpose. Since developed for
developers, as per previous convention [*snake_case*](https://en.wikipedia.org/wiki/Snake_case) is used and maintained throughout. The following
informations are available under the `dev` schema (todo: documentation):

### Stored Procedure(s)

1. **`dev.missing_exch_rate_days()`**

## Pre-Staging/Testing Environment: **`prestg`** and **`test`**

A schema developed within the production environment for testing and/or experimentations with the tables. The `prestg` tables can be specifically
used for data pre-stages which might be setup at a later point in future.

</div>
