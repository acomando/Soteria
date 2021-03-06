/datum/admins/proc/Secrets()
	if(!check_rights(0))	return

	var/dat = "<B>The first rule of adminbuse is: you don't talk about the adminbuse.</B><HR>"

	if(check_rights(R_ADMIN,0))
		dat += {"
			<B>Admin Secrets</B><BR>
			<BR>
			<A href='?src=\ref[src];secretsadmin=list_bombers'>Bombing List</A><BR>
			<A href='?src=\ref[src];secretsadmin=check_antagonist'>Show current traitors and objectives</A><BR>
			<A href='?src=\ref[src];secretsadmin=list_signalers'>Show last [length(lastsignalers)] signalers</A><BR>
			<A href='?src=\ref[src];secretsadmin=list_lawchanges'>Show last [length(lawchanges)] law changes</A><BR>
			<A href='?src=\ref[src];secretsadmin=showailaws'>Show AI Laws</A><BR>
			<A href='?src=\ref[src];secretsadmin=showgm'>Show Game Mode</A><BR>
			<A href='?src=\ref[src];secretsadmin=manifest'>Show Crew Manifest</A><BR>
			<A href='?src=\ref[src];secretsadmin=DNA'>List DNA (Blood)</A><BR>
			<A href='?src=\ref[src];secretsadmin=fingerprints'>List Fingerprints</A><BR><BR>
			<BR>
			"}

	if(check_rights(R_FUN,0))
		dat += {"
			<B>'Random' Events</B><BR>
			<BR>
			<A href='?src=\ref[src];secretsfun=gravity'>Toggle ship artificial gravity</A><BR>
			<A href='?src=\ref[src];secretsfun=wave'>Spawn a wave of meteors (aka lagocolyptic shower)</A><BR>
			<A href='?src=\ref[src];secretsfun=gravanomalies'>Spawn a gravitational anomaly (aka lagitational anomolag)</A><BR>
			<A href='?src=\ref[src];secretsfun=timeanomalies'>Spawn wormholes</A><BR>
			<A href='?src=\ref[src];secretsfun=goblob'>Spawn blob</A><BR>
			<A href='?src=\ref[src];secretsfun=aliens'>Trigger a Xenomorph infestation</A><BR>
			<A href='?src=\ref[src];secretsfun=borers'>Trigger a Cortical Borer infestation</A><BR>
			<A href='?src=\ref[src];secretsfun=alien_silent'>Spawn an Alien silently</A><BR>
			<A href='?src=\ref[src];secretsfun=spiders'>Trigger a Spider infestation</A><BR>
			<A href='?src=\ref[src];secretsfun=spaceninja'>Send in a space ninja</A><BR>
			<A href='?src=\ref[src];secretsfun=striketeam'>Send in a strike team</A><BR>
			<A href='?src=\ref[src];secretsfun=carp'>Trigger an Carp migration</A><BR>
			<A href='?src=\ref[src];secretsfun=radiation'>Irradiate the ship</A><BR>
			<A href='?src=\ref[src];secretsfun=prison_break'>Trigger a Prison Break</A><BR>
			<A href='?src=\ref[src];secretsfun=virus'>Trigger a Virus Outbreak</A><BR>
			<A href='?src=\ref[src];secretsfun=immovable'>Spawn an Immovable Rod</A><BR>
			<A href='?src=\ref[src];secretsfun=lightsout'>Toggle a "lights out" event</A><BR>
			<A href='?src=\ref[src];secretsfun=ionstorm'>Spawn an Ion Storm</A><BR>
			<A href='?src=\ref[src];secretsfun=spacevines'>Spawn Space-Vines</A><BR>
			<A href='?src=\ref[src];secretsfun=comms_blackout'>Trigger a communication blackout</A><BR>
			<BR>
			<B>Shuttles</B><BR>
			<BR>
			<A href='?src=\ref[src];secretsfun=launchshuttle'>Launch a shuttle</A><BR>
			<A href='?src=\ref[src];secretsfun=forcelaunchshuttle'>Force launch a shuttle</A><BR>
			"}
	if(check_rights(R_DEBUG,0))
		dat += {"
			<I>These shouldn't be used in game</I><BR>
			<A href='?src=\ref[src];secretsfun=jumpshuttle'>Jump a shuttle</A><BR>
			<A href='?src=\ref[src];secretsfun=moveshuttle'>Move a shuttle</A><BR>
			"}
	if(check_rights(R_FUN,0))
		dat += {"
			<BR>
			<B>Fun Secrets</B><BR>
			<BR>
			<A href='?src=\ref[src];secretsfun=sec_clothes'>Remove 'internal' clothing</A><BR>
			<A href='?src=\ref[src];secretsfun=sec_all_clothes'>Remove ALL clothing</A><BR>
			<A href='?src=\ref[src];secretsfun=monkey'>Turn all humans into monkeys</A><BR>
			<A href='?src=\ref[src];secretsfun=sec_classic1'>Remove firesuits, grilles, and pods</A><BR>
			<A href='?src=\ref[src];secretsfun=power'>Make all areas powered</A><BR>
			<A href='?src=\ref[src];secretsfun=unpower'>Make all areas unpowered</A><BR>
			<A href='?src=\ref[src];secretsfun=quickpower'>Power all SMES</A><BR>
			<A href='?src=\ref[src];secretsfun=toggleprisonstatus'>Toggle Prison Shuttle Status(Use with S/R)</A><BR>
			<A href='?src=\ref[src];secretsfun=activateprison'>Send Prison Shuttle</A><BR>
			<A href='?src=\ref[src];secretsfun=deactivateprison'>Return Prison Shuttle</A><BR>
			<A href='?src=\ref[src];secretsfun=prisonwarp'>Warp all Players to Prison</A><BR>
			<A href='?src=\ref[src];secretsfun=tripleAI'>Triple AI mode (needs to be used in the lobby)</A><BR>
			<A href='?src=\ref[src];secretsfun=traitor_all'>Everyone is the traitor</A><BR>
			<A href='?src=\ref[src];secretsfun=onlyone'>There can only be one!</A><BR>
			<A href='?src=\ref[src];secretsfun=flicklights'>Ghost Mode</A><BR>
			<A href='?src=\ref[src];secretsfun=retardify'>Make all players retarded</A><BR>
			<A href='?src=\ref[src];secretsfun=fakeguns'>Make all items look like guns</A><BR>
			<A href='?src=\ref[src];secretsfun=schoolgirl'>Japanese Animes Mode</A><BR>
			<A href='?src=\ref[src];secretsfun=eagles'>Egalitarian Ship Mode</A><BR>
			<A href='?src=\ref[src];secretsfun=blackout'>Break all lights</A><BR>
			<A href='?src=\ref[src];secretsfun=whiteout'>Fix all lights</A><BR>
			<A href='?src=\ref[src];secretsfun=friendai'>Best Friend AI</A><BR>
			<A href='?src=\ref[src];secretsfun=floorlava'>The floor is lava! (DANGEROUS: extremely lame)</A><BR>
			"}

	if(check_rights(R_SERVER,0))
		dat += "<A href='?src=\ref[src];secretsfun=togglebombcap'>Toggle bomb cap</A><BR>"

	dat += "<BR>"

	if(check_rights(R_DEBUG|R_DEV,0))
		dat += {"
			<B>Security Level Elevated</B><BR>
			<BR>
			<A href='?src=\ref[src];secretscoder=maint_access_engiebrig'>Change all maintenance doors to engie/brig access only</A><BR>
			<A href='?src=\ref[src];secretscoder=maint_access_brig'>Change all maintenance doors to brig access only</A><BR>
			<A href='?src=\ref[src];secretscoder=infinite_sec'>Remove cap on security officers</A><BR>
			<BR>
			<B>Coder Secrets</B><BR>
			<BR>
			<A href='?src=\ref[src];secretsadmin=list_job_debug'>Show Job Debug</A><BR>
			<A href='?src=\ref[src];secretscoder=spawn_objects'>Admin Log</A><BR>
			<BR>
			"}

	usr << browse(dat, "window=secrets")
	return