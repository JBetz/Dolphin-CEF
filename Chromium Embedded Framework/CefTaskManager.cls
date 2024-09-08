"Filed out from Dolphin Smalltalk"!

CefReferenceCountedObject subclass: #CefTaskManager
	instanceVariableNames: ''
	classVariableNames: '_OffsetOf_get_task_id_for_browser_id _OffsetOf_get_task_ids_list _OffsetOf_get_task_info _OffsetOf_get_tasks_count _OffsetOf_kill_task Singleton'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

CefTaskManager guid: (GUID fromString: '{9e97e4ae-e8bf-4dfa-b3ae-4afe466ff202}')!

CefTaskManager addClassConstant: '_OffsetOf_get_task_id_for_browser_id' value: 16r24!
CefTaskManager addClassConstant: '_OffsetOf_get_task_ids_list' value: 16r18!
CefTaskManager addClassConstant: '_OffsetOf_get_task_info' value: 16r1C!
CefTaskManager addClassConstant: '_OffsetOf_get_tasks_count' value: 16r14!
CefTaskManager addClassConstant: '_OffsetOf_kill_task' value: 16r20!

CefTaskManager comment: ''!

!CefTaskManager categoriesForClass!External-Data-Structured! !

!CefTaskManager methodsFor!

_getTaskIdForBrowserId_cefTaskManager: cefTaskManager browserId: browserId
	<stdcall: sqword get_task_id_for_browser_id CefTaskManager* sdword>
	^self invalidCall: _failureCode!

_getTaskIdsList_cefTaskManager: cefTaskManager taskIdsCount: taskIdsCount taskIds: taskIds
	<stdcall: sdword get_task_ids_list CefTaskManager* dword* sqword*>
	^self invalidCall: _failureCode!

_getTaskInfo_cefTaskManager: cefTaskManager taskId: taskId info: info
	<stdcall: sdword get_task_info CefTaskManager* sqword CefTaskInfo*>
	^self invalidCall: _failureCode!

_getTasksCount_cefTaskManager: cefTaskManager
	<stdcall: dword get_tasks_count CefTaskManager*>
	^self invalidCall: _failureCode!

_killTask_cefTaskManager: cefTaskManager taskId: taskId
	<stdcall: sdword kill_task CefTaskManager* sqword>
	^self invalidCall: _failureCode!

get_task_id_for_browser_id
	"Answer the <ExternalAddress> value of the receiver's 'get_task_id_for_browser_id' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_task_id_for_browser_id) asExternalAddress!

get_task_id_for_browser_id: anExternalAddress
	"Set the receiver's 'get_task_id_for_browser_id' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_task_id_for_browser_id put: anExternalAddress!

get_task_ids_list
	"Answer the <ExternalAddress> value of the receiver's 'get_task_ids_list' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_task_ids_list) asExternalAddress!

get_task_ids_list: anExternalAddress
	"Set the receiver's 'get_task_ids_list' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_task_ids_list put: anExternalAddress!

get_task_info
	"Answer the <ExternalAddress> value of the receiver's 'get_task_info' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_task_info) asExternalAddress!

get_task_info: anExternalAddress
	"Set the receiver's 'get_task_info' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_task_info put: anExternalAddress!

get_tasks_count
	"Answer the <ExternalAddress> value of the receiver's 'get_tasks_count' field."

	^(bytes uintPtrAtOffset: _OffsetOf_get_tasks_count) asExternalAddress!

get_tasks_count: anExternalAddress
	"Set the receiver's 'get_tasks_count' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_get_tasks_count put: anExternalAddress!

getTaskIdForBrowserId_browserId: browserId
	| method arguments |
	method := self class externalMethodAt: #_getTaskIdForBrowserId_cefTaskManager:browserId:
				ifAbsentBindTo: self get_task_id_for_browser_id.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: browserId.
	^method value: self withArguments: arguments!

getTaskIdsList_taskIdsCount: taskIdsCount taskIds: taskIds
	| method arguments |
	method := self class externalMethodAt: #_getTaskIdsList_cefTaskManager:taskIdsCount:taskIds:
				ifAbsentBindTo: self get_task_ids_list.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: taskIdsCount;
		at: 3 put: taskIds.
	^method value: self withArguments: arguments!

