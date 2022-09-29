string sku_id
geometry_msgs/Point unit_locations
uint8 aisle_id
uint8 subsection  #the id of subsection in crate as per predefined order
int xmin   	#min x coorinate of recangular bbox of coresponding cubsection  wrt top left corner
int xmax	#max x coorinate of recangular bbox of coresponding cubsection wrt top left corner
int ymin	#min y coorinate of recangular bbox of coresponding cubsection wrt top left corner
int ymax	#max y coorinate of recangular bbox of coresponding cubsection wrt top left corner



int inv_count  #number of insances recived in last get item pose call to vision executive
float64 time_taken

