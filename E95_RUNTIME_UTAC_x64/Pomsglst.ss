* Establish Communication Request
EstabComm: S1F13 OUTPUT W
<L
>.

* Request Off-line
GoOffLine: S1F15 OUTPUT W .

* Request On-line
GoOnLine: S1F17 OUTPUT W .

PWC_ID_1A27S360_1: S3F17 OUTPUT W
<L
	<U4 1> * DATAID
	<A 'ProceedWithCarrier'> * CARRIERACTION
	<A '1A27S360'> * CARRIER SPEC
	<U1 1> * PTN Port Number
	<L * # of Carrier Attributes
		<L [2]
			<A 'ContentMap'>
			<L [25] * Must equal to all slots in cassette
				<L [2]
					<A 'LOTA1'> * LotID
					<A 'A1'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA2'> * LotID
					<A 'A2'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA3'> * LotID
					<A 'A3'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA4'> * LotID
					<A 'A4'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA5'> * LotID
					<A 'A5'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA6'> * LotID
					<A 'A6'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA7'> * LotID
					<A 'A7'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA8'> * LotID
					<A 'A8'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA9'> * LotID
					<A 'A9'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA10'> * LotID
					<A 'A10'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA11'> * LotID
					<A 'A11'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA12'> * LotID
					<A 'A12'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA13'> * LotID
					<A 'A13'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA14'> * LotID
					<A 'A14'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA15'> * LotID
					<A 'A15'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA16'> * LotID
					<A 'A16'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA17'> * LotID
					<A 'A17'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA18'> * LotID
					<A 'A18'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA19'> * LotID
					<A 'A19'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA20'> * LotID
					<A 'A20'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA21'> * LotID
					<A 'A21'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA22'> * LotID
					<A 'A22'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA23'> * LotID
					<A 'A23'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA24'> * LotID
					<A 'A24'>* Wafer ID, must be non zero length if LotID is specified
				>
				<L [2]
					<A 'LOTA25'> * LotID
					<A 'A25'>* Wafer ID, must be non zero length if LotID is specified
				>
			>
		>
	>
>.

* Proceed With Carrier SM Port 1
PWC_SM_1A27S360_1: S3F17 OUTPUT W
<L [5]
	<U4 1>
	<A 'ProceedWithCarrier'>
	<A '1A27S360'> * CARRIER SPEC
	<U1 1> * PTN Port Number
	<L
		<L [2]
			<A 'ObjID'>
			<A '1A27S360'>
		>
		<L [2]
			<A 'Slot map'>
			<L [25]
				<U2 3>
				<U2 3>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
				<U2 1>
			>
		>
	>
>.

* Create Process Job Multi
PRJob_Multi_1A27S360: S16F15 OUTPUT W
<L [2]
	<U2 1> * DATAID
	<L
		<L [6]
			<A 'PRJob1'> * PRJob ID
			<B 0D> * Material format code: 0D = Carrier
			<L [1] * List of carrier
				<L [2]
					<A '1A27S360'> * Carrier ID
					<L
						<U1 1>
					>
				>
			>
			<L [3]
				<U1 2> * Process Recipe Method
				<A 'R1'> * Recipe Spec
				<L
					<L [2]
						<A ''>
						<A ''>
					>
				>
			>
			<BOOL T> * PR Process Start
			<L [0]> * PR Pause Event
		>
		<L [6]
			<A 'PRJob2'> * PRJob ID
			<B 0D> * Material format code: 0D = Carrier
			<L [1] * List of carrier
				<L [2]
					<A '1A27S360'> * Carrier ID
					<L
						<U1 2>
					>
				>
			>
			<L [3]
				<U1 2> * Process Recipe Method
				<A 'R1'> * Recipe Spec
				<L
					<L [2]
						<A ''>
						<A ''>
					>
				>
			>
			<BOOL T> * PR Process Start
			<L [0]> * PR Pause Event
		>
	>
>.

