alias physicalSP S0;
physicalSP = ([PTBR + 2*(SP/512)]*512) + (SP%512);

alias sysCallNo S1;
sysCallNo = [physicalSP - 1];

if (sysCallNo == 10) then
	
	alias newPCBIndex S2;
	newPCBIndex = 0;
	
	while ( newPCBIndex < 32 ) do
		if([ READY_LIST + 32 * newPCBIndex + 1] == 1) then
			break;
		endif;
		newPCBIndex = newPCBIndex + 1;
	endwhile;
	
	if( newPCBIndex == 32 ) then
		halt;
	endif;
	
	alias currentPID S3;
	currentPID = (PTBR - 1024)/8;
	
	alias currentPCB S5;
	currentPCB = READY_LIST + 32*currentPID;

	
	alias counter S4;
	counter = 0;
	
	while ( counter < 8 ) do 
		
		alias FileIndex S8;
		FileIndex=[currentPCB + 2*counter + 15];
	
		if( FileIndex != -1 ) then
			[FILE_TABLE + 2*FileIndex + 1]=[FILE_TABLE + 2*FileIndex + 1]-1;

			if ([FILE_TABLE + 2*FileIndex + 1] == 0) then
				[FILE_TABLE + 2*FileIndex]=-1;
			endif;
				
			[currentPCB + 2*FileIndex + 15 +2 * counter ] =-1;
			[currentPCB + 2*FileIndex + 16 +2 * counter ] =-1;			
		
		endif;
		
		
		
		counter = counter + 1;
	endwhile;
	
	[currentPCB + 1]=0;
	
	counter = 0;
	
	while ( counter < 4 ) do
		if( [PTBR +2 *counter +1] == "10" || [PTBR +2 *counter +1] == "11") then
			[ MEM_LIST + [PTBR + 2 * counter]]=0;
		endif;
		counter = counter + 1;
	endwhile;
	
	counter = 0;
	
	while ( counter < 4 ) do 
		[PTBR + 2* counter ] =-1;
		[PTBR + 2* counter +1]="00";
		counter = counter +1 ;
	endwhile;
	
	alias newPID S12;
	newPID = currentPID + 1;
	
	alias newPCB S13;
	
	while(1) do
	if (newPID == 32) then
		newPID=0;
	endif;
	newPCB = READY_LIST + 32*newPID;
	if ([newPCB + 1] == 1) then
		break;
	endif;
	newPID = newPID+1;
	endwhile;
	
	BP = [newPCB + 2];
	SP = [newPCB + 3];
	PTBR = [newPCB + 5];
	PTLR = [newPCB + 6];
	R0 = [newPCB + 7];
	R1 = [newPCB + 8];
	R2 = [newPCB + 9];
	R3 = [newPCB + 10];
	R4 = [newPCB + 11];
	R5 = [newPCB + 12];
	R6 = [newPCB + 13];
	R7 = [newPCB + 14];

SP = SP+1;
	alias newphysicalSP S11;
	newphysicalSP = ([PTBR + 2*(SP/512)]*512) + (SP%512);
	[newphysicalSP] = [newPCB + 4];
	[newPCB + 1] = 2;
	ireturn;
endif;
