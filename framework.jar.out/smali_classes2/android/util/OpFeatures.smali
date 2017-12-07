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

.field private static final OP_FEATURE_BIT_END:I = 0x1b

.field public static final OP_FEATURE_BLACK_GESTURE:I = 0x11

.field public static final OP_FEATURE_BUGREPORT:I = 0x3

.field public static final OP_FEATURE_CHANGE_PACKAGE_NAME:I = 0x15

.field public static final OP_FEATURE_CTA_PERMISSION_CONTROL:I = 0xc

.field public static final OP_FEATURE_EXT_AUDIO_DECODER:I = 0x13

.field public static final OP_FEATURE_GESTURE_SCREENSHOT:I = 0xd

.field public static final OP_FEATURE_KEY_LOCK:I = 0xb

.field public static final OP_FEATURE_LONG_SCREENSHOT:I = 0x18

.field public static final OP_FEATURE_MDM:I = 0x2

.field public static final OP_FEATURE_MMS_NOTI_SOUND:I = 0x6

.field public static final OP_FEATURE_MULTI_SIM_RINGTONES:I = 0x7

.field public static final OP_FEATURE_OP_KEYGUARD:I = 0x5

.field public static final OP_FEATURE_OTG_AUTO_SHUTDOWN:I = 0x1b

.field public static final OP_FEATURE_POST_INSTALL_AMAZON_APPS:I = 0x14

.field public static final OP_FEATURE_QUICK_PAY:I = 0x1a

.field public static final OP_FEATURE_RESERVE_APP:I = 0x12

.field public static final OP_FEATURE_RINGTONE_ALIAS:I = 0xf

.field public static final OP_FEATURE_RINGTONE_BKP:I = 0x10

.field public static final OP_FEATURE_SCENE_MODES:I = 0x19

.field public static final OP_FEATURE_SKU_CHINA:I = 0x0

.field public static final OP_FEATURE_SKU_GLOBAL:I = 0x1

.field public static final OP_FEATURE_SWAP_KEYS:I = 0x8

.field public static final OP_FEATURE_TRI_STATE_KEY:I = 0xa

.field private static final sFeatures:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    .line 216
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 217
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 219
    sget-boolean v0, Landroid/os/Build$REGION_CODES;->IS_GLOBAL:Z

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 221
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 225
    :cond_0
    sget-boolean v0, Landroid/os/Build$REGION_CODES;->IS_CHINA:Z

    if-eqz v0, :cond_1

    .line 226
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 232
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 237
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 242
    :cond_1
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 246
    sget-boolean v0, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    if-eqz v0, :cond_2

    .line 247
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 250
    :cond_2
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 251
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 252
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 253
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 254
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 255
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 256
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 257
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 258
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 259
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 260
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 262
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 264
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 265
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 267
    const-string/jumbo v0, "persist.sys.bg_detection"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 271
    :cond_3
    sget-object v0, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs isSupport([I)Z
    .locals 5
    .param p0, "features"    # [I

    .prologue
    const/4 v2, 0x0

    .line 173
    const/4 v1, 0x1

    .line 174
    .local v1, "result":Z
    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_3

    aget v0, p0, v2

    .line 175
    .local v0, "feature":I
    if-ltz v0, :cond_0

    const/16 v4, 0x1b

    if-le v0, v4, :cond_1

    .line 176
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid required OP feature id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    :cond_1
    sget-object v4, Landroid/util/OpFeatures;->sFeatures:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 179
    const/4 v1, 0x0

    .line 174
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "feature":I
    :cond_3
    return v1
.end method
