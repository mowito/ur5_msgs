std_msgs/Header header  #std_msgs/header. all topic messages should have a header consisting of seq, timestamp, frame(whoch might stor eiher relevantcoordibnate frame or the node name making service request
uint16 robo_id
OrderFile order #current order being processed
uint16 current_item_id  #item id is the serial number of the skus in the list of skus in the order, current_item_id is he idx of sku currently being picked
uint16 current_unit_being_picked #for instance an sku has 2 units to be picked this fieldd will denote the curren unit being picked
uint16 inference_mode #0 for manual and 1 for auto
