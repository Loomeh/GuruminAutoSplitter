state("game")
{
	bool isLoading: 0x108A384;
	byte gameStarted: 0x63637C;
	byte rankingScreen: 0x5185F0;
}

start
{
	if ( current.gameStarted == 1 )
	{
		return true;
	}
}

isLoading
{
	return current.isLoading;
}

split
{
    return old.rankingScreen != 1 && current.rankingScreen == 1;
}