string[] sku_id
uint32[] sku_quant
uint32[] sku_quant_remaining
uint32[] sku_home_ids
uint8[] sku_bin_ids
uint8[] aisle_ids
int16[] sub_sections
uint32 order_id
geometry_msgs/Point[] sku_locs

#(x1,y1( (x2,y2) (x3,y3) (x4,y4) are pixel coordinates of of image representing subsecion corners in anti-clockwise sense starting from top left corner
int16[] coords_x1s   #array of all x1 coords
int16[] coords_x2s   #array of all x2 coords
int16[] coords_x3s   #array of all x3 coords
int16[] coords_x4s   #array of all x4 coords

int16[] coords_y1s   #array of all y1 coords
int16[] coords_y2s   #array of all y2 coords
int16[] coords_y3s   #array of all y3 coords
int16[] coords_y4s   #array of all y4 coords
