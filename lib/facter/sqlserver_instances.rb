
Facter.add(:sqlserver_instances) do
  confine :osfamily => :windows

  setcode do
    "mock"
  end
end
