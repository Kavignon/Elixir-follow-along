# Livebook learning experiments

Welcome to the Livebook learning experiments repository! This project is central to my Elixir learning journey, covering:
- [Advent of Code (AoC)](https://adventofcode.com),
- [Exercism](https://exercism.org),
- [Codewars](https://www.codewars.com),
- [YouTube courses](https://youtube.com/playlist?list=PLPhmv8IZVge42oxrZajWBKwptcVMUnY3P&si=LWVOb35RWdt0_T0s),
- [foundational reading on Elixir and the BEAM](https://www.manning.com/books/elixir-in-action-third-edition).

Using Livebook, I document each topic in interactive notebooks with solutions, notes, challenges I overcame, and resources for further exploration. This is my way of taking a more hands-on approach to using Phoenix/LiveView to assemble real-time software systems.

## Table of Contents

- [Key features](#key-features)
- [Local setup](#local-setup)
   - [Prerequisites](#prerequisites)
   - [Installation](#installation)
- [Usage Instructions](#usage-instructions)
   - [Livebook setup](#livebook-setup)
   - [Running Livebook Notebooks](#running-livebook-notebooks)
- [Automations](#automations)
   - [Protected artifacts verification](#protected-artifacts-verification)
   - [Scheduled updates](#scheduled-updates)
- [FAQ](#faq)

## Key Features

- Individual notebooks per subject: Separate notebooks for Advent of Code, Exercism, Codewars, and reading resources, each with solutions, explanations, and detailed notes.
- Protected code artifacts integrity: The CI blocks merging or pushing to main if any new scripts used in the notebooks aren’t listed as protected artifacts, maintaining consistency across Livebooks.
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
[Phoenix](https://phoenixframework.org) (optional): If Phoenix-based content is added in future update.

### Installation steps

1. Clone the repository:

```bash
   git clone git@github.com:Kavignon/Elixir-follow-along.git
   cd Elixir-follow-along
```

Install Dependencies:
bash
Copy code
mix deps.get
Install Livebook:
bash
Copy code
mix escript.install hex livebook
After installation, ensure ~/.mix/escripts is in your PATH if prompted.

Here's a quick button to run the livebook quickly in your browswer.

[![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https%3A%2F%2Fgithub.com%2FKavignon%2FElixir-follow-along%2Fblob%2Fmain%2Felixir_notes.livemd)

Don't hesitate to look at the [FAQ](#faq) in cases of problems and if it doesn't help with your problem, you can always open a new issue on the repository.

## Project Overview

This repository includes:
- A Phoenix project with LiveView integration for real-time interactivity.
- A Livebook notebook (`elixir.livemd`) with code snippets and explanations to guide you through key features.

In the future, you'll be able to access:
- A Livebook notebook (`phoenix.livemd`) with code snippets and explanations to guide you through key features.
- A Livebook notebook (`liveview.livemd`) with code snippets and explanations to guide you through key features.

## Prerequisites

Ensure the following are installed on your system:

- [Elixir](https://elixir-lang.org/install.html) – for Elixir and Phoenix
- [Phoenix](https://hexdocs.pm/phoenix/installation.html) – the framework for real-time applications
- [Livebook](https://github.com/livebook-dev/livebook) – to run `.livemd` files interactively

## Getting Started

### Installation

Clone the repository and navigate to the project directory:

   ```bash
   git clone git@github.com:Kavignon/Elixir-follow-along.git
   cd Elixir-follow-along
   ```

### Install Elixir and Phoenix dependencies
In the project root directory, run:

```bash
mix deps.get
```

### Install LiveBook dependencies

```bash
mix do local.rebar --force, local.hex --force
mix escript.install hex livebook
```

You will get a warning in the following format:

```
warning: you must append "/Users/your-user-name/.mix/escripts" to your PATH if you want to invoke escripts by name
```

For instance, if you're using ZSH as a shell, then you'll use a text editor (i.e. VIM/nano/VS Code) to open your configuration and append that reference to your PATH. Once you're done, [source your shell](https://linuxhandbook.com/source-command/) and I advise to reload it with ```$SHELL```.

### Running the project

# PickingUp_BEAM

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

Once started, you can access the application in your browser at http://localhost:4000.

## Running the Livebook notebook

To explore the notebook with additional code snippets and explanations:

1. Start the Livebook server:

```bash
livebook server
```

2. Open the provided URL (usually http://localhost:8080?token=yourtokenvalue) in your browser.
3. In Livebook, click _Open_
4. Select the option _From storage_ and provide the path to elixir_notes.livemd from the repository folder to open the notebook.

You can also do the following after running ```livebook server```:
1. Click on _Open_.
2. Select the option _From URL_ and provide the URL to one of the Elixir livebook notes from the repository such as this [one](https://github.com/Kavignon/Elixir-follow-along/blob/main/elixir_notes.livemd) in _Notebook URL_
3. Click on _Import_.

The Livebook notebook includes:

- Elixir snippets
- References to material used
- My impressions and the challenges that I overcame
- Alternatives approaches to a given problem and why I pick one over the other (if any)

## Project structure

Here’s an overview of the repository structure:

```
elixir-follow-along/
├── README.md                # Project documentation
├── elixir_notes.livemd  # Livebook with snippets/observations/comments on Elixir
├── config/                  # Application configuration
├── lib/                     # Main Elixir code
├── assets/                  # Front-end assets
├── mix.exs                  # Mix project file with dependencies
└── ...
```

## FAQ

I tried running your notebook in the browser but I received the following error message:

> **Error:** (Code.LoadError) could not load 

```plaintext
** /Users/your-username/Library/Application Support/livebook/autosaved/2024_10_30/18_28_xyzd/lib/exercism/flatten_array_v2.ex. Reason: enoent
    (elixir 1.17.3) lib/code.ex:2158: Code.find_file!/2
    (elixir 1.17.3) lib/code.ex:1483: Code.require_file/2
    #cell:vreqpqjctzkacxxa:6: (file)
```

When you open a Livebook notebook from a URL, it creates a temporary copy in your local file system (such as in autosaved), which is separate from the repository itself. Therefore, when Code.require_file/2 tries to load a file path like lib/exercism/flatten_array_v2.ex, it’s looking in the Livebook’s temporary directory rather than your actual repository.

To fix that problem, we can mount the repository in Livebook.

1. Mount a Local Folder in Livebook:
   1. In Livebook’s interface, go to the sidebar, click on _Files_ and then _Add file_.
   2. Provide the path to the livebook where the code resides locally.
   3. Look at the name for the livebook to confirm it's the one that you want to add.
   4. To make things simple, select the option _Store only file location_.
   5. Click on _Add_.
2. Reload your livebook server
3. Go back on the snippet and evaluate it again. Things should be fixed. The Elixir snippets try to either run locally or from the mounted repository path.
