/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/


use DataWareHouse

IF Object_id('bronze.crm_cust_info', 'U') IS NOT NULL
       DROP table bronze.crm_cust_info;

GO

--cst_id,cst_key,cst_firstname,cst_lastname,cst_marital_status,cst_gndr,cst_create_date

CREATE TABLE bronze.crm_cust_info(
cst_id int,
cst_key varchar(50),
cst_firstname varchar(50),
cst_lastname varchar(50),
cst_marital_status varchar(50),
cst_gndr varchar(50),
cst_create_date date

);

IF Object_id('bronze.crm_prd_info', 'U') IS NOT NULL
       DROP table bronze.crm_prd_info;

GO
--prd_id,prd_key,prd_nm,prd_cost,prd_line,prd_start_dt,prd_end_dt
CREATE TABLE bronze.crm_prd_info(
prd_id int,
prd_key varchar(50),
prd_nm varchar(50),
prd_cost INT,
prd_line varchar(50),
prd_start_dt date,
prd_end_dt date
);

IF Object_id('bronze.crm_sales_details', 'U') IS NOT NULL
       DROP table bronze.crm_sales_details;

GO

--sls_ord_num,sls_prd_key,sls_cust_id,sls_order_dt,sls_ship_dt,sls_due_dt,sls_sales,sls_quantity,sls_price
CREATE TABLE bronze.crm_sales_details (
    sls_ord_num  NVARCHAR(50),
    sls_prd_key  NVARCHAR(50),
    sls_cust_id  INT,
    sls_order_dt INT,
    sls_ship_dt  INT,
    sls_due_dt   INT,
    sls_sales    INT,
    sls_quantity INT,
    sls_price    INT
);

IF Object_id('bronze.erp_cust_az12', 'U') IS NOT NULL
       DROP table bronze.erp_cust_az12;

GO

--CID,BDATE,GEN
CREATE TABLE bronze.erp_cust_az12(
cid varchar(50),
bdate DATE,
gen VARCHAR(50)
);

IF Object_id('bronze.erp_loc_a101', 'U') IS NOT NULL
       DROP table bronze.erp_loc_a101;

GO
--CID,CNTRY
CREATE TABLE bronze.erp_loc_a101(
cid varchar(50),
cntry varchar(50)
);

IF Object_id('bronze.erp_px_cat_g1v2', 'U') IS NOT NULL
       DROP table bronze.erp_px_cat_g1v2;

GO

--ID,CAT,SUBCAT,MAINTENANCE
CREATE TABLE bronze.erp_px_cat_g1v2(
ID varchar(50),
CAT varchar(50),
SUBCAT varchar(50),
MAINTENANCE varchar(50)
);

