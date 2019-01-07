
# $Id: author_003_uri.t,v 1.2 2008/12/15 22:51:27 Martin Exp $

use blib;
use Test::More 'no_plan';
use RDF::Simple::Parser;
use RDF::Simple::Serialiser;

my $ser = RDF::Simple::Serialiser->new();
my $par = RDF::Simple::Parser->new();

isa_ok($ser, 'RDF::Simple::Serialiser');
isa_ok($par, 'RDF::Simple::Parser');

my $uri = 'http://frot.org/foaf.rdf';
# Above URL does not exist as of 2008-09-30
$uri = 'http://danbri.org/foaf.rdf';
my @triples = $par->parse_uri($uri);
$rdf = $ser->serialise(@triples);
print $rdf;
pass;

__END__
