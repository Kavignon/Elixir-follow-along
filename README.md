# Elixir follow along

Welcome to my **Elixir follow along**. This project allows me to share my snippets, my notes and observations regarding how I'm learning about Elixir, Phoenix, LiveView and BEAM in general. This is a Phoenix/LiveView project with a Livebook notebook alongside an interactive Livebook notebook to explore concepts in real time.

## Project Overview

This repository includes:
- A Phoenix project with LiveView integration for real-time interactivity.
- A Livebook notebook (`elixir.livemd`) with code snippets and explanations to guide you through key features.
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

2. Open the provided URL (usually http://localhost:8080) in your browser.
3. In Livebook, click Open and select your_project_name.livemd from the repository folder to open the notebook.

The Livebook notebook includes:

- Elixir and Phoenix/LiveView code snippets.
- Explanations for real-time updates, state management, and other Phoenix features.

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