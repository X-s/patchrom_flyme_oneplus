.class public Lcom/android/settings_ex/LEDSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LEDSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
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

.field private static final DEFAULT_COLOR_BATTERY_LOW:Ljava/lang/String; = "#FFFF0001"

.field private static final DEFAULT_COLOR_BATTERY_MEDIUM:Ljava/lang/String; = "#FFFF0001"

.field private static final DEFAULT_COLOR_NOTIFICATION:Ljava/lang/String; = "#FF00FF00"

.field private static final KEY_BATTERY_CHARGING:Ljava/lang/String; = "led_settings_battery_charging"

.field private static final KEY_BATTERY_FULL:Ljava/lang/String; = "led_settings_battery_full"

.field private static final KEY_BATTERY_LOW:Ljava/lang/String; = "led_settings_battery_low"

.field private static final KEY_GLOABL_NOTIFICATION:Ljava/lang/String; = "led_settings_global_notification"

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
    .line 35
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 74
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "#FF0000FF"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#FF40FFFF"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "#FFFFAE00"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "#FF40FF00"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#FFFF0000"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "#FFFFFF00"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "#FF9E00F9"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "#FFEC407A"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings_ex/LEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    return-void
.end method

.method private getDialogCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string v0, ""

    .line 125
    .local v0, "newColor":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 154
    :goto_1
    return-object v0

    .line 125
    :sswitch_0
    const-string v2, "#FF0000FF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "#FF40FFFF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "#FFFF4000"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "#FF40FF00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "#FFFF0000"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "#FFFFFF00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "#FFFF00FF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "#FFFF0040"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    .line 127
    :pswitch_0
    const-string v0, "#FF0000FF"

    .line 128
    goto :goto_1

    .line 130
    :pswitch_1
    const-string v0, "#FF40FFFF"

    .line 131
    goto :goto_1

    .line 133
    :pswitch_2
    const-string v0, "#FFFFAE00"

    .line 134
    goto :goto_1

    .line 136
    :pswitch_3
    const-string v0, "#FF40FF00"

    .line 137
    goto :goto_1

    .line 139
    :pswitch_4
    const-string v0, "#FFFF0000"

    .line 140
    goto :goto_1

    .line 142
    :pswitch_5
    const-string v0, "#FFFFFF00"

    .line 143
    goto :goto_1

    .line 145
    :pswitch_6
    const-string v0, "#FF9E00F9"

    .line 146
    goto :goto_1

    .line 148
    :pswitch_7
    const-string v0, "#FFEC407A"

    .line 149
    goto :goto_1

    .line 125
    :sswitch_data_0
    .sparse-switch
        -0x60ba255d -> :sswitch_4
        -0x60ba24e1 -> :sswitch_7
        -0x60ba229d -> :sswitch_6
        -0x60b853e1 -> :sswitch_2
        -0x60afd29d -> :sswitch_5
        0x78853aa3 -> :sswitch_0
        0x7f62ed1f -> :sswitch_3
        0x7f62efdf -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getDriverCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v0, ""

    .line 90
    .local v0, "newColor":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 119
    :goto_1
    return-object v0

    .line 90
    :sswitch_0
    const-string v2, "#FF0000FF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "#FF40FFFF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "#FFFFAE00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "#FF40FF00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "#FFFF0000"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "#FFFFFF00"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "#FF9E00F9"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "#FFEC407A"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    .line 92
    :pswitch_0
    const-string v0, "#FF0000FF"

    .line 93
    goto :goto_1

    .line 95
    :pswitch_1
    const-string v0, "#FF40FFFF"

    .line 96
    goto :goto_1

    .line 98
    :pswitch_2
    const-string v0, "#FFFF4000"

    .line 99
    goto :goto_1

    .line 101
    :pswitch_3
    const-string v0, "#FF40FF00"

    .line 102
    goto :goto_1

    .line 104
    :pswitch_4
    const-string v0, "#FFFF0000"

    .line 105
    goto :goto_1

    .line 107
    :pswitch_5
    const-string v0, "#FFFFFF00"

    .line 108
    goto :goto_1

    .line 110
    :pswitch_6
    const-string v0, "#FFFF00FF"

    .line 111
    goto :goto_1

    .line 113
    :pswitch_7
    const-string v0, "#FFFF0040"

    .line 114
    goto :goto_1

    .line 90
    :sswitch_data_0
    .sparse-switch
        -0x76f73a3e -> :sswitch_6
        -0x62977219 -> :sswitch_7
        -0x60ba255d -> :sswitch_4
        -0x60b21c39 -> :sswitch_2
        -0x60afd29d -> :sswitch_5
        0x78853aa3 -> :sswitch_0
        0x7f62ed1f -> :sswitch_3
        0x7f62efdf -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x7f0c0088

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 159
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 160
    const v8, 0x7f080029

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/LEDSettings;->addPreferencesFromResource(I)V

    .line 162
    const-string v8, "led_settings_global_notification"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/LEDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/ui/ColorPickerPreference;

    iput-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    .line 163
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v9, p0, Lcom/android/settings_ex/LEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    .line 164
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const-string v9, "#FF00FF00"

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings_ex/LEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "notification_light_pulse_color"

    const-string v10, "#FF00FF00"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 169
    .local v6, "notificationColorInt":I
    const-string v8, "#%06X"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, "notificationColorString":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 171
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/LEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 173
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8, v13}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setMessageText(I)V

    .line 174
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setImageViewVisibility()V

    .line 175
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mGlobalNotificationPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8, p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    const-string v8, "led_settings_battery_full"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/LEDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/ui/ColorPickerPreference;

    iput-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    .line 178
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v9, p0, Lcom/android/settings_ex/LEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    .line 179
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const-string v9, "#FF00FF00"

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ex/LEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "battery_light_full_color"

    const-string v10, "#FF00FF00"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 183
    .local v2, "batteryFullColorInt":I
    const-string v8, "#%06X"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "batteryFullColorString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 185
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/LEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 187
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8, v13}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setMessageText(I)V

    .line 188
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setImageViewVisibility()V

    .line 189
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryFullPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8, p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 191
    const-string v8, "led_settings_battery_charging"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/LEDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/ui/ColorPickerPreference;

    iput-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    .line 192
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v9, p0, Lcom/android/settings_ex/LEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    .line 193
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const-string v9, "#FFFF0001"

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ex/LEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "battery_light_medium_color"

    const-string v10, "#FFFF0001"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 197
    .local v0, "batteryChargingColorInt":I
    const-string v8, "#%06X"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "batteryChargingColorString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 199
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/LEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 201
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8, v13}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setMessageText(I)V

    .line 202
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setImageViewVisibility()V

    .line 203
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryChargingPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8, p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    const-string v8, "led_settings_battery_low"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/LEDSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/oneplus/settings/ui/ColorPickerPreference;

    iput-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    .line 206
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    iget-object v9, p0, Lcom/android/settings_ex/LEDSettings;->mDialogColorPalette:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColorPalette([Ljava/lang/String;)V

    .line 207
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    const-string v9, "#FFFF0001"

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDefaultColor(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings_ex/LEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "battery_light_low_color"

    const-string v10, "#FFFF0001"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 211
    .local v4, "batteryLowColorInt":I
    const-string v8, "#%06X"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "batteryLowColorString":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 213
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-direct {p0, v5}, Lcom/android/settings_ex/LEDSettings;->getDialogCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 215
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8, v13}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setMessageText(I)V

    .line 216
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setImageViewVisibility()V

    .line 217
    iget-object v8, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v8, p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 218
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 222
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/settings_ex/LEDSettings;->getDriverCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "color":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v3

    .line 225
    .local v1, "isColor":Z
    :goto_0
    const-string v4, "led_settings_global_notification"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/settings_ex/LEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_light_pulse_color"

    if-eqz v1, :cond_5

    move-object v4, v0

    :goto_1
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    :cond_0
    const-string v4, "led_settings_battery_full"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/android/settings_ex/LEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "battery_light_full_color"

    if-eqz v1, :cond_6

    move-object v4, v0

    :goto_2
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    :cond_1
    const-string v4, "led_settings_battery_charging"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 236
    invoke-virtual {p0}, Lcom/android/settings_ex/LEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "battery_light_medium_color"

    if-eqz v1, :cond_7

    move-object v4, v0

    :goto_3
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 240
    :cond_2
    const-string v4, "led_settings_battery_low"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 241
    invoke-virtual {p0}, Lcom/android/settings_ex/LEDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "battery_light_low_color"

    if-eqz v1, :cond_8

    .end local v0    # "color":Ljava/lang/String;
    :goto_4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    :cond_3
    return v3

    .line 224
    .end local v1    # "isColor":Z
    .restart local v0    # "color":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 226
    .restart local v1    # "isColor":Z
    :cond_5
    const-string v4, "#FF00FF00"

    goto :goto_1

    .line 231
    :cond_6
    const-string v4, "#FF00FF00"

    goto :goto_2

    .line 236
    :cond_7
    const-string v4, "#FFFF0001"

    goto :goto_3

    .line 241
    :cond_8
    const-string v0, "#FFFF0001"

    goto :goto_4
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 250
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 251
    iget-object v1, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/android/settings_ex/LEDSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " 5%"

    const-string v3, " 15%"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "string":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/LEDSettings;->mBatteryLowPreference:Lcom/oneplus/settings/ui/ColorPickerPreference;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    return-void
.end method
