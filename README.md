# ti

Simple command-line time tracker. Outputs to [ledeger's](http://ledger-cli.org/) [timelog format](http://ledger-cli.org/2.6/ledger.html#Using-timeclock-to-record-billable-time)

## Usage

On the command line run:

    export TIMELOG=path_to_your.timelog
    ti <client> <task description>

Example:

    ti Outbox Build amazing stuff

This will append to $TIMELOG something like:

    i 2011-12-21 12:32:49 Outbox  Build amazing stuff

To exit use ctrl+c

This will append to $TIMELOG something like:

    o 2011-12-20 12:35:56

## Extras

Run `gem install rainbow` for color output.
Run `gem install growl` for growl notifications.

## License

MIT

