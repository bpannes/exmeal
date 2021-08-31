defmodule Exmeal.Meals.Get do
  alias Exmeal.{Error, Meal, Repo}

  def by_id(uuid) do
    case Repo.get(Meal, uuid) do
      nil -> {:error, Error.build_meal_not_found_error()}
      user -> {:ok, user}
    end
  end
end
