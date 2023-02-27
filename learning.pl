use warnings;
use feature 'say';
use Data::Dump 'pp';
=begin
sub ask_user{
    $side = $_[0];
    print("HEllo Geeks \n");
    say("$side");
}
say("Testing print ");
ask_user(50);

#trying hashes in perl
my %countries = (
    england => "small",
    australia => "large",
    germany => "medium",
);

#different way of introducing hash :
my %data = ('John Paul',45, 'lisa',30, 'Kumar',40);

#different way:
my %data2 = (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);
#To access : 
$val = %data2{-JohnPaul};

my $sizeOfEngland = $countries{"england"};

#add
$countries{"peru"} = "very large";

#change
$countries{"england"} = "very very large";

#delete
delete $countries{"peru"};

#qw hash 
my %hash_food_qw = qw(
    burger 500
    chips 200
    cola 400
);
/home/git/regentmarkets/perl-DevExperts-Bridge#prinitng the hash 
print Dumper((\%countries));




#conditionals
if(0){ 
    print("Evaluated as true \n");
}
else{
    print("Evaluates as false \n");
}

#Else if in perl is done usig -> elsif()



unless (0) {
    print("Unless evaluates as false \n");

} #Unless in perl is basically if(!boolean_expression)
 
#print("Joe \n") if (0);
#print("JOe \n") unless (0);

=end
#back ticks will print the command when run in the host operating sytem like `  date`

=begin
#Testing out single quotes
my $msg = 'test';
print("Trying out the single quotes $msg");
#Signle quotes will print the variable name and double quotes will print the value in the var

The difference between single and double-quotes is that double quotes insert variables and special characters such as newlines \n, whereas a single quote does not insert any variable or special character.
=cut

#To print the length of the array list we can use the scalar function => scalar(@ARGV)
# $# prints the subscript of the last element in the array. 


#SCALAR AND LIST context 
=begin
my @array = (100, 300, 200);  
print(scalar(100,2000,300));  #This is list context it will print the last value
print(scalar(@array))           #This is will print the number of elements
@params = map { length($_) } @ARGV; #this will give (4,2,1,4) : for This is a test
=cut


# Data::Dump 'pp'; provides the undef tag as human readable format 

#Range operator :
#@foo = (1 .. 5);

#binary operator Binary "<=>" returns -1, 0, or 1 depending on whether the left argument is numerically less than, equal to, or greater than the right argument. 

=begin
#MAP operator
my @arr = qw/this is a really funny list/;
my @new_arr = map { $_.':)' } @arr;
say pp @new_arr;
=cut

=begin
#In string contamtemation
 $check = $check.$hello.$_."!\n"; #or when decalring intialize to '';
 $message .= "Hello, ${arg}!\n";
=cut


=begin
use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';

my $i = $ARGV[0];
my @intarr;
while ($i-- > 0) {
    next if $i == 5;
    if ($i == 9) {
        $i = 6;
        redo;
    }
    push (@intarr, $i);
    last if $i == 3;
}
say pp(@intarr);
#next - which skips to the end of the block
#redo - which skips to the beginning of the block
l#ast - which skips outside the block
=cut

=begin
use strict;
use warnings;
use feature 'say';

my @data = (
  { value => undef, representation => q(undef) },
  { value => 0, representation => q(0) },
  { value => '0', representation => q('0') },
  { value => '',  representation => q('') },
  { value  => 0.000, representation => q(0.000) },
  { value  => '0.000'  , representation => q('0.000') },
  { value  => "0.000" , representation => q("0.000") },
  { value  => " " , representation => q(" ") },
);

foreach my $dat (@data) {
  print "The code [".$dat->{representation}."] evaluates as ";
  say $dat->{value} ? "true\n" : "false\n" ;
}
my $var;
print 'When unassigned $var is ';
say $var ? "true\n" : "false\n";


%hash = (
    'Weight'  => '75kg',
    'Height'  => '190cm',
    'Name'    => 'Simon',
    'Action'  => 'Says',
    'Subject' => 'Wash your hands!',
    'Weight'  => '70kg'
);

print scalar(keys(%hash)).' keys, '. $hash{Weight};

=cut

=begin
#combine to lists into an hash =>  
return map { $_ => length($_) } @params; 
my %hash;
@hash{@params} = @lengths;
    return %hash;
=cut

=begin
use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';

sub get_max_value_key {
    my %hash_args = @_;
    
    my $max_key;
    my $max_value = -1;

    while (my ($key, $value) = each %hash_args) {
        if ($value > $max_value) {
            $max_value = $value;
            $max_key = $key;
        }
    }

    return $max_key;
}

my %exam_marks = (anna => 85, bob => 96, chloe => 78, dave => 64);

