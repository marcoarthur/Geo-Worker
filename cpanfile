requires 'perl', '5.028';
requires 'Moose', '>=2.00';

# requires 'Some::Module', 'VERSION';

on test => sub {
    requires 'Test::More', '0.96';
	requires 'Test::Fatal';
	requires 'Test::Moose';
};