* Create Control Job
CJob_Multi_1A27S360: S14F9 OUTPUT W
<L [3]
	<A 'Equipment'>
	<A 'ControlJob'>
	<L [7]
		<L [2]
			<A 'ObjID'>
			<A 'CJobA'>
		>
		<L [2]
			<A 'ProcessOrderMgmt'>
			<U1 1>
		>
		<L [2]
			<A 'StartMethod'>
			<BOOL F>
		>
		<L [2]
			<A 'CarrierInputSpec'>
			<L
				<A '1A27S360'>
			>
		>
		<L [2]
			<A 'MtrlOutSpec'>
			<L [0]>
		>
		<L [2]
			<A 'ProcessingCtrlSpec'>
			<L [2]
				<L[3]
					<A 'PRJob1'>
					<L [0]>
					<L [0]>
				>
				<L[3]
					<A 'PRJob2'>
					<L [0]>
					<L [0]>
				>
			>
		>
		<L [2]
			<A 'PauseEvent'>
			<L [0]>
		>
	>
>.

StartCJob_CJobA: S16F27 OUTPUT W
<L [3]
	<A 'CJobA'> * CTLJOBID
	<U1 1> * CTLJOBCMD
	<L [2]
		<A 'Action'> * CPNAME
		<U1 1> * CPVAL
	>
>.

RemoteCmd1: S2F21 OUTPUT W
<U1 1>. * Release Port 1
PauseCJob_CJobA: S16F27 OUTPUT W
<L [3]
	<A 'CJobA'> * CTLJOBID
	<U1 2> * CTLJOBCMD
	<L [2]
		<A 'Action'> * CPNAME
		<U1 2> * CPVAL
	>
>.

ResumeCJob_CJobA: S16F27 OUTPUT W
<L [3]
	<A 'CJobA'> * CTLJOBID
	<U1 3> * CTLJOBCMD
	<L [2]
		<A 'Action'> * CPNAME
		<U1 3> * CPVAL
	>
>.

CamcelCJob_CJobA: S16F27 OUTPUT W
<L [3]
	<A 'CJobA'> * CTLJOBID
	<U1 4> * CTLJOBCMD
	<L [2]
		<A 'Action'> * CPNAME
		<U1 4> * CPVAL
	>
>.

StopCJob_CJobA: S16F27 OUTPUT W
<L [3]
	<A 'CJobA'> * CTLJOBID
	<U1 6> * CTLJOBCMD
	<L [2]
		<A 'Action'> * CPNAME
		<U1 6> * CPVAL
	>
>.

AbortCJob_CJobA: S16F27 OUTPUT W
<L [3]
	<A 'CJobA'> * CTLJOBID
	<U1 7> * CTLJOBCMD
	<L [2]
		<A 'Action'> * CPNAME
		<U1 7> * CPVAL
	>
>.

* Cancel Carrier At Port 1
CancelCarrierAtPort_Port1: S3F17 OUTPUT W
<L [5]
	<U4 1> * DATAID
	<A 'CancelCarrierAtPort'> * CARRIERACTION
	<A ''> * CARRIERSPEC
	<U1 1> * PTN
	<L> * Carrier Attributes
>.

* Cancel Carrier At Port 2
CancelCarrierAtPort_Port2: S3F17 OUTPUT W
<L [5]
	<U4 1> * DATAID
	<A 'CancelCarrierAtPort'> * CARRIERACTION
	<A ''> * CARRIERSPEC
	<U1 2> * PTN
	<L> * Carrier Attributes
>.

* Cancel Carrier
CancelCarrier_1A27S360: S3F17 OUTPUT W
<L [4]
	<U4 1> * DATAID
	<A 'CancelCarrier'> * CARRIERACTION
	<A '1A27S360'> * CARRIERSPEC
	<U2 0> * PTN
	<L > * Carrier Attributes
>.

* Delete Object Request
DeleteObject_CJobA: S14F11 OUTPUT W
<L [2]
	<A 'CJobA'>
	<L [0]>
>.

* Delete Object Request
DeleteCJob_All: S14F11 OUTPUT W
<L [2]
	<A 'CONTROLLJOBALL'>
	<L [0]>
>.

* Delete Object Request
DeletePJob_All: S14F11 OUTPUT W
<L [2]
	<A 'PROCESSJOBALL'>
	<L [0]>