say 'Highest mark awarded to '.get_max_value_key(%exam_marks);
=end


=begin
#REFRENCES
sub arrayref {
     # FIXME Fill me in!
     my @array = @_;
     my $ref = \@array;
     return $ref;
}
#OR
sub arrayref {
     return [ @_ ];
}

#ANONYMOUS REFRENCES :
#Perl allows you to create references that refer directly to the data without creating variables. These types of references are called anonymous references. The rules for creating anonymous references are as follows:

To get an array reference, use square brackets [] instead of parentheses.
To get a hash reference, use curly brackets {} instead of parentheses.

my $ar = [1..5];

# loop over the array elements
for(@$ar){
   print("$_  "); # 1 2 3 4 5
}

#Hash refrences
#Backslash a hash to get a reference to it:
my %hash = ( a => 1, b => 2);
my $rh_hash = \%hash;

#As with arrays, we can create a named hash from the anonymous hash:
my $rh_anon = { a => 1, b => 2 };
my %new_hash = %$rh_anon;

#to access the $rh_anon without creating a hash, simply use the right-arrow:
$rh_anon->{a};

# or equivalently...
$$rh_anon{a};
=cut

=begin
use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';

sub array_intersection {
  my ($ra_x, $ra_y) = @_;

  my @intersection;
  while (my $x = pop(@$ra_x)) {
    foreach my $y (@$ra_y) {
      if ($x == $y) {
        push @intersection, $x;
      }
    }
  }

  my @sorted = sort(@intersection);
  return \@sorted;
}

my $ra_first = [1,2,3,4,5,6];
my $ra_second = [2,4,6,8,10];

my $ra_intersection = array_intersection($ra_first, $ra_second);
say "The intersection of ".pp( $ra_first )." and ".pp($ra_second)." is ".
  pp($ra_intersection);



#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';

sub array_intersection {
  my ($ra_x, $ra_y) = @_;

  my @intersection;
  foreach my $x (@$ra_x){
    foreach my $y (@$ra_y) {
      if ($x == $y) {
        push (@intersection, $x);
      }
    }
  }

  my @sorted = sort(@intersection);
  return \@sorted;
}

my $ra_first = [1,2,3,4,5,6];
my $ra_second = [2,4,6,8,10];

my $ra_intersection = array_intersection($ra_first, $ra_second);
say "The intersection of ".pp( $ra_first )." and ".pp($ra_second)." is ".
  pp($ra_intersection);
=cut

=begin
#ex6Q3 hash refrences
#my sol
sub list_to_hash {
  ## FILL THIS IN
  my @array = @_;
  if((scalar(@array)%2) != 0){
      print("Pls enter even number of arguements");
  }
  my %hash = @array;
  my $hash_ref = \%hash;
  
  return $hash_ref;
}



my $rh = list_to_hash(@ARGV);
say pp($rh);


#mentor sol
sub list_to_hash {
  return { @_ };
}

my $rh = list_to_hash(@ARGV);
say pp($rh);
=cut


=begin
ex6q4
#Ques is to make translate which checks val from hash if key is present then take the value otherwise just print what user input
#my sol
#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';


sub translate {
    ## FILL THIS IN
    my ($a1, $a2) = @_;
    my @array;
    #my @keyss = keys %a1;
    foreach my $i (@$a2){
        if(exists($$a1{$i})){
            push(@array,$$a1{$i});
        }
        else{
            push(@array,$i);
        }
    }
    #print(%$a1);
    #print(@array);
    return \@array;
}

my $ra_en_de_xlat = translate({
    ich => 'I',
    bin => 'am',
    ein => 'a',
}, [@ARGV]);

say join(' ',@$ra_en_de_xlat);


#Mentor sol
#!/usr/bin/perl

use strict;
use warnings;
use Data::Dump 'pp';
use feature 'say';


sub translate {
    my ($rh_dict, $ra_words) = @_;
    
    my @trans = map { exists($rh_dict->{$_}) ? $rh_dict->{$_} : $_ } @$ra_words;
    return \@trans;
}

my $ra_en_de_xlat = translate({
    ich => 'I',
    bin => 'am',
    ein => 'a',
}, [@ARGV]);

say join(' ',@$ra_en_de_xlat);
=cut

=begin
my @arr = qw/this is not urgent but urgently makes it faster/;

say 'unsorted = '.pp(@arr);

sub by_urg {
    return 1 if ($b =~ m/urgent/) && !($a =~ m/urgent/);
    return -1 if ($a =~ m/urgent/) && !($b =~ m/urgent/);
    return 0;
}

my @barr = sort by_urg @arr;
say 'sorted = '.pp(@barr);

my @test = ([1,2],4,5,4);
my $tw = \@test;
print(${@$tw[0]}[1]);



