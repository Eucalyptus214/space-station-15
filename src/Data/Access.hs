module Data.Access ( Access(..) ) where

data Access = CentCom | Common | Maintenance | Syndicate | Command | Captain | ChiefEngineer | Engineering | Atmospherics | ChiefMedicalOfficer | Medical | Chemistry | Morgue | Quartermaster | Cargo | Mining | ResearchDirector | Science | Robotics | Admin | Genetics | HeadOfPersonnel | Bar | Kitchen | Botany | Service | Janitor | Theater | Library | Chapel | HeadOfSecurity | Security | Warden | Brig | Armory
              deriving (Show, Read, Eq)