>.

* Delete Object Request
DeleteObject_PRJob1: S14F11 OUTPUT W
<L [2]
	<A 'PRJob1'>
	<L [0]>
>.

* Delete Object Request
DeleteObject_PRJob2: S14F11 OUTPUT W
<L [2]
	<A 'PRJob2'>
	<L [0]>
>.

PJobDequeue_PRJob1: S16F17 OUTPUT W
<L [1]
	<A 'PrJob1'>
>.

PJobDequeue_PRJob2: S16F17 OUTPUT W
<L [1]
	<A 'PrJob1'>
>.

* All Equipment Status Request
AllEqpStatusReq: S1F3 OUTPUT W
<L
>.	

* Request LineMode and EqpStats
ReqEqpStatus: S1F3 OUTPUT W
<L
	<U2 12> * LINEMODE
	<U2 14> * EQUIPMENT STATUS
	<U2 39> * LP1 ACCESS MODE
	<U2 28> * LP1 OCCUPANCY STATUS
	<U2 29> * LP1 CARRIER ACCESS STATUS
	<U2 30> * LP1 TRANSFER STATUS
	<U2 31> * LP1 ASSOCIATE STATUS
	<U2 56> * LP2 ACCESS MODE
	<U2 45> * LP2 OCCUPANCY STATUS
	<U2 46> * LP2 CARRIER ACCESS STATUS
	<U2 47> * LP2 TRANSFER STATUS
	<U2 48> * LP2 ASSOCIATE STATUS
	<U2 17> * EQUIPMENT STATE LIST
	<U2 16> * LINE MODE LIST
	<U2 18> * LP OCCUPANCY STATE LIST
	<U2 19> * LP ACCESS STATE LIST
	<U2 20> * LP TRANSFER STATE LIST
	<U2 21> * LP ASSOCIATE STATE LIST
>.

* All Status Variable Namelist Request
AllStatusVarNamelistReq: S1F11 OUTPUT W
<L
>.

* Define Report
DeleteAllRptIDs: S2F33 OUTPUT W
<L [2]
	<U2 0>
	<L>
>.