my @test = ([1,2],4,5,4);
print(${$test[0]}[0]);

=cut
=begin
my @arr = ([1 .. 6], [1,2,3] , ['a' .. 'h']);
print(scalar(@{$arr[1]})."\n");
print(scalar(@$arr[0]));
my @arr = ([1 .. 6], [1,2,3] , ['a' .. 'h']);


sub by_arr_length {
    print(scalar(@$a));
    return 1 if (scalar(@$a) > scalar(@$b)) ;
    return -1 if (scalar(@$b) > scalar(@$a)) ;
    # TODO implement this sort metric
};

my @barr = sort by_arr_length @arr;

say 'Unsorted: '.pp(\@arr);
say 'Sorted: '.pp(\@barr);
# @barr should now be ([1, 2, 3], [1 .. 6], ["a" .. "h"])
=cut

=begin
my $a = "Anne";
my $h = [
    { firstname => 'Bill', surname => 'Smith',    phone => 123123213 },
    { firstname => 'Anne', surname => 'Taylor',   phone => 123123213 },
    { firstname => 'Bill', surname => 'Sinclair', phone => 9999 }
];

for( my $i = 0; $i < scalar(@$h);$i++){
if(${@$h[$i]}{"firstname"} eq $a) {
print pp(${@$h[1]}{"firstname"}); }}
#print pp (%{@$h[1]});
=cut

=begin
#complex data structures like hashes in array.
#ex6q8 my sol
sub search_firstname {
    ## FILL THIS IN
    my ($a,$b) = @_;
    my @array;
    for( my $i = 0; $i < scalar(@$b);$i++){
        if(${@$b[$i]}{"firstname"} eq $a) {
            push(@array, @$b[$i]);
            }}
    return \@array;
}

my $rah_results = search_firstname ($ARGV[0] || '', [
    { firstname => 'Bill', surname => 'Smith',    phone => 123123213 },
    { firstname => 'Anne', surname => 'Taylor',   phone => 123123213 },
    { firstname => 'Bill', surname => 'Sinclair', phone => 9999 }
]);


say pp($rah_results);

#mentor sol
sub search_firstname {
    my ($match, $rah_phonebook) = @_;

    my @matches = grep { $_->{firstname} eq $match } @$rah_phonebook;
    return \@matches;
}

my $rah_results = search_firstname ($ARGV[0] || '', [
    { firstname => 'Bill', surname => 'Smith',    phone => 123123213 },
    { firstname => 'Anne', surname => 'Taylor',   phone => 123123213 },
    { firstname => 'Bill', surname => 'Sinclair', phone => 9999 }
]);


say pp($rah_results);
=cut

=begin
#ex6q9
#converting array of array ref to hashref of hash
#my sol
sub isbn_catalog {
    my %hash;
    my ($a) = @_ ;
   my @array = @{@$a[0]};
   
   #print(scalar(@array));
    for(my $i=0;$i<3; $i++){
    my $num = scalar(@{@$a[$i]}) - 1;
    $hash{ @{@$a[$i]}[1] } = {
    publication_year  => @{@$a[$i]}[0],
    title    => @{@$a[$i]}[2],
   authors => [@{@$a[$i]}[3 .. $num]],
};
}
    return \%hash;
    # IMPLEMENT ME!
}

my $rh_catalog = isbn_catalog([ [ 2002, "978-0-8001-9676-9", "Matilda", "Danny DeVito", "Joshua Levinson", "Liccy Dahl", "Martin Bregman", "Nicholas Kazan", "Roald Dahl", "Robin Swicord", ], 
[ 1998, "978-0-8001-0215-9", "Glory", "Freddie Fields", "P.K. Fields", "Pieter Jan Brugge", ], 
[ 1998, "978-0-8001-2901-9", "The Whole Town's Talking", "Joseph H. August", "John Ford", ], ])
;

say pp($rh_catalog);


#mentor sol
sub isbn_catalog {
    my $ra_catalog = shift;
   
    my %isbn_catalog;
   
    foreach my $ra_row (@$ra_catalog) {
        my @row = @$ra_row;
       
        $isbn_catalog{$row[1]} = {
            publication_year => $row[0],
            title            => $row[2],
            authors          => [@row[3..$#row]],
        };
    } 
   
   return \%isbn_catalog;
}

my $rh_catalog = isbn_catalog([
    ['1998', '978-0-8001-0215-9', 'Glory', 'Freddie Fields', 'P.K. Fields', 'Pieter Jan Brugge'],
    ['1998', '978-0-8001-2901-9','The Whole Town\'s Talking', 'Joseph H. August','John Ford']
])
;

say pp($rh_catalog);
=cut