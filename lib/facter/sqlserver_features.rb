
Facter.add(:sqlserver_features) do
  confine :osfamily => :windows

  setcode do
    "mock"
  end
end
