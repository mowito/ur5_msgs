

###
std_msgs/Header header  #std_msgs/header. all topic messages should have a header consisting of seq, timestamp, frame(whoch might stor eiher relevantcoordibnate frame or the node name making service request)

uint64[] ids #unique id of the mission request simmilar to order id  #size of this = number of orders
uint16[] robo_ids #unique robo id per station #size of this = number of orders

string[] pick_bin_ids  #unique id of crate/bin from which sku is to be picked  #size of this = number of skus across difeerent orders
string[] place_bin_ids #unique id of crate/bin to which sku is to be placed   #size of this = number of skus across difeerent orders
uint16[] pick_home_ids				 #size of this = number of skus across difeerent orders
uint16[] place_home_ids			#size of this = number of skus across difeerent orders
bool[] sku_fulfillment_statuses		#size of this = number of skus across difeerent orders
bool[] manual_intervention_flags		#size of this = number of skus across difeerent orders


uint8[] aisle_ids				#size of this = number of skus across difeerent orders
int16[] sub_sections				#size of this = number of skus across difeerent orders

geometry_msgs/Point[] sku_locs		#size of this = number of skus across difeerent orders

#(x1,y1( (x2,y2) (x3,y3) (x4,y4) are pixel coordinates of of image representing subsecion corners in anti-clockwise sense starting from top left corner out which xmin/max and ymin/max are chosen
int16[] coords_minxs   #array of all min x coords	#size of this = number of skus across difeerent orders
int16[] coords_maxxs   #array of all max x coords	#size of this = number of skus across difeerent orders
int16[] coords_minys   #array of all min y coords	#size of this = number of skus across difeerent orders
int16[] coords_maxys   #array of all max y coords	#size of this = number of skus across difeerent orders


string[] sku_ids  #unique sku id which is to be picked from the bin/crate	#size of this = number of skus across difeerent orders

uint16[] skus_per_order #stores n umber of skus in each order 	 #size of this = number of orders
string[] pick_statuses #status of picking				#size of this = number of skus across difeerent orders
float64[] req_qtys    #units of the sku_id to be picked 		#size of this = number of skus across difeerent orders
float64[] pick_qtys    #units of the sku_id  picked 			#size of this = number of skus across difeerent orders
float64[] instances_remaining_in_inv    #units of the sku_id  picked 	#size of this = number of skus across difeerent orders

string mission_manager_state  #state of outer state machine in mission manager
builtin_interfaces/Time[] response_times # time samp when picking is completed  #size of this = number of orders


#### for backward compatibilty with dexter configuration

###

ur5_msgs/Order[] orders
string mission_status
string mission_state
float64 mission_time
float64 mission_state_time
#Mission Status -- unavialable/active/complete /Na
#mission state -- Loading Order/ Processing Order/ Delivering Order/ Na

#for each order start
#order id1 -- 1/2/3/Na
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
#for each order end



#mission-time -- 3.2/42/na
#mission-state-time-- 3.3/43/na

