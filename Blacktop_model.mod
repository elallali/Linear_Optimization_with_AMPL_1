set Ore;

param cost {p in Ore};
param copper {p in Ore};
param zinc {p in Ore};
param magnesium {p in Ore};

param min_quantity_copper;
param min_quantity_zinc;
param min_quantity_magnesium;

var amount {p in Ore} >= 0;

minimize total_cost: sum {p in Ore} cost[p] * amount[p];

subject to Copper: sum {p in Ore} copper[p] * amount[p] >= min_quantity_copper;
subject to Zinc: sum {p in Ore} zinc[p] * amount[p] >= min_quantity_zinc;
subject to Magnesium: sum {p in Ore} magnesium[p] * amount[p] >= min_quantity_magnesium;



