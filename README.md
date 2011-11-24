# Compiling

* linux-x86\_64:

  run ./build.sh

* other platforms:

  check build.sh for correct cmake comands

All output files should be generated in ./build/ directory with packed
warpig.pk3

If everything was fine, you should see: _game_, _cgame_ and _ui_ for _windows_, _linux-x86_ and _linux-x86\_64_

# Bugfixes

Numbers refers to list from [http://games.chruker.dk/enemy_territory/modding_project_bugfix.php](http://games.chruker.dk/enemy_territory/modding_project_bugfix.php)

* [031](http://games.chruker.dk/enemy_territory/modding_project_bugfix.php?bug_id=031): Show connecting people as connecting in the scoreboard and not as spectators
* [036](http://games.chruker.dk/enemy_territory/modding_project_bugfix.php?bug_id=036): Mine flags blocking other mines from being spotted
* [037](http://games.chruker.dk/enemy_territory/modding_project_bugfix.php?bug_id=037): Negative XP doesn't show up on the playerstat dropdown
* [060](http://games.chruker.dk/enemy_territory/modding_project_bugfix.php?bug_id=060): Muted players becoming referee can't get unmuted
