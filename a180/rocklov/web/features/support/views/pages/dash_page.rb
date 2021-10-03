
class DashPage
    include Capybara::DSL

    def on_dash?
        page.has_css?(".dashboard")
    end

    def goto_equipo_form
        click_button "Criar anúncio"
    end

    def equipo_list
        return find(".equipo-list")
    end
end