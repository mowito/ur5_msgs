string sku_id
geometry_msgs/Point unit_locations  #the x y and z coordinates for the current sku address x is in cm, y is either 1 or -1 for right and left side of aisle respectively,z is the row index startiong from 0 where 0 is for firs feasible row in the rack
uint8 aisle_id    #the aisle id of the current sku adress
uint8 subsection  #the id of subsection in crate as per predefined order
int32 xmin   	#min x coorinate of recangular bbox of coresponding cubsection  wrt top left corner
int32 xmax	#max x coorinate of recangular bbox of coresponding cubsection wrt top left corner
int32 ymin	#min y coorinate of recangular bbox of coresponding cubsection wrt top left corner
int32 ymax	#max y coorinate of recangular bbox of coresponding cubsection wrt top left corner



int32 inv_count  #number of insances recived in last get item pose call to vision executive
float64 time_taken

