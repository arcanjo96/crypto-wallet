namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando o BD...") do
        %x(rails db:drop)
      end

      show_spinner("Criando o BD...") do
        %x(rails db:create)
      end

      show_spinner("Criando as tabelas do BD...") do
        %x(rails db:migrate)
      end

      show_spinner("Populando o BD...") do
        %x(rails db:seed)
      end

    else
      puts "Você não está em ambiente de desenvolvimento!"
    end
  end

  private
  def show_spinner(msg_start, msg_end = "Concluído!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end

end
