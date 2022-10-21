

###
Header header  #std_msgs/header. all topic messages should have a header consisting of seq, timestamp, frame(whoch might stor eiher relevantcoordibnate frame or the node name making service request)

uint64[] ids #unique id of the mission request simmilar to order id
uint16[] robo_ids #unique robo id per station
string[] pick_bin_ids  #unique id of crate/bin from which sku is to be picked
string[] place_bin_ids #unique id of crate/bin to which sku is to be placed
string[] sku_ids  #unique sku id which is to be picked from the bin/crate

uint16[] skus_per_order #stores n umber of skus in each order
string[] pick_statuses #status of picking
float64[] req_qtys    #units of the sku_id to be picked 
float64[] pick_qtys    #units of the sku_id to be picked 

string mission_manager_state  #state of outer state machine in mission manager

builtin_interfaces/msg/Time[] response_times # time samp when picking is completed
