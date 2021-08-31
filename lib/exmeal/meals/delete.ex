defmodule Exmeal.Meals.Delete do
  alias Exmeal.{Error, Meal, Repo}

  def call(uuid) do
    case Repo.get(Meal, uuid) do
      nil -> {:error, Error.build_meal_not_found_error()}
      user -> Repo.delete(user)
    end
  end
end
