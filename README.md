# Elixir Journey

<img src="https://github.com/user-attachments/assets/9ad650a1-5a9b-42ee-8b2c-c57b7e1d3862" alt="Repository logo" width="500" height="300">

Welcome to the Elixir Journey repository! This project is central to my Elixir learning journey, covering:
- [Advent of Code (AoC)](https://adventofcode.com)
- [Exercism](https://exercism.org)
- [Codewars](https://www.codewars.com)
- [YouTube courses](https://youtube.com/playlist?list=PLPhmv8IZVge42oxrZajWBKwptcVMUnY3P&si=LWVOb35RWdt0_T0s)
- [foundational reading on Elixir and the BEAM](https://www.manning.com/books/elixir-in-action-third-edition)

Using Livebook, I document each topic in interactive notebooks with solutions, notes, challenges I overcame, and resources for further exploration. This is my way of taking a more hands-on approach to using Elixir/Phoenix/LiveView design and implement robust software solutions.

## Table of Contents

- [Key features](#key-features)
- [Local setup](#local-setup)
   - [Prerequisites](#prerequisites)
   - [Installation](#installation-steps)
- [Usage instructions](#usage-instructions)
   - [In the browser](#in-the-browser)
   - [In your local environment](#in-your-local-environment)
- [Automations](#automations)
   - [Protected artifacts verification](#protected-artifacts-verification)
   - [Scheduled updates](#scheduled-updates)
- [FAQ](#faq)

## Key features

- Individual notebooks per subject: Separate notebooks for Advent of Code, Exercism, Codewars, and reading resources, each with solutions, explanations, and detailed notes.
- Protected code artifacts integrity: The CI blocks merging or pushing to ```main``` if any new scripts used in the notebooks aren’t listed as protected artifacts, maintaining consistency across Livebooks.
- Comprehensive CI pipeline: A GitHub Actions pipeline enforces code quality, security checks, and protected artifact verification, ensuring all notebooks reference the correct, up-to-date scripts.
- Live test results in notebooks: As each module is evaluated in Livebook, unit tests are run with results displayed in-line, showing pass/fail indicators for immediate feedback.

For the Livebook for solutions and notes for the AoC, you can expect these features:
- Dynamic year selection: Switch between years in the Advent of Code notebook, viewing solutions, daily progress, and notes for each year. A dropdown control dynamically renders data, including a daily progress table with visual indicators.
Progress tracking with visual indicators: Each year includes a progress table that uses symbols like "⭐⭐" for completed days, "⭐" when I completed 1 of 2 parts, and "❌" when I didn't complete any parts for that day. This makes it easy to see my progression at a glance.
- Caching system: Cached AoC data minimizes requests to AoC’s website, reducing redundant calls and ensuring the Livebook loads quickly with current data.
- Scheduled data updates: GitHub Actions automatically updates AoC progress data weekly (or daily during December), keeping tables current without manual intervention.

## Local setup

### Prerequisites

[Elixir](https://elixir-lang.org): The language runtime.
[Livebook](https://livebook.dev): For interactive notebooks.
[Phoenix](https://phoenixframework.org) (optional): If Phoenix-based content is added in a future update.

### Installation steps

1. Clone the repository:

```bash
   git clone git@github.com:Kavignon/Elixir-journey.git
   cd Elixir-journey
```

2. Install dependencies:

```bash
mix deps.get
```

3. Install Livebook dependencies:


```bash
mix do local.rebar --force, local.hex --force
mix escript.install hex livebook
```

After installation, ensure ~/.mix/escripts is in your PATH if prompted. Otherwise, you will get a warning in the following format:

```
warning: you must append "/Users/your-user-name/.mix/escripts" to your PATH if you want to invoke escripts by name
```

For instance, if you're using ZSH as a shell, you'll use a text editor (i.e., VIM/nano/VS Code) to open your configuration and append that reference to your PATH. Once you're done, [source your shell](https://linuxhandbook.com/source-command/), and I advise you to reload it with ```$SHELL```.

Don't hesitate to look at the [FAQ](#faq) in case of problems; if it doesn't help with your problem, you can always open a new issue on the repository.

## Usage instructions

### In the browser

Run the Livebook for my Exercism notes + observations using the button below!

[![Run in Livebook](https://livebook.dev/badge/v1/black.svg)](https://livebook.dev/run?url=https%3A%2F%2Fgithub.com%2FKavignon%2FElixir-journey%2Fblob%2Fmain%2Fexercism.livemd)

It'll bring you to the following URL:

You'll see this in the browser:

<img width="814" alt="image" src="https://github.com/user-attachments/assets/115729e7-79e7-48ce-9133-1b7bfaa797a9">

You will want to click on _Run notebook_ and then _Allow_, and the livebook will run in your browser.

### In your local environment

1. Start the Livebook server:

```bash
livebook server
```

2. Open the provided URL (usually http://localhost:8080?token=yourtokenvalue) in your browser.
3. In Livebook, click _Open_
4. Select the option _From storage_ and provide the path to elixir_notes.livemd from the repository folder to open the notebook.

You can also do the following after running ```livebook server```:
1. Click on _Open_.
2. Select the option _From URL_ and provide the URL to one of the Elixir livebook notes from the repository such as this [one](https://github.com/Kavignon/Elixir-journey/blob/main/exercism.livemd) in _Notebook URL_
3. Click on _Import_.

## FAQ

Read more [here](https://github.com/Kavignon/Elixir-journey/wiki/FAQ)
