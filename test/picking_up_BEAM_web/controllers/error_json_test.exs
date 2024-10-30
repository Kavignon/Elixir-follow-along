defmodule PickingUp_BEAMWeb.ErrorJSONTest do
  use PickingUp_BEAMWeb.ConnCase, async: true

  test "renders 404" do
    assert PickingUp_BEAMWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert PickingUp_BEAMWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
