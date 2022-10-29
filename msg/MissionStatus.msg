

###
std_msgs/Header header  #std_msgs/header. all topic messages should have a header consisting of seq, timestamp, frame(whoch might stor eiher relevantcoordibnate frame or the node name making service request)

uint64[] ids #unique id of the mission request simmilar to order id
uint16[] robo_ids #unique robo id per station
string[] pick_bin_ids  #unique id of crate/bin from which sku is to be picked
string[] place_bin_ids #unique id of crate/bin to which sku is to be placed
uint16[] pick_home_ids
uint16[] place_home_ids
bool[] sku_fulfillment_statuses
bool[] manual_intervention_flags


uint8[] aisle_ids
int16[] sub_sections

geometry_msgs/Point[] sku_locs

#(x1,y1( (x2,y2) (x3,y3) (x4,y4) are pixel coordinates of of image representing subsecion corners in anti-clockwise sense starting from top left corner
int16[] coords_minxs   #array of all min x coords
int16[] coords_maxxs   #array of all max x coords
int16[] coords_minys   #array of all min y coords
int16[] coords_maxys   #array of all max y coords


string[] sku_ids  #unique sku id which is to be picked from the bin/crate

uint16[] skus_per_order #stores n umber of skus in each order
string[] pick_statuses #status of picking
float64[] req_qtys    #units of the sku_id to be picked 
float64[] pick_qtys    #units of the sku_id  picked 
float64[] instances_remaining_in_inv    #units of the sku_id  picked 

string mission_manager_state  #state of outer state machine in mission manager
builtin_interfaces/Time[] response_times # time samp when picking is completed
