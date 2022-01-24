Facter.add('tojod_process_count') do
    confire :kernel => "Linux"
    setcode do
      osfamily = Facter.value(:osfamily)
      case osfamily
      when 'Debian'
        Facter::Core::Execution.execute('pgrep tobydeb |wc -l')
      when 'RedHat'
        Facter::Core::Execution.execute('pgrep tobyd |wc -l')
      end
    end
  end