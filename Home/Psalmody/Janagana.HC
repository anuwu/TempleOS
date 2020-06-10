//0 no nothing
U0 Song()
{
  Fs->task_end_cb=&SndTaskEndCB;
  MusicSettingsRst;
  music.tempo= 1.655;
  music.stacatto_factor= 0.814;
  DocClear ;
  try {
        "Jana gana mana adhinayaka jayahe\n" ;
	Play("5eCDEEqEeEEqEeEEDEqF");
	"Bharata bhagya vidhata\n" ;
	Play("EeEEqDeDD4B5DhC");
  } catch
    PutExcept;
  Snd;
}

Song;
Cd (__DIR__) ;
