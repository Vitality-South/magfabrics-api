# Notes on the API  

### When a fabric is discontinued, will it still appear in the API data?  

When the "Status" field of a fabric is X, the fabric is being discontinued but some inventory is still available for purchase. When the fabric becomes completely unavailable, it disappears from the API.  

We recommend ignoring fabrics with status X and treating them as if they have already become unavailable since usually available inventory is low.  

### How frequently is fabric data updated?  

The MagFabrics database (data in the API) is updated multiple times per day. The API always provides the latest data. You are free to query the API as often as you prefer.

### What price should I display online? What happened to MAP price?  

The "Display Price" and "Price" fields represent the only price that should be displayed online. No other pricing should be displayed online. The "Display Price" field is a string data type, contains the dollar sign, and is included for convenience of providing a display ready value. The "Price" field can also be used; it is an integer data type in pennies instead of dollars but otherwise represents the same value as the "Display Price". This field was added for the convenience of working with a numeric data type.  

MagFabrics has discontinued the previously discounted price level referred to as "MAP" and replaced it with the regular Retail price. In short, "Retail" IS the new "MAP", which is why that is the only pricing included in our available data, and it must not be deviated from. No product names, color names, specs or images should be altered, nor pricing recalculated in any way.
