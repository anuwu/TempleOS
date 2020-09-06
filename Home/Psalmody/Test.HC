//0 no nothing
U0 Song()
{
  Fs->task_end_cb=&SndTaskEndCB;
  MusicSettingsRst;
  music.tempo= 4.130;
  music.stacatto_factor= 0.714;
  try {
    while (!ScanKey) {
	Play("4wDqtCh.CqC");
	Play("h.CeDDD#qtC");
    }
  } catch
    PutExcept;
  Snd;
}

Song;
