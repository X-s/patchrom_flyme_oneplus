.class public Lcom/android/settings_ex/accessibility/gestures/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final TOUCHSCREEN_CAMERA_DEFAULT:Z = true

.field public static final TOUCHSCREEN_CAMERA_GESTURE_KEY:Ljava/lang/String; = "touchscreen_gesture_camera"

.field public static final TOUCHSCREEN_CAMERA_NODE:Ljava/lang/String; = "/proc/touchpanel/camera_enable"

.field public static final TOUCHSCREEN_DOUBLE_TAP_DEFAULT:Z = true

.field public static final TOUCHSCREEN_DOUBLE_TAP_GESTURE_KEY:Ljava/lang/String; = "touchscreen_gesture_double_tap"

.field public static final TOUCHSCREEN_DOUBLE_TAP_NODE:Ljava/lang/String; = "/proc/touchpanel/double_tap_enable"

.field public static final TOUCHSCREEN_FLASHLIGHT_DEFAULT:Z = true

.field public static final TOUCHSCREEN_FLASHLIGHT_GESTURE_KEY:Ljava/lang/String; = "touchscreen_gesture_flashlight"

.field public static final TOUCHSCREEN_FLASHLIGHT_NODE:Ljava/lang/String; = "/proc/touchpanel/flashlight_enable"

.field public static final TOUCHSCREEN_MUSIC_DEFAULT:Z = true

.field public static final TOUCHSCREEN_MUSIC_GESTURE_KEY:Ljava/lang/String; = "touchscreen_gesture_music"

.field public static final TOUCHSCREEN_MUSIC_NODE:Ljava/lang/String; = "/proc/touchpanel/music_enable"

.field public static final sNodeDefaultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final sNodePreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ex/accessibility/gestures/Constants;->sNodePreferenceMap:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ex/accessibility/gestures/Constants;->sNodeDefaultMap:Ljava/util/Map;

    .line 41
    sget-object v0, Lcom/android/settings_ex/accessibility/gestures/Constants;->sNodePreferenceMap:Ljava/util/Map;

    const-string v1, "touchscreen_gesture_camera"

    const-string v2, "/proc/touchpanel/camera_enable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/settings_ex/accessibility/gestures/Constants;->sNodePreferenceMap:Ljava/util/Map;

    const-string v1, "touchscreen_gesture_music"

    const-string v2, "/proc/touchpanel/music_enable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/settings_ex/accessibility/gestures/Constants;->sNodePreferenceMap:Ljava/util/Map;

    const-string v1, "touchscreen_gesture_flashlight"

    const-string v2, "/proc/touchpanel/flashlight_enable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/settings_ex/accessibility/gestures/Constants;->sNodePreferenceMap:Ljava/util/Map;

    const-string v1, "touchscreen_gesture_double_tap"

    const-string v2, "/proc/touchpanel/double_tap_enable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/android/settings_ex/accessibility/gestures/Constants;->sNodeDefaultMap:Ljava/util/Map;

    const-string v1, "touchscreen_gesture_camera"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/settings_ex/accessibility/gestures/Constants;->sNodeDefaultMap:Ljava/util/Map;

    const-string v1, "touchscreen_gesture_music"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/settings_ex/accessibility/gestures/Constants;->sNodeDefaultMap:Ljava/util/Map;

    const-string v1, "touchscreen_gesture_flashlight"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/android/settings_ex/accessibility/gestures/Constants;->sNodeDefaultMap:Ljava/util/Map;

    const-string v1, "touchscreen_gesture_double_tap"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPreferenceEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 54
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method
