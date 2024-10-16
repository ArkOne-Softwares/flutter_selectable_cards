#include "include/flutter_selectable_cards/flutter_selectable_cards_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_selectable_cards_plugin.h"

void FlutterSelectableCardsPluginCApiRegisterWithRegistrar(
        FlutterDesktopPluginRegistrarRef registrar) {
    flutter_selectable_cards::FlutterSelectableCardsPlugin::RegisterWithRegistrar(
            flutter::PluginRegistrarManager::GetInstance()
                    ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
