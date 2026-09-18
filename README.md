# betterping

A better way to look at `ping`.

`betterping` is a small terminal utility that continuously pings a host and turns the results into a live graph. Instead of scrolling through a wall of `time=23.4 ms`, you can actually see how your connection is behaving.

![betterping demo](assets/demo.png)

## Why?

The default `ping` output is very useful, but when you're trying to figure out whether your connection is stable, it's not particularly easy to read.

I wanted something that would let me glance at the terminal and immediately see:

* how the latency is moving
* whether there are sudden spikes
* the current average and median
* how the latest results compare to the rest

So I made `betterping`.

## Installation

### Homebrew

The easiest way to install `betterping` is through Homebrew.

First, add the BetterPing tap:

```bash
brew tap thearkabanerjee/betterping
```

(you might have to):
```bash 
brew trust thearkabanerjee/betterping
```

Then install BetterPing:

```bash
brew install betterping
```

Once installed, you can run `betterping` from anywhere:

```bash
betterping <host>
```

For example:

```bash
betterping google.com
```

### Manual Installation

If you don't use Homebrew, you can install `betterping` directly from GitHub.

Clone the repository:

```bash
git clone https://github.com/thearkabanerjee/betterping.git
cd betterping
```

Make the binary executable:

```bash
chmod +x betterping
```

Run BetterPing:

```bash
./betterping <host>
```

For example:

```bash
./betterping google.com
```

#### Add BetterPing to your PATH

If you want to run `betterping` from anywhere without using `./`, move the binary to a directory in your PATH:

```bash
sudo mv betterping /usr/local/bin/betterping
```

You can then run:

```bash
betterping google.com
```

## Usage

The basic syntax is:

```bash
betterping <host>
```

For example:

```bash
betterping google.com
```

You can use a domain name or an IP address:

```bash
betterping github.com
```

```bash
betterping 8.8.8.8
```

## What BetterPing Shows

BetterPing provides a live view of your connection, including:

* **Live latency graph** — See how your latency changes over time.
* **Current latency** — The latency of the latest packet.
* **Average latency** — The average latency across received packets.
* **Median latency** — A more stable representation of typical latency.
* **Latency spikes** — Easily spot sudden increases in latency.
* **Continuous monitoring** — Keep BetterPing running while you test your connection.

## Updating

If you installed BetterPing using Homebrew, update your Homebrew package information first:

```bash
brew update
```

Then upgrade BetterPing:

```bash
brew upgrade betterping
```

## Uninstallation

### Homebrew

To uninstall BetterPing:

```bash
brew uninstall betterping
```

If you also want to remove the BetterPing Homebrew tap:

```bash
brew untap thearkabanerjee/betterping
```

### Manual Installation

If you installed the binary manually and moved it to `/usr/local/bin`, remove it with:

```bash
sudo rm /usr/local/bin/betterping
```

## Requirements

* macOS or Linux
* A working network connection
* `ping`

## Contributing

Contributions, bug reports, and suggestions are welcome.

If you find a bug or have an idea for improving BetterPing, feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
