#ifndef FLUTTER_PLUGIN_FLUTTER_SELECTABLE_CARDS_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_SELECTABLE_CARDS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_selectable_cards {

    class FlutterSelectableCardsPlugin : public flutter::Plugin {
    public:
        static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

        FlutterSelectableCardsPlugin();

        virtual ~FlutterSelectableCardsPlugin();

        // Disallow copy and assign.
        FlutterSelectableCardsPlugin(const FlutterSelectableCardsPlugin &) = delete;

        FlutterSelectableCardsPlugin &operator=(const FlutterSelectableCardsPlugin &) = delete;

        // Called when a method is called on this plugin's channel from Dart.
        void HandleMethodCall(
                const flutter::MethodCall <flutter::EncodableValue> &method_call,
                std::unique_ptr <flutter::MethodResult<flutter::EncodableValue>> result);
    };

}  // namespace flutter_selectable_cards

#endif  // FLUTTER_PLUGIN_FLUTTER_SELECTABLE_CARDS_PLUGIN_H_