getTaskInfo_taskId: taskId info: info
	| method arguments |
	method := self class externalMethodAt: #_getTaskInfo_cefTaskManager:taskId:info:
				ifAbsentBindTo: self get_task_info.
	arguments := Array new: 3.
	arguments
		at: 1 put: self;
		at: 2 put: taskId;
		at: 3 put: info.
	^method value: self withArguments: arguments!

getTasksCount
	| method |
	method := self class externalMethodAt: #_getTasksCount_cefTaskManager:
				ifAbsentBindTo: self get_tasks_count.
	^method value: self withArguments: (Array with: self)!

kill_task
	"Answer the <ExternalAddress> value of the receiver's 'kill_task' field."

	^(bytes uintPtrAtOffset: _OffsetOf_kill_task) asExternalAddress!

kill_task: anExternalAddress
	"Set the receiver's 'kill_task' field to the value of the argument, anExternalAddress"

	bytes uintPtrAtOffset: _OffsetOf_kill_task put: anExternalAddress!

killTask_taskId: taskId
	| method arguments |
	method := self class externalMethodAt: #_killTask_cefTaskManager:taskId:
				ifAbsentBindTo: self kill_task.
	arguments := Array new: 2.
	arguments
		at: 1 put: self;
		at: 2 put: taskId.
	^method value: self withArguments: arguments! !

!CefTaskManager categoriesForMethods!
_getTaskIdForBrowserId_cefTaskManager:browserId:!**compiled accessors**!private! !
_getTaskIdsList_cefTaskManager:taskIdsCount:taskIds:!**compiled accessors**!private! !
_getTaskInfo_cefTaskManager:taskId:info:!**compiled accessors**!private! !
_getTasksCount_cefTaskManager:!**compiled accessors**!private! !
_killTask_cefTaskManager:taskId:!**compiled accessors**!private! !
get_task_id_for_browser_id!**compiled accessors**!public! !
get_task_id_for_browser_id:!**compiled accessors**!public! !
get_task_ids_list!**compiled accessors**!public! !
get_task_ids_list:!**compiled accessors**!public! !
get_task_info!**compiled accessors**!public! !
get_task_info:!**compiled accessors**!public! !
get_tasks_count!**compiled accessors**!public! !
get_tasks_count:!**compiled accessors**!public! !
getTaskIdForBrowserId_browserId:!**compiled accessors**!public! !
getTaskIdsList_taskIdsCount:taskIds:!**compiled accessors**!public! !
getTaskInfo_taskId:info:!**compiled accessors**!public! !
getTasksCount!**compiled accessors**!public! !
kill_task!**compiled accessors**!public! !
kill_task:!**compiled accessors**!public! !
killTask_taskId:!**compiled accessors**!public! !
!

!CefTaskManager class methodsFor!

defineFields
	"CefTaskManager  compileDefinition"

	super defineFields.
	self
		defineField: #get_tasks_count
			type: (MethodField descriptor: (ExternalDescriptor fromString: 'stdcall: dword CefTaskManager*'));
		defineField: #get_task_ids_list
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefTaskManager* dword* sqword*')
					smalltalkName: #getTaskIdsList_taskIdsCount:taskIds:);
		defineField: #get_task_info
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefTaskManager* sqword CefTaskInfo*')
					smalltalkName: #getTaskInfo_taskId:info:);
		defineField: #kill_task
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: sdword CefTaskManager* sqword')
					smalltalkName: #killTask_taskId:);
		defineField: #get_task_id_for_browser_id
			type: (MethodField
					descriptor: (ExternalDescriptor fromString: 'stdcall: sqword CefTaskManager* sdword')
					smalltalkName: #getTaskIdForBrowserId_browserId:)!

getFieldNames
	^#(#base #get_tasks_count #get_task_ids_list #get_task_info #kill_task #get_task_id_for_browser_id)!

new
	Singleton ifNil: [Singleton := CefLibrary default taskManagerGet].
	^Singleton! !

!CefTaskManager class categoriesForMethods!
defineFields!public! !
getFieldNames!**compiled accessors**!constants!private! !
new!public! !
!

