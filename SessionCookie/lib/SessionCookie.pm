package SessionCookie;
use Dancer2;

our $VERSION = '0.1';

get '/' => sub {
  template 'index';
};

post '/' => sub {
  session test => params->{test};
  return redirect uri_for('/');
};

true;
