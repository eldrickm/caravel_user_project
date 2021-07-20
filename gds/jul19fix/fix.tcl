gds readonly true  ; # preserve all GDS data as-is
gds rescale false
gds read original_design.gds  ; # original version from openlane
load temp
cellname delete user_project_wrapper  ; # remove the original top level cell
gds readonly false
gds rescale true
gds noduplicates true  ; # ignore all cells that have already been loaded
gds read hand_routed_design.gds ; # hand-edited version
load user_project_wrapper
gds write final_design.gds   ; # this is the GDS file you need to submit
