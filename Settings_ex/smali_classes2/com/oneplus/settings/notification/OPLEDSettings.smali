.class public Lcom/oneplus/settings/notification/OPLEDSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPLEDSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final BATTERY_LIGHT_FULL_COLOR:Ljava/lang/String; = "battery_light_full_color"

.field public static final BATTERY_LIGHT_LOW_COLOR:Ljava/lang/String; = "battery_light_low_color"

.field public static final BATTERY_LIGHT_MEDIUM_COLOR:Ljava/lang/String; = "battery_light_medium_color"

.field private static final COLOR_BLUE:Ljava/lang/String; = "#FF0000FF"

.field private static final COLOR_BLUE_DRIVER:Ljava/lang/String; = "#FF0000FF"

.field private static final COLOR_CYAN:Ljava/lang/String; = "#FF40FFFF"

.field private static final COLOR_CYAN_DRIVER:Ljava/lang/String; = "#FF40FFFF"

.field private static final COLOR_GREEN:Ljava/lang/String; = "#FF40FF00"

.field private static final COLOR_GREEN_DRIVER:Ljava/lang/String; = "#FF40FF00"

.field private static final COLOR_ORANGE:Ljava/lang/String; = "#FFFFAE00"

.field private static final COLOR_ORANGE_DRIVER:Ljava/lang/String; = "#FFFF4000"

.field private static final COLOR_PINK:Ljava/lang/String; = "#FFEC407A"

.field private static final COLOR_PINK_DRIVER:Ljava/lang/String; = "#FFFF0040"

.field private static final COLOR_PURPLE:Ljava/lang/String; = "#FF9E00F9"

.field private static final COLOR_PURPLE_DRIVER:Ljava/lang/String; = "#FFFF00FF"

.field private static final COLOR_RED:Ljava/lang/String; = "#FFFF0000"

.field private static final COLOR_RED_DRIVER:Ljava/lang/String; = "#FFFF0000"

.field private static final COLOR_YELLOW:Ljava/lang/String; = "#FFFFFF00"

.field private static final COLOR_YELLOW_DRIVER:Ljava/lang/String; = "#FFFFFF00"

.field private static final DEFAULT_COLOR_BATTERY_FULL:Ljava/lang/String; = "#FF00FF00"

.field private static final DEFAULT_COLOR_BATTERY_LOW:Ljava/lang/String; = "#FEFF0000"

.field private static final DEFAULT_COLOR_BATTERY_MEDIUM:Ljava/lang/String; = "#FEFF0000"

.field private static final DEFAULT_COLOR_NOTIFICATION:Ljava/lang/String; = "#FF00FF00"

.field private static final KEY_BATTERY_CHARGING:Ljava/lang/String; = "led_settings_battery_charging"

.field private static final KEY_BATTERY_FULL:Ljava/lang/String; = "led_settings_battery_full"

.field private static final KEY_BATTERY_LOW:Ljava/lang/String; = "led_settings_battery_low"

.field private static final KEY_GLOABL_NOTIFICATION:Ljava/lang/String; = "led_settings_global_notification"

.field public static final NOTIFICATION_LIGHT_PULSE_COLOR:Ljava/lang/String; = "notification_light_pulse_color"

.field private static final TAG:Ljava/lang/String; = "LEDSettings"


# instance fields
.field private mBatteryChargingPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

.field private mBatteryFullPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

.field private mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

