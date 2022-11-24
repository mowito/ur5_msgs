std_msgs/Header header  #std_msgs/header. all topic messages should have a header consisting of seq, timestamp, frame(whoch might stor eiher relevantcoordibnate frame or the node name making service request
uint16 robo_id
OrderFile order #current order being processed
uint16 current_item_id  #item id is the serial number of the skus in the list of skus in the order, current_item_id is he idx of sku currently being picked
uint16 current_unit_being_picked #for instance an sku has 2 units to be picked this fieldd will denote the curren unit being picked
uint16 inference_mode #0 for manual and 1 for auto



##for backward compatibily with dexter configuration

int32[] sku_ids
geometry_msgs/Point[] locations
int32[] sku_units
bool[] manual_intervention


### 

ur5_msgs/Order current_order
string order_state

#current-order-id
#Order Status-- processing/pending/fullfilled/na
#for each sku start
#item no -- 1/2/3/na
#sku code -- 2x/3d/na
#quantity -- 10/1/2/3/na
#location.x -- 2.3/5.3/4.6/na
#location.y -- ''
#location.z -- ''
#side -- left/right/na
#units remaining -- 1/2/0/na
#sku status -- processing/pending/fullfilled/na
#sku time take -- 5/3.3/na
#for each sku end


#order-state -- gotocrate/pick-sku/place-sku/na
#order-state-time --  3.3/5/10/na

#current order-time -- 3.4/60/na
