defmodule FileLoading do
  @moduledoc """
  A helper module for loading and displaying Elixir code files in a Livebook notebook.

  This module handles the logic of checking both relative and mounted paths for Elixir code files,
  making it easy to dynamically load code whether Livebook is running within the project directory
  or with the repository mounted at a specific path.

  ## Usage

      # To load a file
      FileLoading.load("lib/exercism/flatten_array_v2.ex")
  """

  @relative_path_base "./"
  @mounted_path_base "/mnt/Elixir-follow-along/"

  @doc """
  Loads an Elixir file, displays its content in the notebook, and makes its functions accessible.

  This function first checks if the file exists at the relative path. If it doesn’t find the file,
  it falls back to the mounted path (typically `/mnt/your_repo_name/`).

  ### Parameters

    - `path` (string): The relative path to the file within the project (e.g., `lib/exercism/flatten_array_v2.ex`).

  ### Examples

      # Load and require a file from the relative or mounted path
      FileLoading.load("lib/exercism/flatten_array_v2.ex")

  """
  @spec load(String.t()) :: :ok | {:error, String.t()}
  def load(path) when is_binary(path) do
    # Determine the full path based on availability
    file_path =
      if File.exists?(@relative_path_base <> path) do
        @relative_path_base <> path
      else
        @mounted_path_base <> path
      end

    if File.exists?(file_path) do
      case File.read(file_path) do
        {:ok, code} ->
          IO.puts("### Code from #{path} ###\n\n" <> code)

          loaded_modules = Code.require_file(file_path)

          if loaded_modules != [] do
            :ok
          else
            {:error, "Module not loaded from #{file_path}. Ensure the file contains a valid module definition."}
          end

        {:error, reason} ->
          {:error, "Failed to read file #{file_path}: #{reason}"}
      end
    else
      {:error, "File #{file_path} not found. Check the relative or mounted path."}
    end
  end
end