.field private mDialogColorPalette:[Ljava/lang/String;

.field private mGlobalNotificationPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 103
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 105
    const-string/jumbo v1, "#FF0000FF"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 106
    const-string/jumbo v1, "#FF40FFFF"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 107
    const-string/jumbo v1, "#FFFFAE00"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 108
    const-string/jumbo v1, "#FF40FF00"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 109
    const-string/jumbo v1, "#FFFF0000"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 110
    const-string/jumbo v1, "#FFFFFF00"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 111
    const-string/jumbo v1, "#FF9E00F9"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 112
    const-string/jumbo v1, "#FFEC407A"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 102
    iput-object v0, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    .line 41
    return-void
.end method

.method private getDialogCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string/jumbo v0, ""

    .line 153
    .local v0, "newColor":Ljava/lang/String;
    const-string/jumbo v1, "#FF0000FF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    const-string/jumbo v0, "#FF0000FF"

    .line 182
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    const-string/jumbo v1, "#FF40FFFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    const-string/jumbo v0, "#FF40FFFF"

    goto :goto_0

    .line 153
    :cond_2
    const-string/jumbo v1, "#FFFF4000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    const-string/jumbo v0, "#FFFFAE00"

    goto :goto_0

    .line 153
    :cond_3
    const-string/jumbo v1, "#FF40FF00"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    const-string/jumbo v0, "#FF40FF00"

    goto :goto_0

    .line 153
    :cond_4
    const-string/jumbo v1, "#FFFF0000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 167
    const-string/jumbo v0, "#FFFF0000"

    goto :goto_0

    .line 153
    :cond_5
    const-string/jumbo v1, "#FFFFFF00"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 170
    const-string/jumbo v0, "#FFFFFF00"

    goto :goto_0

    .line 153
    :cond_6
    const-string/jumbo v1, "#FFFF00FF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 173
    const-string/jumbo v0, "#FF9E00F9"

    goto :goto_0

    .line 153
    :cond_7
    const-string/jumbo v1, "#FFFF0040"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const-string/jumbo v0, "#FFEC407A"

    goto :goto_0
.end method

.method private getDriverCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string/jumbo v0, ""

    .line 118
    .local v0, "newColor":Ljava/lang/String;
    const-string/jumbo v1, "#FF0000FF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const-string/jumbo v0, "#FF0000FF"

    .line 147
    :cond_0
    :goto_0
    return-object v0

    .line 118
    :cond_1
    const-string/jumbo v1, "#FF40FFFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    const-string/jumbo v0, "#FF40FFFF"

    goto :goto_0

    .line 118
    :cond_2
    const-string/jumbo v1, "#FFFFAE00"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    const-string/jumbo v0, "#FFFF4000"

    goto :goto_0

    .line 118
    :cond_3
    const-string/jumbo v1, "#FF40FF00"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 129
    const-string/jumbo v0, "#FF40FF00"

    goto :goto_0

    .line 118
    :cond_4
    const-string/jumbo v1, "#FFFF0000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 132
    const-string/jumbo v0, "#FFFF0000"

    goto :goto_0

    .line 118
    :cond_5
    const-string/jumbo v1, "#FFFFFF00"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 135
    const-string/jumbo v0, "#FFFFFF00"

    goto :goto_0

    .line 118
    :cond_6
    const-string/jumbo v1, "#FF9E00F9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 138
    const-string/jumbo v0, "#FFFF00FF"

    goto :goto_0

    .line 118
    :cond_7
    const-string/jumbo v1, "#FFEC407A"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string/jumbo v0, "#FFFF0040"

    goto :goto_0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 287
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x7f0e01d6

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 187
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 188
    const v8, 0x7f08004a

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/notification/OPLEDSettings;->addPreferencesFromResource(I)V

    .line 190
    const-string/jumbo v8, "led_settings_global_notification"

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/notification/OPLEDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/ui/ColorPickerPreference;

    iput-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    .line 191
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    .line 192
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const-string/jumbo v9, "#FF00FF00"

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 196
    const-string/jumbo v9, "notification_light_pulse_color"

    const-string/jumbo v10, "#FF00FF00"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    .line 195
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 197
    .local v6, "notificationColorInt":I
    const-string/jumbo v8, "#%06X"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, "notificationColorString":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 199
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-direct {p0, v7}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 201
    :cond_0
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8, v13}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setMessageText(I)V

    .line 202
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setImageViewVisibility()V

    .line 203
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8, p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    const-string/jumbo v8, "led_settings_battery_full"

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/notification/OPLEDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/ui/ColorPickerPreference;

    iput-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    .line 206
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    .line 207
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const-string/jumbo v9, "#FF00FF00"

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 210
    const-string/jumbo v9, "battery_light_full_color"

    const-string/jumbo v10, "#FF00FF00"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    .line 209
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 211
    .local v2, "batteryFullColorInt":I
    const-string/jumbo v8, "#%06X"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "batteryFullColorString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 213
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-direct {p0, v3}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 215
    :cond_1
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8, v13}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setMessageText(I)V

    .line 216
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setImageViewVisibility()V

    .line 217
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8, p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 219
    const-string/jumbo v8, "led_settings_battery_charging"

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/notification/OPLEDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/ui/ColorPickerPreference;

    iput-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    .line 220
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    .line 221
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const-string/jumbo v9, "#FEFF0000"

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 224
    const-string/jumbo v9, "battery_light_medium_color"

    const-string/jumbo v10, "#FEFF0000"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    .line 223
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 225
    .local v0, "batteryChargingColorInt":I
    const-string/jumbo v8, "#%06X"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "batteryChargingColorString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 227
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 229
    :cond_2
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8, v13}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setMessageText(I)V

    .line 230
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setImageViewVisibility()V

    .line 231
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8, p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 233
    const-string/jumbo v8, "led_settings_battery_low"

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/notification/OPLEDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/ui/ColorPickerPreference;

    iput-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    .line 234
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v9, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    .line 235
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const-string/jumbo v9, "#FEFF0000"

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 238
    const-string/jumbo v9, "battery_light_low_color"

    const-string/jumbo v10, "#FEFF0000"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    .line 237
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 239
    .local v4, "batteryLowColorInt":I
    const-string/jumbo v8, "#%06X"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 240
    .local v5, "batteryLowColorString":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 241
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-direct {p0, v5}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 243
    :cond_3
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8, v13}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setMessageText(I)V

    .line 244
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setImageViewVisibility()V

    .line 245
    iget-object v8, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8, p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/oneplus/settings/notification/OPLEDSettings;->getDriverCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "color":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    const/4 v1, 0x0

    .line 253
    .local v1, "isColor":Z
    :goto_0
    const-string/jumbo v3, "led_settings_global_notification"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 255
    const-string/jumbo v5, "notification_light_pulse_color"

    .line 256
    if-eqz v1, :cond_6

    move-object v3, v0

    :goto_1
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 254
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    :cond_1
    const-string/jumbo v3, "led_settings_battery_full"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 260
    const-string/jumbo v5, "battery_light_full_color"

    .line 261
    if-eqz v1, :cond_7

    move-object v3, v0

    :goto_2
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 259
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    :cond_2
    const-string/jumbo v3, "led_settings_battery_charging"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 264
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 265
    const-string/jumbo v5, "battery_light_medium_color"

    .line 266
    if-eqz v1, :cond_8

    move-object v3, v0

    :goto_3
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 264
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 268
    :cond_3
    const-string/jumbo v3, "led_settings_battery_low"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 269
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 270
    const-string/jumbo v4, "battery_light_low_color"

    .line 271
    if-eqz v1, :cond_9

    .end local v0    # "color":Ljava/lang/String;
    :goto_4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 269
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 273
    :cond_4
    const/4 v3, 0x1

    return v3

    .line 252
    .end local v1    # "isColor":Z
    .restart local v0    # "color":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "isColor":Z
    goto :goto_0

    .line 256
    :cond_6
    const-string/jumbo v3, "#FF00FF00"

    goto :goto_1

    .line 261
    :cond_7
    const-string/jumbo v3, "#FF00FF00"

    goto :goto_2

    .line 266
    :cond_8
    const-string/jumbo v3, "#FEFF0000"

    goto :goto_3

    .line 271
    :cond_9
    const-string/jumbo v0, "#FEFF0000"

    goto :goto_4
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 278
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 279
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPLEDSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " 5%"

    const-string/jumbo v3, " 15%"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "string":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPLEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    return-void
.end method
