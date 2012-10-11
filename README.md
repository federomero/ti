# ti

Simple command-line timer. Doesn't do much by itself, but is extensible via plugins.

## Usage

On the command line run:

    ti <project> <task description>

Example:

    ti Outbox Build amazing stuff

To exit, simply kill the process.

## Plugins

Place scripts on the plugins folder which will be loaded automatically by ti.

The plugins folder can be especified with the `TI_PLUGINS_DIR` environment variable and defaults to `~/.ti`.

### Example plugins

[console](https://github.com/federomero/ti-plugins/blob/master/console.rb): Outputs passing minutes on stdout.

    curl https://raw.github.com/federomero/ti-plugins/master/console.rb > ~/.ti/console.rb

[reviewer](https://github.com/federomero/ti-plugins/blob/master/reviewer.rb): Allows to review time entries before finishing.

    curl https://raw.github.com/federomero/ti-plugins/master/reviewer.rb > ~/.ti/reviewer.rb

[ledger](https://github.com/federomero/ti-plugins/blob/master/ledger.rb): Outputs time entries in [ledger's](http://ledger-cli.org/) [timelog format](http://ledger-cli.org/2.6/ledger.html#Using-timeclock-to-record-billable-time).

    curl https://raw.github.com/federomero/ti-plugins/master/ledger.rb > ~/.ti/ledger.rb

[git](https://github.com/federomero/ti-plugins/blob/master/git.rb): Adds git commit messages to the task description.

    curl https://raw.github.com/federomero/ti-plugins/master/git.rb > ~/.ti/git.rb

[growl](https://github.com/federomero/ti-plugins/blob/master/growl.rb): Display growl notifications.

    curl https://raw.github.com/federomero/ti-plugins/master/growl.rb > ~/.ti/growl.rb

[terminal-notifier](https://github.com/federomero/ti-plugins/blob/master/terminal-notifier.rb): Display mountain lion notifications. Requires [terminal-notifier](https://github.com/alloy/terminal-notifier).

    curl https://raw.github.com/federomero/ti-plugins/master/terminal-notifier.rb > ~/.ti/terminal-notifier.rb

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

