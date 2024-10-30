defmodule PickingUp_BEAMWeb.Layouts do
  @moduledoc """
  This module holds different layouts used by your application.

  See the `layouts` directory for all templates available.
  The "root" layout is a skeleton rendered as part of the
  application router. The "app" layout is set as the default
  layout on both `use PickingUp_BEAMWeb, :controller` and
  `use PickingUp_BEAMWeb, :live_view`.
  """
  use PickingUp_BEAMWeb, :html

  embed_templates "layouts/*"
end