* DefineReport
DefineReport: S2F33 OUTPUT W
<L [2]
	<U2 3> * DATA ID
	<L
		<L [2]
			<U2 10> * TIME
			<L
				<U2 9> * TIME STAMP
			>
		>
		<L [2]
			<U2 11> * TIME & LP1 CONDITIONS
			<L
				<U2 9> * TIME STAMP
				<U2 39> * LP1 ACCESS MODE
				<U2 30> * LP1 TRANSFER STATUS
			>
		>
		<L [2]
			<U2 12> * TIME & LP2 CONDITIONS
			<L
				<U2 9> * TIME STAMP
				<U2 56> * LP2 ACCESS MODE
				<U2 47> * LP2 TRANSFER STATUS
			>
		>
		<L [2]
			<U2 16> * PORT & CARRIER
			<L
				<U2 7> * CURRENT CARRIER ID
				<U2 6> * CURRENT PORT NO
				<U2 8> * LAST KNOWN SLOT MAP
			>
		>
		<L [2]
			<U2 17> * JOB PROPERTIES
			<L
				<U2 66> * CURRENT CJOB ID
				<U2 72> * CURRENT PRJOB ID
			>
		>
		<L [2]
			<U2 20> * EQUIPMENT CONDITION
			<L
				<U2 12> * LINEMODE
				<U2 14> * EQUIPMENT STATUS
			>
		>
		<L [2]
			<U2 24> * MEASUREMENT RESULT (POINT)
			<L
				<U2 9> * TIME STAMP
				<U2 108> * POINT LEVEL MEASUREMENT RESULT
			>
		>
		<L [2]
			<U2 25> * MEASUREMENT RESULT (WAFER)
			<L
				<U2 9> * TIME STAMP
				<U2 109> * WAFER LEVEL MEASUREMENT RESULT
			>
		>
		<L [2]
			<U2 30> * PROCESS PROPERTIES
			<L
				<U2 62> * CONTROL JOB MAX QUEUE COUNT
				<U2 63> * CONTROL JOB AVAILABLE SPACE
				<U2 66> * CURRENT CJOB ID
				<U2 69> * PROCESSJOB MAX QUEUE COUNT
				<U2 70> * PROCESS JOB AVAILABLE SPACE
				<U2 72> * CURRENT PRJOB ID
				<U2 81> * SPOOL COUNT ACTUAL
				<U2 73> * CURRENT PRJOB STATE
				<U2 74> * CURRENT PRJOB STATE (TEXT)
				<U2 65> * QUEUED CJOBS LIST
			>
		>
		<L [2]
			<U2 34> * LOAD PORT PROPERTIES
			<L
				<U2 28> * LP1 OCCUPANCY STATUS
				<U2 45> * LP2 OCCUPANCY STATUS
				<U2 39> * LP1 ACCESS MODE
				<U2 56> * LP2 ACCESS MODE
				<U2 30> * LP1 TRANSFER STATUS
				<U2 47> * LP2 TRANSFER STATUS
				<U2 35> * LP1 CARRIER ID AT PLACEMENT
				<U2 52> * LP2 CARRIER ID AT PLACEMENT
				<U2 36> * LP1 CARRIER ID AT DOCK
				<U2 53> * LP2 CARRIER ID AT DOCK
			>
		>
		<L [2]
			<U2 36> * CHUCK SUBSTRATE LOCATION PROPERTIES
			<L
				<U2 105> * CHUCK SUBSRATE LOCATION STATE
				<U2 106> * CHUCK SUBSRATE ID
			>
		>
		<L [2]
			<U2 38> * ALARM INFORMATION
			<L
				<U2 75> * ALARM ENABLED LIST
				<U2 76> * ALARM SET LIST
			>
		>
		<L [2]
			<U2 300> * PJ INFORMATION
			<L
				<U2 73> * CURRENT PRJOB STATE
				<U2 74> * CURRENT PRJOB STATE (TEXT)
				<U2 72> * CURRENT PRJOB ID
			>
		>
		<L [2]
			<U2 310> * CJ INFORMATION
			<L
				<U2 67> * CURRENT CJOB STATE
				<U2 68> * CURRENT CJOB STATE (TEXT)
				<U2 66> * CURRENT CJOB ID
				<U2 65> * QUEUED CJOBS LIST
			>
		>
		<L [2]
			<U2 510> * CARRIER LOAD PORT
			<L
				<U2 6> * CURRENT PORT NO
				<U2 7> * CURRENT CARRIER ID
			>
		>
		<L [2]
			<U2 520> * SLOTMAP INFORMATION
			<L
				<U2 6> * CURRENT PORT NO
				<U2 7> * CURRENT CARRIER ID
				<U2 27> * LP1 SLOTMAP STATUS
				<U2 44> * LP2 SLOTMAP STATUS
			>
		>
		<L [2]
			<U2 600> * LOAD PORT STATUS
			<L
				<U2 7> * CURRENT CARRIER ID
			>
		>
		<L [2]
			<U2 700> * PORT ID
			<L
				<U2 6> * CURRENT PORT NO
			>
		>
		<L [2]
			<U2 750> * LOAD PORT PROPERTIES
			<L
				<U2 6> * CURRENT PORT NO
				<U2 28> * LP1 OCCUPANCY STATUS
				<U2 45> * LP2 OCCUPANCY STATUS
				<U2 39> * LP1 ACCESS MODE
				<U2 56> * LP2 ACCESS MODE
				<U2 30> * LP1 TRANSFER STATUS
				<U2 47> * LP2 TRANSFER STATUS
			>
		>
		<L [2]
			<U2 800> * CARRIER ID
			<L
				<U2 7> * CURRENT CARRIER ID
			>
		>
		<L [2]
			<U2 850> * CARRIER LOCATION
			<L
				<U2 36> * LP1 CARRIER ID AT DOCK
				<U2 35> * LP1 CARRIER ID AT PLACEMENT
				<U2 53> * LP2 CARRIER ID AT DOCK
				<U2 52> * LP2 CARRIER ID AT PLACEMENT
			>
		>
		<L [2]
			<U2 900> * SUBSTRATE LOCATION
			<L
				<U2 95> * SUBSRATE ID
				<U2 96> * SUBSRATE LOCATION ID
			>
		>
	>
