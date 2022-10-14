;/* OMetadata
* * collection of native functions refering to scene metadata
*/;
ScriptName OMetadata


; ████████╗ █████╗  ██████╗ ███████╗
; ╚══██╔══╝██╔══██╗██╔════╝ ██╔════╝
;    ██║   ███████║██║  ███╗███████╗
;    ██║   ██╔══██║██║   ██║╚════██║
;    ██║   ██║  ██║╚██████╔╝███████║
;    ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚══════╝

;/* GetTags
* * returns all tags for a scene
* *
* * @param: Id, the id of the scene
* *
* * @return: an array containing all the tags of the scene
*/;
string[] Function GetTags(string Id) Global Native

;/* HasTag
* * checks if a scene has a tag
* *
* * @param: Id, the id of the scene
* * @param: Tag, the tag
* *
* * @return: true if the scene has the tag, otherwise false
*/;
bool Function HasTag(string Id, string Tag) Global Native

;/* HasAnyTag
* * checks if a scene has at least one of a list of tags
* *
* * @param: Id, the id of the scene
* * @param: Tags, an array of tags
* *
* * @return: true if the scene has at least one of the tags, otherwise false
*/;
bool Function HasAnyTag(string Id, string[] Tags) Global Native

;/* HasAllTags
* * checks if a scene has all of a list of tags
* *
* * @param: Id, the id of the scene
* * @param: Tags, an array with all the tags to check for
* *
* * @return: true if the scene has all the tags, otherwise false
*/;
bool Function HasAllTags(string Id, string[] Tags) Global Native

;/* GetActorTags
* * returns all tags for an actor in a scene
* *
* * @param: Id, the id of the scene
* * @param: Position, the index of the actor in the scene
* *
* * @return: an array containing all the tags for the actor in the scene
*/;
string[] Function GetActorTags(string Id, int Position) Global Native

;/* HasActorTag
* * checks if an actor in a scene has a tag
* *
* * @param: Id, the id of the scene
* * @param: Position, the index of the actor in the scene
* * @param: Tag, the tag
* *
* * @return: true if the actor in the scene has the tag, otherwise false
*/;
bool Function HasActorTag(string Id, int Position, string Tag) Global Native

;/* HasAnyTag
* * checks if an actor in a scene has at least one of a list of tags
* *
* * @param: Id, the id of the scene
* * @param: Position, the index of the actor in the scene
* * @param: Tags, an array of tags
* *
* * @return: true if the actor in the scene has at least one of the tags, otherwise false
*/;
bool Function HasAnyActorTag(string Id, int Position, string[] Tags) Global Native

;/* HasAllTags
* * checks if an actor in a scene has all of a list of tags
* *
* * @param: Id, the id of the scene
* * @param: Position, the index of the actor in the scene
* * @param: Tags, an array of tags
* *
* * @return: true if the actor in the scene has all the tags, otherwise false
*/;
bool Function HasAllActorTags(string Id, int Position, string[] Tags) Global Native


;  █████╗  ██████╗████████╗██╗ ██████╗ ███╗   ██╗███████╗
; ██╔══██╗██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║██╔════╝
; ███████║██║        ██║   ██║██║   ██║██╔██╗ ██║███████╗
; ██╔══██║██║        ██║   ██║██║   ██║██║╚██╗██║╚════██║
; ██║  ██║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║███████║
; ╚═╝  ╚═╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝

;/* HasAction
* * checks if the scene has at least one action
* *
* * @param: Id, the id of the scene
* *
* * @return: true if the scene contains action, otherwise false
*/;
bool Function HasActions(string Id) Global Native

;/* FindAction
* * returns the first occurance of an action in a scene
* *
* * @param: Id, the id of the scene
* * @param: Type, the action type
* *
* * @return: the index of the first occurance of the action type if it occurs, otherwise -1
*/;
int Function FindAction(string Id, string Type) Global Native

;/* FindAnyAction
* * returns the first occurance of any of a list of actions in a scene
* *
* * @param: Id, the id of the scene
* * @param: Types, an array of action types
* *
* * @return: the index of the first occurance of any of the action types if one occurs, otherwise -1
*/;
int Function FindAnyAction(string Id, string[] Types) Global Native

