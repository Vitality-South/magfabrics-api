# Notes on the API  

### When a fabric is discontinued, will it still appear in the API data?  

When the "Status" field of a fabric is X, the fabric is being discontinued but some inventory is still available for purchase. When the fabric becomes completely unavailable, it disappears from the API.  

We recommend ignoring fabrics with status X and treating them as if they have already become unavailable since usually available inventory is low.  

### How frequently is fabric data updated?  

The MagFabrics database (data in the API) is updated multiple times per day. The API always provides the latest data. You are free to query the API as often as you prefer.