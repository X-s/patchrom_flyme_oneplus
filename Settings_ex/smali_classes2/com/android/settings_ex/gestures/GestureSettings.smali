.class public Lcom/android/settings_ex/gestures/GestureSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "GestureSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/gestures/GestureSettings$1;
    }
.end annotation


# static fields
.field private static final DEBUG_DOZE_COMPONENT:Ljava/lang/String; = "debug.doze.component"

.field private static final PREF_KEY_DOUBLE_TAP_POWER:Ljava/lang/String; = "gesture_double_tap_power"

.field private static final PREF_KEY_DOUBLE_TAP_SCREEN:Ljava/lang/String; = "gesture_double_tap_screen"

.field private static final PREF_KEY_DOUBLE_TWIST:Ljava/lang/String; = "gesture_double_twist"

.field private static final PREF_KEY_PICK_UP:Ljava/lang/String; = "gesture_pick_up"

.field private static final PREF_KEY_SWIPE_DOWN_FINGERPRINT:Ljava/lang/String; = "gesture_swipe_down_fingerprint"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "GestureSettings"


# instance fields
.field private mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private mPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/gestures/GesturePreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/gestures/GestureSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/gestures/GestureSettings;->mPreferences:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/gestures/GestureSettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/gestures/GestureSettings;->isDoubleTwistAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/gestures/GestureSettings;->isSystemUINavigationAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/android/settings_ex/gestures/GestureSettings$1;

    invoke-direct {v0}, Lcom/android/settings_ex/gestures/GestureSettings$1;-><init>()V

    .line 229
    sput-object v0, Lcom/android/settings_ex/gestures/GestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addPreference(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/gestures/GestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/gestures/GesturePreference;

    .line 224
    .local v0, "preference":Lcom/android/settings_ex/gestures/GesturePreference;
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/gestures/GesturePreference;->setChecked(Z)V

    .line 225
    invoke-virtual {v0, p0}, Lcom/android/settings_ex/gestures/GesturePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 226
    iget-object v1, p0, Lcom/android/settings_ex/gestures/GestureSettings;->mPreferences:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method private static hasSensor(Landroid/content/Context;II)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nameResId"    # I
    .param p2, "vendorResId"    # I

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 208
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "vendor":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 219
    :cond_0
    const/4 v6, 0x0

    return v6

    .line 212
    :cond_1
    const-string/jumbo v6, "sensor"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    .line 213
    .local v4, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "s$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 214
    .local v2, "s":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 215
    const/4 v6, 0x1

    return v6
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 188
    const v0, 0x11200ae

    .line 187
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isDoubleTwistAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    const v0, 0x7f0e01a8

    .line 203
    const v1, 0x7f0e01a9

    .line 202
    invoke-static {p0, v0, v1}, Lcom/android/settings_ex/gestures/GestureSettings;->hasSensor(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method private static isSystemUINavigationAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 193
    const v1, 0x11200d4

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isSystemUINavigationEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "system_navigation_keys_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 178
    const v0, 0x7f0e0db6

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 183
    const/16 v0, 0x1cb

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v5, 0x7f08002f

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/gestures/GestureSettings;->addPreferencesFromResource(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/gestures/GestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 69
    .local v1, "context":Landroid/content/Context;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings_ex/gestures/GestureSettings;->mPreferences:Ljava/util/List;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/gestures/GestureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/gestures/GestureSettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/android/settings_ex/gestures/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "camera_double_tap_power_gesture_disabled"

    .line 73
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 75
    .local v0, "cameraDisabled":I
    const-string/jumbo v8, "gesture_double_tap_power"

    if-nez v0, :cond_0

    move v5, v6

    :goto_0
    invoke-direct {p0, v8, v5}, Lcom/android/settings_ex/gestures/GestureSettings;->addPreference(Ljava/lang/String;Z)V

    .line 81
    .end local v0    # "cameraDisabled":I
    :goto_1
    new-instance v5, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-direct {v5, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/gestures/GestureSettings;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 82
    iget-object v5, p0, Lcom/android/settings_ex/gestures/GestureSettings;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v5}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    iget-object v5, p0, Lcom/android/settings_ex/gestures/GestureSettings;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupEnabled(I)Z

    move-result v4

    .line 84
    .local v4, "pickup":Z
    const-string/jumbo v5, "gesture_pick_up"

    invoke-direct {p0, v5, v4}, Lcom/android/settings_ex/gestures/GestureSettings;->addPreference(Ljava/lang/String;Z)V

    .line 88
    .end local v4    # "pickup":Z
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/gestures/GestureSettings;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v5}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnDoubleTapAvailable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 89
    iget-object v5, p0, Lcom/android/settings_ex/gestures/GestureSettings;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnDoubleTapEnabled(I)Z

    move-result v2

    .line 90
    .local v2, "doubleTap":Z
    const-string/jumbo v5, "gesture_double_tap_screen"

    invoke-direct {p0, v5, v2}, Lcom/android/settings_ex/gestures/GestureSettings;->addPreference(Ljava/lang/String;Z)V

    .line 96
    .end local v2    # "doubleTap":Z
    :goto_3
    invoke-static {v1}, Lcom/android/settings_ex/gestures/GestureSettings;->isSystemUINavigationAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 97
    const-string/jumbo v5, "gesture_swipe_down_fingerprint"

    invoke-static {v1}, Lcom/android/settings_ex/gestures/GestureSettings;->isSystemUINavigationEnabled(Landroid/content/Context;)Z

    move-result v8

    invoke-direct {p0, v5, v8}, Lcom/android/settings_ex/gestures/GestureSettings;->addPreference(Ljava/lang/String;Z)V

    .line 103
    :goto_4
    invoke-static {v1}, Lcom/android/settings_ex/gestures/GestureSettings;->isDoubleTwistAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ex/gestures/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "camera_double_twist_to_flip_enabled"

    .line 104
    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 106
    .local v3, "doubleTwistEnabled":I
    const-string/jumbo v5, "gesture_double_twist"

    if-eqz v3, :cond_5

    :goto_5
    invoke-direct {p0, v5, v6}, Lcom/android/settings_ex/gestures/GestureSettings;->addPreference(Ljava/lang/String;Z)V

    .line 65
    .end local v3    # "doubleTwistEnabled":I
    :goto_6
    return-void

    .restart local v0    # "cameraDisabled":I
    :cond_0
    move v5, v7

    .line 75
    goto :goto_0

    .line 77
    .end local v0    # "cameraDisabled":I
    :cond_1
    const-string/jumbo v5, "gesture_double_tap_power"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/gestures/GestureSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_2
    const-string/jumbo v5, "gesture_pick_up"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/gestures/GestureSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_2

    .line 92
    :cond_3
    const-string/jumbo v5, "gesture_double_tap_screen"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/gestures/GestureSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_3

    .line 99
    :cond_4
    const-string/jumbo v5, "gesture_swipe_down_fingerprint"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/gestures/GestureSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_4

    .restart local v3    # "doubleTwistEnabled":I
    :cond_5
    move v6, v7

    .line 106
    goto :goto_5

    .line 108
    .end local v3    # "doubleTwistEnabled":I
    :cond_6
    const-string/jumbo v5, "gesture_double_twist"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/gestures/GestureSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 117
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/gestures/GestureSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 118
    .local v0, "listview":Landroid/support/v7/widget/RecyclerView;
    new-instance v2, Lcom/android/settings_ex/gestures/GestureSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/gestures/GestureSettings$2;-><init>(Lcom/android/settings_ex/gestures/GestureSettings;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 136
    return-object v1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 157
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 158
    .local v0, "enabled":Z
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v4, "gesture_double_tap_power"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/android/settings_ex/gestures/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 161
    const-string/jumbo v5, "camera_double_tap_power_gesture_disabled"

    if-eqz v0, :cond_1

    .line 160
    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 173
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v2, v3

    .line 161
    goto :goto_0

    .line 162
    :cond_2
    const-string/jumbo v4, "gesture_pick_up"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 163
    invoke-virtual {p0}, Lcom/android/settings_ex/gestures/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "doze_pulse_on_pick_up"

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 164
    :cond_4
    const-string/jumbo v4, "gesture_double_tap_screen"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/gestures/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "doze_pulse_on_double_tap"

    if-eqz v0, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 166
    :cond_6
    const-string/jumbo v4, "gesture_swipe_down_fingerprint"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 167
    invoke-virtual {p0}, Lcom/android/settings_ex/gestures/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 168
    const-string/jumbo v5, "system_navigation_keys_enabled"

    if-eqz v0, :cond_7

    move v2, v3

    .line 167
    :cond_7
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 169
    :cond_8
    const-string/jumbo v4, "gesture_double_twist"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/settings_ex/gestures/GestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 171
    const-string/jumbo v5, "camera_double_twist_to_flip_enabled"

    if-eqz v0, :cond_9

    move v2, v3

    .line 170
    :cond_9
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStart()V

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/gestures/GestureSettings;->mPreferences:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "preference$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/gestures/GesturePreference;

    .line 143
    .local v0, "preference":Lcom/android/settings_ex/gestures/GesturePreference;
    invoke-virtual {v0}, Lcom/android/settings_ex/gestures/GesturePreference;->onViewVisible()V

    goto :goto_0

    .line 140
    .end local v0    # "preference":Lcom/android/settings_ex/gestures/GesturePreference;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 150
    iget-object v2, p0, Lcom/android/settings_ex/gestures/GestureSettings;->mPreferences:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "preference$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/gestures/GesturePreference;

    .line 151
    .local v0, "preference":Lcom/android/settings_ex/gestures/GesturePreference;
    invoke-virtual {v0}, Lcom/android/settings_ex/gestures/GesturePreference;->onViewInvisible()V

    goto :goto_0

    .line 148
    .end local v0    # "preference":Lcom/android/settings_ex/gestures/GesturePreference;
    :cond_0
    return-void
.end method
