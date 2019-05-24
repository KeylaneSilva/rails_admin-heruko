require "application_system_test_case"

class CadastrosTest < ApplicationSystemTestCase
  setup do
    @cadastro = cadastros(:one)
  end

  test "visiting the index" do
    visit cadastros_url
    assert_selector "h1", text: "Cadastros"
  end

  test "creating a Cadastro" do
    visit cadastros_url
    click_on "New Cadastro"

    fill_in "Board", with: @cadastro.board
    fill_in "Brand", with: @cadastro.brand
    fill_in "Color", with: @cadastro.color
    fill_in "Model", with: @cadastro.model
    fill_in "Note", with: @cadastro.note
    fill_in "Rental value", with: @cadastro.rental_value
    click_on "Create Cadastro"

    assert_text "Cadastro was successfully created"
    click_on "Back"
  end

  test "updating a Cadastro" do
    visit cadastros_url
    click_on "Edit", match: :first

    fill_in "Board", with: @cadastro.board
    fill_in "Brand", with: @cadastro.brand
    fill_in "Color", with: @cadastro.color
    fill_in "Model", with: @cadastro.model
    fill_in "Note", with: @cadastro.note
    fill_in "Rental value", with: @cadastro.rental_value
    click_on "Update Cadastro"

    assert_text "Cadastro was successfully updated"
    click_on "Back"
  end

  test "destroying a Cadastro" do
    visit cadastros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cadastro was successfully destroyed"
  end
end
