import zlib.ash;


void main()
{

  string people = visit_url("clan_office.php");
  // There are currently <b>1</b> pending applications
  matcher counter = create_matcher("There are currently <b>(.*)</b> pending application", people);
  if (find(counter))
  {
    print("Members wanting to apply: " + group(counter, 1));
  } else {
    print("No active applications.");
  }

}
