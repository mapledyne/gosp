import zlib.ash;

string welcome = "Welcome to the Guardians of the Six Pack, I'm DeGrassi, an officer of the Six Pack\n\nI'd also like to take this time to introduce you to our glorious leaders Enzo, or Lord Enzo, Major Meat and Ertest1 in chat (all his alt characters), however you can always just call him Enzo. The rest of us do!\n\nBig Jilm is currently our co-leader and also super helpful.\n\nNow that you're in the clan all we need from you to confirm you membership and give you full privileges and dungeon access is a 'clan title' just a brief phrase or statement about yourself or your character that we can set on you to indicate that you're active. It can be anything that comes to mind trust me that thing you're thinking of right now will be perfect!\n\nIf you need any help with the clan or the game in general please feel free to ask us in clan chat! Hope to see you there soon!";

void new_member(string player)
{
  string id = get_player_id(player);

  string title = format_date_time('yyyyMMdd',today_to_string(), 'MM/dd');
  title += " Title??";

  string url = "clan_members.php?title^=*&pids[]=^&pwd&level^=0&action=modify";
  url = replace_string(url, "^", id);
  url = replace_string(url, "*", title);
  print("Welcoming player '" + player + "' to the clan with a kmail.");
  kmail(id, welcome, 0);
  print("Changing their title to: " + title);
  visit_url(url);
}

void main(string player)
{
  new_member(player);
}