;/* FindActions
* * returns all occurances of an action in a scene
* *
* * @param: Id, the id of the scene
* * @param: Type, the action type
* * 
* * @return: an array of the indices of all occurances of the action type
*/;
int[] Function FindActions(string Id, string Type) Global Native

;/* FindAllActions
* * returns all occurances of any of a list of actions in a scene
* *
* * @param: Id, the id of the scene
* * @param: Types, an array of action types
* *
* * @return: an array of the indices of all occurances of any of the action types
*/;
int[] Function FindAllActions(string Id, string[] Types) Global Native

;/* FindActionForActor
* * returns the first occurance of an action from an actor in a scene
* * 
* * @param: Id, the id of the scene
* * @param: Position, the index of the actor in the scene
* * @param: Type, the action type
* *
* * @return: the index of the first occurance of the action type if it occurs, otherwise -1
*/;
int Function FindActionForActor(string Id, int Position, string Type) Global Native

;/* FindAnyActionForActor
* * returns the first occurance of any of a list of actions from an actor in a scene
* *
* * @param: Id, the id of the scene
* * @param: Position, the index of the actor in the scene
* * @param: Types, and array of action types
* * 
* * @return: the index of the first occurance of any of the action types if one occurs, otherwise -1
*/;
int Function FindAnyActionForActor(string Id, int Position, string[] Types) Global Native

;/* FindActionsForActor
* * returns all occurances of an action from an actor in a scene
* * 
* * @param: Id, the id of the scene
* * @param: Position, the index of the actor in the scene
* * @param: Type, the action type
* *
* * @return: an array of the indices of all occurances of the action type
*/;
int[] Function FindActionsForActor(string Id, int Position, string Type) Global Native

;/* FindAllActionsForActor
* * returns all occurances of any of a list of actions from an actor in a scene
* *
* * @param: Id, the id of the scene
* * @param: Position, the index of the actor in the scene
* * @param: Types, an array of action types
* * 
* * @return: an array of the indices of all occurances of any of the action types
*/;
int[] Function FindAllActionsForActor(string Id, int Position, string[] Types) Global Native

;/* FindActionForActors
* * returns the first occurance of an action from a list of actors in a scene
* * 
* * @param: Id, the id of the scene
* * @param: Positions, an array of indices of the actors in the scene
* * @param: Type, the action type
* *
* * @return: the index of the first occurance of the action type if it occurs, otherwise -1
*/;
int Function FindActionForActors(string Id, int[] Positions, string Type) Global Native

;/* FindAnyActionForActors
* * returns the first occurance of any of a list of actions from a list of actors in a scene
* *
* * @param: Id, the id of the scene
* * @param: Positions, an array of indices of the actors in the scene
* * @param: Types, and array of action types
* * 
* * @return: the index of the first occurance of any of the action types if one occurs, otherwise -1
*/;
int Function FindAnyActionForActors(string Id, int[] Positions, string[] Types) Global Native

;/* FindActionsForActors
* * returns all occurances of an action from a list of actors in a scene
* * 
* * @param: Id, the id of the scene
* * @param: Positions, an array of indices of the actors in the scene
* * @param: Type, the action type
* *
* * @return: an array of the indices of all occurances of the action type
*/;
int[] Function FindActionsForActors(string Id, int[] Positions, string Type) Global Native

;/* FindAllActionsForActors
* * returns all occurances of any of a list of actions from a list of actors in a scene
* *
* * @param: Id, the id of the scene
* * @param: Positions, an array of indices of the actors in the scene
* * @param: Types, an array of action types
* * 
* * @return: an array of the indices of all occurances of any of the action types
*/;
int[] Function FindAllActionsForActors(string Id, int[] Positions, string[] Types) Global Native

;/* FindActionForTarget
* * returns the first occurance of an action from a target in a scene
* * 
* * @param: Id, the id of the scene
* * @param: Position, the index of the target in the scene
* * @param: Type, the action type
* *
* * @return: the index of the first occurance of the action type if it occurs, otherwise -1
*/;
int Function FindActionForTarget(string Id, int Position, string Type) Global Native

