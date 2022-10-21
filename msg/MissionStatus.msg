

###
Header header  #std_msgs/header. all topic messages should have a header consisting of seq, timestamp, frame(whoch might stor eiher relevantcoordibnate frame or the node name making service request)

uint64 id #unique id of the mission request simmilar to order id
uint16 robo_id #unique robo id per station
string pick_bin_id  #unique id of crate/bin from which sku is to be picked
string place_bin_id #unique id of crate/bin to which sku is to be placed
string sku_id  #unique sku id which is to be picked from the bin/crate

string pick_status #status of picking
float64 req_qty    #units of the sku_id to be picked 
float64 pick_qty    #units of the sku_id to be picked 

string mission_manager_state  #state of outer state machine in mission manager

builtin_interfaces/msg/Time response_time # time samp when picking is completed