>.

* Link Event Report
LinkReport: S2F35 OUTPUT W
<L[2]
	<U2 3> * DATAID
	<L
		<L [2]
			<U2 1> * ONLINE REMOTE
			<L
				<U2 10> * TIME
				<U2 20> * EQUIPMENT CONDITION
			>
		>
		<L [2]
			<U2 2> * ONLINE LOCAL
			<L
				<U2 10> * TIME
				<U2 20> * EQUIPMENT CONDITION
			>
		>
		<L [2]
			<U2 4> * OFFLINE HOST
			<L
				<U2 10> * TIME
				<U2 20> * EQUIPMENT CONDITION
			>
		>
		<L [2]
			<U2 3> * OFFLINE EQUIPMENT
			<L
				<U2 10> * TIME
				<U2 20> * EQUIPMENT CONDITION
			>
		>
		<L [2]
			<U2 4> * OFFLINE HOST
			<L
				<U2 10> * TIME
			>
		>
		<L [2]
			<U2 3> * OFFLINE EQUIPMENT
			<L
				<U2 10> * TIME
			>
		>
		<L [2]
			<U2 182> * LP1 NO STATE TO WAITING FOR HOST
			<L
				<U2 10> * TIME
				<U2 16> * PORT & CARRIER
			>
		>
		<L [2]
			<U2 186> * LP1 ID NOT READ TO WAITING FOR HOST
			<L
				<U2 10> * TIME
				<U2 16> * PORT & CARRIER
			>
		>
		<L [2]
			<U2 382> * LP2 NO STATE TO WAITING FOR HOST
			<L
				<U2 10> * TIME
				<U2 16> * PORT & CARRIER
			>
		>
		<L [2]
			<U2 386> * LP2 ID NOT READ TO WAITING FOR HOST
			<L
				<U2 10> * TIME
				<U2 16> * PORT & CARRIER
			>
		>
		<L [2]
			<U2 212> * LP1 SLOTMAP NOT READ TO WAITING FOR HOST
			<L
				<U2 10> * TIME
				<U2 16> * PORT & CARRIER
			>
		>
		<L [2]
			<U2 412> * LP2 SLOTMAP NOT READ TO WAITING FOR HOST
			<L
				<U2 10> * TIME
				<U2 16> * PORT & CARRIER
			>
		>
		<L [2]
			<U2 213> * LP1 WAITING FOR HOST TO SLOTMAP VER OK
			<L
				<U2 10> * TIME
				<U2 16> * PORT & CARRIER
			>
		>
		<L [2]
			<U2 413> * LP2 WAITING FOR HOST TO SLOTMAP VER OK
			<L
				<U2 10> * TIME
				<U2 16> * PORT & CARRIER
			>
		>
		<L [2]
			<U2 107> * LP1 CARRIER CLAMPPED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 357> * LP2 CARRIER CLAMPPED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 102> * LP1 CARRIER DOCKED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 352> * LP2 CARRIER DOCKED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 103> * LP1 CARRIER OPENED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 353> * LP2 CARRIER OPENED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 251> * LP1 NOT ASSOCIATED TO ASSOCIATED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 441> * LP2 NOT ASSOCIATED TO ASSOCIATED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 540> * CJ NO STATE TO QUEUED
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 541> * CJ QUEUED TO NO STATE
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 542> * CJ QUEUED TO SELECTED
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 543> * CJ SELECTED TO QUEUED
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 544> * CJ SELECTED TO EXECUTING
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 545> * CJ SELECTED TO WAITING FOR START
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 546> * CJ WAITING FOR START TO EXECUTING
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 547> * CJ EXECUTING TO PAUSED
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 548> * CJ PAUSED TO EXECUTING
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 549> * CJ EXECUTING TO COMPLETED
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 550> * CJ ACTIVE TO COMPLETED STOP
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 551> * CJ ACTIVE TO COMPLETED ABORT
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 552> * CJ COMPLETED TO NO STATE
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 520> * PJ NO STATE TO QUEUED
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 521> * PJ QUEUED TO SETTING UP
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 522> * PJ SETTING UP TO WAITING FOR START
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 523> * PJ SETTING UP TO PROCESSING
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 524> * PJ WAITING FOR START TO PROCESSING
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 525> * PJ EXECUTING TO PROCESS COMPLETE
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 526> * PJ PROCESS COMPLETE TO NO STATE
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 527> * PJ EXECUTING TO PAUSING
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 528> * PJ PAUSING TO PAUSED
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 529> * PJ PAUSE TO EXECUTING
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 530> * PJ EXECUTING TO STOPPING
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 531> * PJ PAUSE TO STOPPING
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 532> * PJ EXECUTING TO ABORTING
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 533> * PJ STOPPING TO ABORTING
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 534> * PJ PAUSE TO ABORTING
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 535> * PJ ABORTING TO NO STATE
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 536> * PJ STOPPING TO NO STATE
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 537> * PJ QUEUED TO NO STATE
			<L
				<U2 10> * TIME
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 24> * PER POINT LEVEL RESULT
			<L
				<U2 24> * MEASUREMENT RESULT (POINT)
				<U2 16> * PORT & CARRIER
				<U2 17> * JOB PROPERTIES
			>
		>
		<L [2]
			<U2 25> * PER WAFER LEVEL REULT
			<L
				<U2 25> * MEASUREMENT RESULT (WAFER)
			>
		>
		<L [2]
			<U2 542> * CJ QUEUED TO SELECTED
			<L
				<U2 10> * TIME
				<U2 310> * CJ INFORMATION
			>
		>
		<L [2]
			<U2 544> * CJ SELECTED TO EXECUTING
			<L
				<U2 10> * TIME
				<U2 310> * CJ INFORMATION
			>
		>
		<L [2]
			<U2 549> * CJ EXECUTING TO COMPLETED
			<L
				<U2 10> * TIME
				<U2 310> * CJ INFORMATION
			>
		>
		<L [2]
			<U2 545> * CJ SELECTED TO WAITING FOR START
			<L
				<U2 10> * TIME
				<U2 310> * CJ INFORMATION
			>
		>
		<L [2]
			<U2 180> * LP1 NO STATE TO CARRIER
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 380> * LP2 NO STATE TO CARRIER
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 181> * LP1 NO STATE TO ID NO TREAD
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 381> * LP2 NO STATE TO ID NO TREAD
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 182> * LP1 NO STATE TO WAITING FOR HOST
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 382> * LP2 NO STATE TO WAITING FOR HOST
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 183> * LP1 NO STATE TO ID VER OK
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 383> * LP2 NO STATE TO ID VER OK
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 184> * LP1 NO STATE TO ID VER FAIL
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 384> * LP2 NO STATE TO ID VER FAIL
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 185> * LP1 ID NO TREAD TO ID VER OK
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 385> * LP2 ID NO TREAD TO ID VER OK
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 186> * LP1 ID NOT READ TO WAITING FOR HOST
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 386> * LP2 ID NOT READ TO WAITING FOR HOST
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 187> * LP1 WAITING FOR HOST TO ID VER OK
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 387> * LP2 WAITING FOR HOST TO ID VER OK
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 188> * LP1 WAITING FOR HOST TO ID VER FAIL
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 388> * LP2 WAITING FOR HOST TO ID VER FAIL
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 210> * LP1 NO STATE TO SLOTMAP NOT READ
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 410> * LP2 NO STATE TO SLOTMAP NOT READ
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 211> * LP1 SLOTMAP NOT READ TO SLOTMAP VER OK
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 411> * LP2 SLOTMAP NOT READ TO SLOTMAP VER OK
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 214> * LP1 WAITING FOR HOST TO SLOTMAP VER FAIL
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 414> * LP2 WAITING FOR HOST TO SLOTMAP VER FAIL
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 216> * LP1 NOT ACCESSED TO IN ACCESS
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 416> * LP2 NOT ACCESSED TO IN ACCESS
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 217> * LP1 IN ACCESS TO CARRIER COMPLETE
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 417> * LP2 IN ACCESS TO CARRIER COMPLETE
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 218> * LP1 IN ACCESS TO CARRIE RSTOPPED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 418> * LP2 IN ACCESS TO CARRIE RSTOPPED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 219> * LP1 CARRIER TO NO STATE
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 419> * LP2 CARRIER TO NO STATE
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 240> * LP1 NO STATE TO NOT RESERVED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 241> * LP1 NOT RESERVED TO RESERVED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 242> * LP1 RESERVED TO NOT RESERVED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 430> * LP2 NO STATE TO NOT RESERVED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 431> * LP2 NOT RESERVED TO RESERVED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 432> * LP2 RESERVED TO NOT RESERVED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 250> * LP1 NO STATE TO NOT ASSOCIATED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 252> * LP1 ASSOCIATED TO NOT ASSOCIATED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 253> * LP1 ASSOCIATED TO ASSOCIATED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 252> * LP1 ASSOCIATED TO NOT ASSOCIATED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 440> * LP2 NO STATE TO NOT ASSOCIATED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 442> * LP2 ASSOCIATED TO NOT ASSOCIATED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 443> * LP2 ASSOCIATED TO ASSOCIATED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 252> * LP1 ASSOCIATED TO NOT ASSOCIATED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 260> * LP1 NO STATE TO NOT OCCUPIED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 261> * LP1 NOT OCCUPIED TO OCCUPIED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 262> * LP1 OCCUPIED TO NOT OCCUPIED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 450> * LP2 NO STATE TO NOT OCCUPIED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 451> * LP2 NOT OCCUPIED TO OCCUPIED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 452> * LP2 OCCUPIED TO NOT OCCUPIED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 100> * LP1 CARRIER ARRIVED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 109> * LP1 CARRIER REMOVED
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 117> * LP1 LOAD COMPLETE
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 367> * LP2 LOAD COMPLETE
			<L
				<U2 10> * TIME
				<U2 510> * CARRIER LOAD PORT
			>
		>
		<L [2]
			<U2 420> * LP2 NO STATE TO MANUAL
			<L
				<U2 10> * TIME
				<U2 600> * LOAD PORT STATUS
				<U2 700> * PORT ID
			>
		>
		<L [2]
			<U2 421> * LP2 NO STATE TO AUTO
			<L
				<U2 10> * TIME
				<U2 600> * LOAD PORT STATUS
				<U2 700> * PORT ID
			>
		>
		<L [2]
			<U2 232> * LP1 MANUAL TO AUTO
			<L
				<U2 10> * TIME
				<U2 600> * LOAD PORT STATUS
				<U2 700> * PORT ID
			>
		>
		<L [2]
			<U2 423> * LP2 AUTO TO MANUAL
			<L
				<U2 10> * TIME
				<U2 600> * LOAD PORT STATUS
				<U2 700> * PORT ID
			>
		>
		<L [2]
			<U2 500> * NO STATE TO AT SOURCE
			<L
				<U2 10> * TIME
				<U2 900> * SUBSTRATE LOCATION
			>
		>
		<L [2]
			<U2 501> * AT SOURCE TO AT WORK
			<L
				<U2 10> * TIME
				<U2 900> * SUBSTRATE LOCATION
			>
		>
		<L [2]
			<U2 504> * AT WORK TO AT DESTINATION
			<L
				<U2 10> * TIME
				<U2 900> * SUBSTRATE LOCATION
			>
		>
		<L [2]
			<U2 509> * NO STATE TO NEEDS PROCESSING
			<L
				<U2 10> * TIME
				<U2 900> * SUBSTRATE LOCATION
			>
		>
		<L [2]
			<U2 510> * NEEDS PROCESSING TO IN PROGRESS
			<L
				<U2 10> * TIME
				<U2 900> * SUBSTRATE LOCATION
			>
		>
		<L [2]
			<U2 511> * IN PROCESS TO PROCESSING COMPLETE
			<L
				<U2 10> * TIME
				<U2 900> * SUBSTRATE LOCATION
			>
		>
	>
>.

RemoteCmd2: S2F21 OUTPUT W
<U1 2>. * Release Port 2