;/* FindAnyActionForTarget
* * returns the first occurance of any of a list of actions from a target in a scene
* *
* * @param: Id, the id of the scene
* * @param: Position, the index of the target in the scene
* * @param: Types, and array of action types
* * 
* * @return: the index of the first occurance of any of the action types if one occurs, otherwise -1
*/;
int Function FindAnyActionForTarget(string Id, int Position, string[] Types) Global Native

;/* FindActionsForTarget
* * returns all occurances of an action from a target in a scene
* * 
* * @param: Id, the id of the scene
* * @param: Position, the index of the target in the scene
* * @param: Type, the action type
* *
* * @return: an array of the indices of all occurances of the action type
*/;
int[] Function FindActionsForTarget(string Id, int Position, string Type) Global Native

;/* FindAllActionsForTarget
* * returns all occurances of any of a list of actions from a target in a scene
* *
* * @param: Id, the id of the scene
* * @param: Position, the index of the target in the scene
* * @param: Types, an array of action types
* * 
* * @return: an array of the indices of all occurances of any of the action types
*/;
int[] Function FindAllActionsForTarget(string Id, int Position, string[] Types) Global Native

;/* FindActionForTargets
* * returns the first occurance of an action from a list of targets in a scene
* * 
* * @param: Id, the id of the scene
* * @param: Positions, an array of indices of the targets in the scene
* * @param: Type, the action type
* *
* * @return: the index of the first occurance of the action type if it occurs, otherwise -1
*/;
int Function FindActionForTargets(string Id, int[] Positions, string Type) Global Native

;/* FindAnyActionForTargets
* * returns the first occurance of any of a list of actions from a list of targets in a scene
* *
* * @param: Id, the id of the scene
* * @param: Positions, an array of indices of the targets in the scene
* * @param: Types, and array of action types
* * 
* * @return: the index of the first occurance of any of the action types if one occurs, otherwise -1
*/;
int Function FindAnyActionForTargets(string Id, int[] Positions, string[] Types) Global Native

;/* FindActionsForTargets
* * returns all occurances of an action from a list of targets in a scene
* * 
* * @param: Id, the id of the scene
* * @param: Positions, an array of indices of the targets in the scene
* * @param: Type, the action type
* *
* * @return: an array of the indices of all occurances of the action type
*/;
int[] Function FindActionsForTargets(string Id, int[] Positions, string Type) Global Native

;/* FindAllActionsForTargets
* * returns all occurances of any of a list of actions from a list of targets in a scene
* *
* * @param: Id, the id of the scene
* * @param: Positions, an array of indices of the targets in the scene
* * @param: Types, an array of action types
* * 
* * @return: an array of the indices of all occurances of any of the action types
*/;
int[] Function FindAllActionsForTargets(string Id, int[] Positions, string[] Types) Global Native

;/* FindActionForPerformer
* * returns the first occurance of an action from a performer in a scene
* * 
* * @param: Id, the id of the scene
* * @param: Position, the index of the performer in the scene
* * @param: Type, the action type
* *
* * @return: the index of the first occurance of the action type if it occurs, otherwise -1
*/;
int Function FindActionForPerformer(string Id, int Position, string Type) Global Native

;/* FindAnyActionForPerformer
* * returns the first occurance of any of a list of actions from a performer in a scene
* *
* * @param: Id, the id of the scene
* * @param: Position, the index of the performer in the scene
* * @param: Types, and array of action types
* * 
* * @return: the index of the first occurance of any of the action types if one occurs, otherwise -1
*/;
int Function FindAnyActionForPerformer(string Id, int Position, string[] Types) Global Native

;/* FindActionsForPerformer
* * returns all occurances of an action from a performer in a scene
* * 
* * @param: Id, the id of the scene
* * @param: Position, the index of the performer in the scene
* * @param: Type, the action type
* *
* * @return: an array of the indices of all occurances of the action type
*/;
int[] Function FindActionsForPerformer(string Id, int Position, string Type) Global Native

