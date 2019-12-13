# Current Work List

## Module Hierarchy - Naming

The repository published by __conteco__ should create a __modeco__ repository using the underscore concatenated __TYPE__ and __NAME__ as __NAME_.

__conteco.type.name >>> modeco.base.type_name__

The __base__ module images act as structural templates to create the actual module images from. The module cast from __base__ has the __NAME__ __conf__.

__modeco.base.[base_type]__ >creates a module> __modeco.[module_name].conf__

The __deploy__ and __run__ APIs should operate on __iamges__ and not on __repositories__. This creates a clear separation between __configuration__, __build__ and __release__ on the one hand and __deploy__ and __run__ on the other hand.

The next step is to give these images specific operational incarnations. The specific incarnation is expressed by the module name.

__modeco.[module_name].conf__ >>> creates incarnation >>> __modeco.[module_name].[incarnation]__

Incarnations can be cluster, micro, read/write  etc. ... . These are ___compiled___ versions of the module.

Operational modules are made available to the next structural layer which deals with a solution. The solution consists of modules (could be seen as applications) and is in first instance local to one cluster. No firm ideas exist yet how this could be extended across multiple cluster however it is probably a master cluster with satellite clusters.
