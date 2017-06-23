.class public final Landroid/util/OpFeatures;
.super Ljava/lang/Object;
.source "OpFeatures.java"


# static fields
.field public static final BACKGROUND_PROCESS_BUSY_DETECTION:Ljava/lang/String; = "persist.sys.bg_detection"

.field private static final BLACK_MODE_PROP:Ljava/lang/String; = "persist.sys.blackmode"

.field public static final FEATURE_OEM_BUTTON_LIGHT:Ljava/lang/String; = "oem.button.light.support"

.field public static final FEATURE_OEM_HARDWARE_ALERT_SLIDER:Ljava/lang/String; = "oem.hardware.alert.slider"

.field public static final FEATURE_OEM_VIRTUAL_HW_KEY:Ljava/lang/String; = "oem.virtual.hw.key"

.field public static final OP_FEATURE_APP_BOOT_MANAGER:I = 0x16

.field public static final OP_FEATURE_APP_LOCKER:I = 0x17

.field public static final OP_FEATURE_AUTO_STARTUP:I = 0x4

.field public static final OP_FEATURE_BACK_COVER_THEME:I = 0x9

.field public static final OP_FEATURE_BG_DETECTION:I = 0xe

.field private static final OP_FEATURE_BIT_BASE:I = 0x0

.field private static final OP_FEATURE_BIT_END:I = 0x17

.field public static final OP_FEATURE_BLACK_GESTURE:I = 0x11

.field public static final OP_FEATURE_BUGREPORT:I = 0x3

.field public static final OP_FEATURE_CHANGE_PACKAGE_NAME:I = 0x15

.field public static final OP_FEATURE_CTA_PERMISSION_CONTROL:I = 0xc

.field public static final OP_FEATURE_EXT_AUDIO_DECODER:I = 0x13

.field public static final OP_FEATURE_KEY_LOCK:I = 0xb

.field public static final OP_FEATURE_MDM:I = 0x2

.field public static final OP_FEATURE_MMS_NOTI_SOUND:I = 0x6

.field public static final OP_FEATURE_MULTI_SIM_RINGTONES:I = 0x7

.field public static final OP_FEATURE_OP_KEYGUARD:I = 0x5

.field public static final OP_FEATURE_POST_INSTALL_AMAZON_APPS:I = 0x14

.field public static final OP_FEATURE_RESERVE_APP:I = 0x12

.field public static final OP_FEATURE_RINGTONE_ALIAS:I = 0xf

.field public static final OP_FEATURE_RINGTONE_BKP:I = 0x10

.field public static final OP_FEATURE_SCREENSHOT_GUIDER:I = 0xd

.field public static final OP_FEATURE_SKU_CHINA:I = 0x0

.field public static final OP_FEATURE_SKU_GLOBAL:I = 0x1

.field public static final OP_FEATURE_SWAP_KEYS:I = 0x8

.field public static final OP_FEATURE_TRI_STATE_KEY:I = 0xa

.field private static final sFeatures:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    .line 192
    sget-boolean v0, Landroid/os/Build$REGION_CODES;->IS_GLOBAL:Z

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 197
    :cond_0
    sget-boolean v0, Landroid/os/Build$REGION_CODES;->IS_CHINA:Z

    if-eqz v0, :cond_1

    .line 198
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 204
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 205
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 206
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 207
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 208
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 212
    :cond_1
    sget-boolean v0, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    if-eqz v0, :cond_2

    .line 213
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 216
    :cond_2
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 217
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 218
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 219
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 220
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 221
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 222
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 224
    const-string/jumbo v0, "persist.sys.bg_detection"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 227
    :cond_3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBackgroundDetectionOn()Z
    .locals 2

    .prologue
    .line 387
    const-string/jumbo v0, "persist.sys.bg_detection"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isBlackModeOn()Z
    .locals 2

    .prologue
    .line 370
    const-string/jumbo v0, "persist.sys.blackmode"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isH2()Z
    .locals 1

    .prologue
    .line 244
    sget-boolean v0, Landroid/os/Build$REGION_CODES;->IS_CHINA:Z

    return v0
.end method

.method public static isO2()Z
    .locals 1

    .prologue
    .line 235
    sget-boolean v0, Landroid/os/Build$REGION_CODES;->IS_GLOBAL:Z

    return v0
.end method

.method public static varargs isSupport([I)Z
    .locals 8
    .param p0, "features"    # [I

    .prologue
    .line 149
    const/4 v4, 0x1

    .line 150
    .local v4, "result":Z
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget v1, v0, v2

    .line 151
    .local v1, "feature":I
    if-ltz v1, :cond_0

    const/16 v5, 0x17

    if-le v1, v5, :cond_1

    .line 152
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid required OP feature id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 154
    :cond_1
    sget-object v5, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 155
    const/4 v4, 0x0

    .line 150
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "feature":I
    :cond_3
    return v4
.end method

.method public static isSupported3Key()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportedAutoStartup()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportedBackcoverTheme()Z
    .locals 1

    .prologue
    .line 329
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v0

    return v0
.end method

.method public static isSupportedCTAPermissionControl()Z
    .locals 1

    .prologue
    .line 361
    sget-boolean v0, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    return v0
.end method

.method public static isSupportedKeyLock()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportedMDM()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportedMmsNotiSound()Z
    .locals 1

    .prologue
    .line 297
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v0

    return v0
.end method

.method public static isSupportedMultiSimRingtones()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportedOPBugReport()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportedOPKeyguard()Z
    .locals 1

    .prologue
    .line 289
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v0

    return v0
.end method

.method public static isSupportedRingtoneAlias()Z
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v0

    return v0
.end method

.method public static isSupportedScreenshotGuider()Z
    .locals 1

    .prologue
    .line 379
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v0

    return v0
.end method

.method public static isSupportedSwapKey()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportedTriStateKey()Z
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportedWakeOnGesture()Z
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x1

    return v0
.end method
