# notisend

A wrapper to send command outputs as a notification to ntfy

![](resources/01.jpeg)

![](resources/02.png)

# Documentation and usage

To receive notifications, first you need to download [ntfy](https://ntfy.sh/) and subscribe to a topic of your choosing.

## Options

`-h`, `--help`: Show the help message.

`-v`, `--version`: Show the version information.

`-c`, `--config`: Show the current configuration.

`--create-config`: Force creation of a new configuration file.

## Configuration

Configuration is stored in `$HOME/.config/notisend/notisend.conf`

If the file does not exist, it will be created interactively when running a command, or you can use `--create-config`.

### Variables

`TITLE`: Title for the notications, if empty, use the wrapped command as title

`HOST`: ntfy host to use, defaults to ntfy.sh

`TOPIC`: Topic (channel) for the ntfy host, does not need to explicitly be created

`DESC_SIZE`: Amount of lines from command output to send as the description

`SUCCESS_TAGS`: Tags to be used when command is successful (exit code 0)

`SUCCESS_PRIO`: Priority for successful command notification

`ERROR_TAGS`: Tags to be used when command errors out (non 0 exit code)

`ERROR_PRIO`: Priority for error notification (non 0 exit code)

`LOGS_TO_KEEP`: Amount of log files to keep

> Check ntfy documentation for [tags](https://docs.ntfy.sh/emojis/) and [priorities](https://docs.ntfy.sh/subscribe/phone/?h=priority#message-priority)

## Logs

Logs are stored in `$HOME/.config/notisend`.

By default, 5 log files are stored. Check the configuration file for `LOGS_TO_KEEP` to change that.

## Examples

`notisend sleep 5`

`notisend ./my_script.sh --arg1 value1`

`notisend -c`

`notisend --create-config`

# Installation

### Using cURL

```sh
curl -Lo "~/.local/bin/notisend" https://raw.githubusercontent.com/Virkkunen/notisend/refs/heads/master/bin/notisend
chmod +x ~/.local/bin/notisend
```

### Using wget

```sh
wget -O "~/.local/bin/notisend" https://raw.githubusercontent.com/Virkkunen/notisend/refs/heads/master/bin/notisend
chmod +x ~/.local/bin/notisend
```

### Specific version

- Download the versioned release from GitHub releases
- Extract the script
- Move to `~/.local/bin`, `/usr/local/bin` or `/usr/bin`
- Make the file executable with `chmod +x notisend`
