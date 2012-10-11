# ti

Simple command-line timer. Doesn't do much by itself but is extensible via plugins.

## Usage

On the command line run:

    ti <client> <task description>

Example:

    ti Outbox Build amazing stuff

To exit, simply kill the process.

## Plugins

Place scripts on the plugins folder which will be loaded automatically by ti.

The plugins folder can be especified with the `TI_PLUGINS_DIR` environment variable and defaults to `~/.ti`.

### Example plugins

[console](https://gist.github.com/3870136): Outputs passing minutes on stdout.

    curl https://raw.github.com/gist/3870136 > ~/.ti/console.rb

[reviewer](https://gist.github.com/3870878): Allows to review time entries before finishing.

    curl https://raw.github.com/gist/3870878 > ~/.ti/reviewer.rb

[ledger](https://gist.github.com/3870155): Outputs time entries in [ledger's](http://ledger-cli.org/) [timelog format](http://ledger-cli.org/2.6/ledger.html#Using-timeclock-to-record-billable-time).

    curl https://raw.github.com/gist/3870155 > ~/.ti/ledger.rb

[growl](https://gist.github.com/3870150): Display growl notifications.

    curl https://raw.github.com/gist/3870150 > ~/.ti/growl.rb

[terminal-notifier](https://gist.github.com/3870176): Display mountain lion notifications. Requires [terminal-notifier](https://github.com/alloy/terminal-notifier).

    curl https://raw.github.com/gist/3870176 > ~/.ti/terminal-notifier.rb

## API

`Ti::Timer.every n { ... }`

The block is executed every n minutes.

Example:

    Ti::Timer.every 30 do
      puts "30 more minutes have passed working on #{Ti::Timer.task} (total: #{Ti::Timer.minutes})"
    end

`Ti::Timer.on :start { ... }`

The block is executed when the time starts.

`Ti::Timer.on :finish { ... }`

The block is executed when the time ends.

## License

MIT

