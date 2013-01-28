#!/usr/bin/env perl
#
# Fetch and reformat the Extra Credit exercises for a given chapter.
#
# (C) Joshua Keroes 2013
# Licensed under the Artistic License
#
# TODO: Rewrite with Ruby and scrAPI

use Modern::Perl '2010';
use Text::Wrap;
use URI;
use Web::Scraper;

my $uri_base  = 'http://ruby.learncodethehardway.org/book/ex';
my $ex_number = shift or die usage();
my $uri       = URI->new("$uri_base${ex_number}.html");

my $extra_credit = scraper {
    # Find the #extra-credit section...
    process '//*[@id="extra-credit"]/ol'
        => 'extra_credit' => scraper {
            # ...and return the text of each <li>.
            process 'li', 'ex[]' => 'TEXT';
        };
    result 'extra_credit';
};
my $res = $extra_credit->scrape($uri);

# If extra credit exercises were found, reformat them.
# Open the URL in a browser otherwise.
if (exists $res->{ex}) {
    my $num = 1;
    for (@{ $res->{ex} }) {
        print wrap("# Extra Credit $num: ", '# ', $_);
        print "\n\#\n\# ==> \n\n";
        ++$num;
    }
}
else {
    warn "No extra credit found in $uri.\n";
    system "open $uri" if $^O eq 'darwin';
    exit 1;
}

exit;

sub usage {
    return <<END
$0 ex_number - fetch and reformat the extra credit from
               ruby.learncodethehardway.org/book/ex\${ex_number}.html
END
}