;/* FindAllActionsForPerformer
* * returns all occurances of any of a list of actions from a performer in a scene
* *
* * @param: Id, the id of the scene
* * @param: Position, the index of the performer in the scene
* * @param: Types, an array of action types
* * 
* * @return: an array of the indices of all occurances of any of the action types
*/;
int[] Function FindAllActionsForPerformer(string Id, int Position, string[] Types) Global Native

;/* FindActionForPerformers
* * returns the first occurance of an action from a list of performers in a scene
* * 
* * @param: Id, the id of the scene
* * @param: Positions, an array of indices of the performers in the scene
* * @param: Type, the action type
* *
* * @return: the index of the first occurance of the action type if it occurs, otherwise -1
*/;
int Function FindActionForPerformers(string Id, int[] Positions, string Type) Global Native

;/* FindAnyActionForPerformers
* * returns the first occurance of any of a list of actions from a list of performers in a scene
* *
* * @param: Id, the id of the scene
* * @param: Positions, an array of indices of the performers in the scene
* * @param: Types, and array of action types
* * 
* * @return: the index of the first occurance of any of the action types if one occurs, otherwise -1
*/;
int Function FindAnyActionForPerformers(string Id, int[] Positions, string[] Types) Global Native

;/* FindActionsForPerformers
* * returns all occurances of an action from a list of performers in a scene
* * 
* * @param: Id, the id of the scene
* * @param: Positions, an array of indices of the performers in the scene
* * @param: Type, the action type
* *
* * @return: an array of the indices of all occurances of the action type
*/;
int[] Function FindActionsForPerformers(string Id, int[] Positions, string Type) Global Native

;/* FindAllActionsForPerformers
* * returns all occurances of any of a list of actions from a list of performers in a scene
* *
* * @param: Id, the id of the scene
* * @param: Positions, an array of indices of the performers in the scene
* * @param: Types, an array of action types
* * 
* * @return: an array of the indices of all occurances of any of the action types
*/;
int[] Function FindAllActionsForPerformers(string Id, int[] Positions, string[] Types) Global Native

;/* GetActionTypes
* * return all action types for a scene
* *
* * @param: Id, the id of the scene
* *
* * @return: an array containing all the action types for the scene
*/;
string[] Function GetActionTypes(string Id) Global Native

;/* GetActionType
* * returns the action type for an action in a scene
* * this is much faster than GetActionTypes(id)[index]
* *
* * @param: Id, the id of the scene
* * @param: Index, the index of the action
* *
* * @return: the action type
*/;
string Function GetActionType(string Id, int Index) Global Native

;/* GetActionActors
* * returns all actions actors in a scene
* * 
* * @param: Id, the id of the scene
* *
* * @return: an array of the positions in the scene of the actors of all actions
*/;
int[] Function GetActionActors(string Id) Global Native

;/* GetActionActor
* * returns the actor for an action in a scene
* * this is much faster than GetActionActors(id)[index]
* *
* * @param: Id, the id of the scene
* * @param: Index, the index of the action
* *
* * @return: the position in the scene of the actor
*/;
int Function GetActionActor(string Id, int Index) Global Native

;/* GetActionTargets
* * returns all actions targets in a scene
* * 
* * @param: Id, the id of the scene
* *
* * @return: an array of the positions in the scene of the targets of all actions
*/;
int[] Function GetActionTargets(string Id) Global Native

;/* GetActionTarget
* * returns the target for an action in a scene
* * this is much faster than GetActionTargets(id)[index]
* *
* * @param: Id, the id of the scene
* * @param: Index, the index of the action
* *
* * @return: the position in the scene of the target
*/;
int Function GetActionTarget(string Id, int Index) Global Native

;/* GetActionActors
* * returns all actions performers in a scene
* * 
* * @param: Id, the id of the scene
* *
* * @return: an array of the positions in the scene of the performers of all actions
*/;
int[] Function GetActionPerformers(string Id) Global Native

;/* GetActionPerformer
* * returns the performer for an action in a scene
* * this is much faster than GetActionPerformers(id)[index]
* *
* * @param: Id, the id of the scene
* * @param: Index, the index of the action
* *
* * @return: the position in the scene of the performer
*/;
int Function GetActionPerformer(string Id, int Index) Global Native