readIni(key, default, section := "Config", path := "inputSwitch.ini") {
    try {
        return IniRead(path, section, key)
    } catch {
        IniWrite(default, path, section, key)
        return default
    }
}

writeIni(key, value, section := "Config", path := "inputSwitch.ini") {
    IniWrite(value, path, section, key)
}
