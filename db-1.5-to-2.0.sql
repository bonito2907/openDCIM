
--
-- Bump version number up
--

UPDATE fac_Config SET Value = '2.0' WHERE fac_Config.Parameter = 'Version';

--
-- New configuration parameters
--

--
-- This one may or may not have been added manually by people who installed 1.5.2, so use the $config->rebuild in the installer
--

INSERT INTO `fac_Config` (`Parameter`, `Value`, `UnitOfMeasure`, `ValType`, `DefaultVal`) VALUES
('FreeSpaceColor', '#FFFFFF', 'HexColor', 'string', '#FFFFFF');

--
-- Force department names to be unique
--

ALTER TABLE fac_Department ADD UNIQUE (Name);

--
-- Force device templates to be unique
--

ALTER TABLE fac_DeviceTemplate ADD UNIQUE KEY (ManufacturerID,Model);
