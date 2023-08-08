//
// Copyright (C) 2023 Miku UI
//
// SPDX-License-Identifier: Apache-2.0
//

#include <cstdlib>
#include <fstream>
#include <string.h>
#include <sys/sysinfo.h>
#include <unistd.h>

#include <android-base/properties.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include "vendor_init.h"
#include "property_service.h"

void property_override(char const prop[], char const value[], bool add = true)
{
    auto pi = (prop_info *) __system_property_find(prop);
    if (pi != nullptr) {
        __system_property_update(pi, value, strlen(value));
    } else if (add) {
        __system_property_add(prop, strlen(prop), value, strlen(value));
    }
}

void setup_model_properties()
{
    std::ifstream cmdline("/proc/cmdline");
    std::string buf;

    while (std::getline(cmdline, buf, ' '))
        if (buf.find("hwversion") != std::string::npos)
            break;
    cmdline.close();

    if (buf.find("11.9.0") == std::string::npos) {
        property_override("ro.product.name", "miku_zijin");
        property_override("ro.product.device", "zijin");
        property_override("bluetooth.device.default_name", "Xiaomi Civi 1S");
    } else {
        property_override("ro.product.name", "miku_mona");
        property_override("ro.product.device", "mona");
        property_override("bluetooth.device.default_name", "Xiaomi Civi");
    }
}

void vendor_load_properties()
{
    setup_model_properties();
}
