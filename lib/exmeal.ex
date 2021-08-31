defmodule Exmeal do
  defdelegate create_meal(params), to: Exmeal.Meals.Create, as: :call
  defdelegate delete_meal(id), to: Exmeal.Meals.Delete, as: :call
  defdelegate get_meal_by_id(id), to: Exmeal.Meals.Get, as: :by_id
  defdelegate update_meal(params), to: Exmeal.Meals.Update, as: :call
end
