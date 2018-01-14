.class public final Lcom/android/server/display/ColorBalanceService;
.super Lcom/android/server/SystemService;
.source "ColorBalanceService.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ColorBalanceService$AutoMode;,
        Lcom/android/server/display/ColorBalanceService$BinderService;,
        Lcom/android/server/display/ColorBalanceService$CMH;,
        Lcom/android/server/display/ColorBalanceService$ColorMatrixEvaluator;,
        Lcom/android/server/display/ColorBalanceService$CustomAutoMode;,
        Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;,
        Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MARK_TOUCH_STOP:I = -0x200

.field private static final MODE_CREATE_ING:I = 0x1

.field private static final MODE_CREATE_NONE:I = 0x0

.field private static final MODE_NIGHT:I = 0x1

.field private static final MODE_NULL:I = 0x0

.field private static final MODE_READING:I = 0x2

.field private static final MSG_ACTIVE_MODE:I = 0x7

.field private static final MSG_DEFAULT_MODE:I = 0x8

.field private static final MSG_INIT:I = 0xb

.field private static final MSG_NIGHT_SWITCH:I = 0xd

.field private static final MSG_REVERT_STATUS:I = 0xc

.field private static final MSG_SAVE_MODE:I = 0x6

.field private static final MSG_SCREEN_OFF:I = 0x2

.field private static final MSG_SCREEN_ON:I = 0x1

.field private static final MSG_SET_SEEKBAR:I = 0x4

.field private static final MSG_SET_SENSOR:I = 0x3

.field private static final MSG_SHADING:I = 0x5

.field private static final MSG_START:I = 0x9

.field private static final MSG_STOP:I = 0xa

.field private static final OP_SYS_Default_Color_PROPERTY:Ljava/lang/String; = "sys.default_mode"

.field private static final OP_SYS_NIGHT_MODE:Ljava/lang/String; = "sys.night_mode"

.field private static final OP_SYS_SRGB_PROPERTY:Ljava/lang/String; = "sys.srgb"

.field private static final SEEKBAR_MAX:I = 0x84

.field private static final SENSOR_TYPE_RGB:I = 0x1fa264c

.field private static final TAG:Ljava/lang/String; = "ColorBalanceService"

.field private static mMode:I


# instance fields
.field private ambientLux:F

.field private mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

.field private mBootCompleted:Z

.field private mBrighteningLuxThreshold:F

.field private final mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

.field private mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

.field private mColorBalanceThread:Landroid/os/HandlerThread;

.field private mColorMatrixAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/internal/app/NightDisplayController;

.field private mCreateModeState:I

.field private mCurrentUser:I

.field private mDarkeningLuxThreshold:F

.field private mGeneration:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsActivated:Ljava/lang/Boolean;

.field private mIsActivatedJustToBeFalse:Ljava/lang/Boolean;

.field private mLastObservedLux:F

.field private mModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mNightColorMode:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mUserSetupObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/ColorBalanceService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/ColorBalanceService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/ColorBalanceService;)Lcom/qti/snapdragon/sdk/display/ColorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/display/ColorBalanceService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mNightColorMode:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/display/ColorBalanceService;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/ColorBalanceService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/ColorBalanceService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->init()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/ContentResolver;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/display/ColorBalanceService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/display/ColorBalanceService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/display/ColorBalanceService;ZI)V
    .locals 0
    .param p1, "activated"    # Z
    .param p2, "generation"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ColorBalanceService;->nightModeSwitch(ZI)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/display/ColorBalanceService;Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorBalanceService;->processScreenOn(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->revertStatus()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->saveColorModeInternal()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/display/ColorBalanceService;I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorBalanceService;->sendMsgInternal(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->setUp()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->setupApplication()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/ColorBalanceService;->mMode:I

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 102
    iput v1, p0, Lcom/android/server/display/ColorBalanceService;->mCreateModeState:I

    .line 105
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    .line 111
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsActivatedJustToBeFalse:Ljava/lang/Boolean;

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mNightColorMode:I

    .line 129
    iput v1, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 132
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    .line 134
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ColorBalanceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    .line 135
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 136
    new-instance v0, Lcom/android/server/display/ColorBalanceService$CMH;

    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/ColorBalanceService$CMH;-><init>(Lcom/android/server/display/ColorBalanceService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    .line 130
    return-void
.end method

.method private createModeList([Lcom/qti/snapdragon/sdk/display/ModeInfo;)V
    .locals 5
    .param p1, "pa"    # [Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .prologue
    .line 972
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mModeList:Ljava/util/ArrayList;

    .line 973
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 974
    .local v0, "i":Lcom/qti/snapdragon/sdk/display/ModeInfo;
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;

    invoke-direct {v4, p0, v0}, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;-><init>(Lcom/android/server/display/ColorBalanceService;Lcom/qti/snapdragon/sdk/display/ModeInfo;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 971
    .end local v0    # "i":Lcom/qti/snapdragon/sdk/display/ModeInfo;
    :cond_0
    return-void
.end method

.method private init()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 766
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v3, :cond_0

    .line 767
    new-instance v0, Lcom/android/server/display/ColorBalanceService$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/ColorBalanceService$2;-><init>(Lcom/android/server/display/ColorBalanceService;)V

    .line 774
    .local v0, "colorinterface":Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->connect(Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;)I

    move-result v2

    .line 775
    .local v2, "retVal":I
    if-eqz v2, :cond_0

    .line 776
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "Connection failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    return v5

    .line 779
    .end local v2    # "retVal":I
    :catch_0
    move-exception v1

    .line 780
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "ColorManager connect error!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    .end local v0    # "colorinterface":Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method private isFactoryMode(Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;)Z
    .locals 2
    .param p1, "mode"    # Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;

    .prologue
    .line 978
    iget-object v0, p1, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;->mode:Lcom/qti/snapdragon/sdk/display/ModeInfo;

    invoke-virtual {v0}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getModeType()Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    move-result-object v0

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_SYSTEM:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    if-ne v0, v1, :cond_0

    .line 979
    const/4 v0, 0x1

    return v0

    .line 980
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isScreenOn()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0

    .line 273
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    const-string/jumbo v2, "user_setup_complete"

    invoke-static {p0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private modeExists(Ljava/lang/String;)Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;
    .locals 6
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 984
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_USER:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    invoke-virtual {v3, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getModes(Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;)[Lcom/qti/snapdragon/sdk/display/ModeInfo;

    move-result-object v2

    .line 985
    .local v2, "modeDataArray":[Lcom/qti/snapdragon/sdk/display/ModeInfo;
    if-eqz v2, :cond_0

    .line 986
    invoke-direct {p0, v2}, Lcom/android/server/display/ColorBalanceService;->createModeList([Lcom/qti/snapdragon/sdk/display/ModeInfo;)V

    .line 988
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 989
    return-object v5

    .line 991
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mModeList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "mode$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;

    .line 992
    .local v0, "mode":Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;
    iget-object v3, v0, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;->modename:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 993
    return-object v0

    .line 996
    .end local v0    # "mode":Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;
    :cond_3
    return-object v5
.end method

.method private nightModeSwitch(ZI)V
    .locals 13
    .param p1, "activated"    # Z
    .param p2, "generation"    # I

    .prologue
    const/16 v12, 0x190

    const/16 v11, 0x12c

    const/16 v10, 0xc8

    const/16 v9, 0x84

    const/4 v8, 0x0

    .line 373
    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    if-eq p2, v5, :cond_0

    .line 374
    return-void

    .line 376
    :cond_0
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 377
    const-string/jumbo v6, "screen_color_mode_settings_value"

    const/4 v7, -0x2

    .line 376
    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 378
    .local v4, "status":I
    if-eqz p1, :cond_c

    .line 379
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/display/ColorBalanceService;->setNightMode(Z)V

    .line 380
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 381
    const-string/jumbo v6, "oem_nightmode_progress_status"

    const/16 v7, 0x46

    const/4 v8, -0x2

    .line 380
    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 382
    .local v3, "process":I
    if-ne v3, v9, :cond_3

    const/4 v2, 0x6

    .line 383
    .local v2, "mode":I
    :goto_0
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "process:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v5, 0x6

    if-gt v2, v5, :cond_1

    if-gez v2, :cond_2

    .line 385
    :cond_1
    const/4 v2, 0x4

    .line 386
    if-le v3, v9, :cond_4

    if-gt v3, v10, :cond_4

    .line 387
    const/4 v2, 0x2

    .line 398
    :cond_2
    :goto_1
    const/4 v5, 0x3

    if-eq v4, v5, :cond_a

    .line 399
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v5, :cond_a

    .line 400
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_a

    .line 401
    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    if-eq p2, v5, :cond_8

    .line 402
    return-void

    .line 382
    .end local v1    # "i":I
    .end local v2    # "mode":I
    :cond_3
    div-int/lit8 v5, v3, 0x16

    add-int/lit8 v2, v5, 0x1

    .restart local v2    # "mode":I
    goto :goto_0

    .line 388
    :cond_4
    if-le v3, v10, :cond_5

    if-gt v3, v11, :cond_5

    .line 389
    const/4 v2, 0x3

    .line 388
    goto :goto_1

    .line 390
    :cond_5
    if-le v3, v11, :cond_6

    if-gt v3, v12, :cond_6

    .line 391
    const/4 v2, 0x4

    .line 390
    goto :goto_1

    .line 392
    :cond_6
    if-le v3, v12, :cond_7

    const/16 v5, 0x1f4

    if-gt v3, v5, :cond_7

    .line 393
    const/4 v2, 0x5

    .line 392
    goto :goto_1

    .line 394
    :cond_7
    const/16 v5, 0x1f4

    if-le v3, v5, :cond_2

    const/16 v5, 0x258

    if-gt v3, v5, :cond_2

    .line 395
    const/4 v2, 0x6

    goto :goto_1

    .line 404
    .restart local v1    # "i":I
    :cond_8
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v5, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 405
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nightModeSwitch setActiveMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    if-eq p2, v5, :cond_9

    .line 407
    return-void

    .line 410
    :cond_9
    const/16 v5, 0x3e8

    :try_start_0
    div-int/2addr v5, v2

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 417
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "i":I
    :cond_a
    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    if-eq p2, v5, :cond_b

    .line 418
    return-void

    .line 420
    :cond_b
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nightModeSwitch setActiveMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v5, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 422
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v5, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    .line 423
    iput v2, p0, Lcom/android/server/display/ColorBalanceService;->mNightColorMode:I

    .line 372
    .end local v2    # "mode":I
    .end local v3    # "process":I
    :goto_4
    return-void

    .line 426
    :cond_c
    invoke-direct {p0, v8}, Lcom/android/server/display/ColorBalanceService;->setNightMode(Z)V

    .line 428
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v5, :cond_16

    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mNightColorMode:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_16

    .line 429
    const-string/jumbo v5, "ColorBalanceService"

    const-string/jumbo v6, "revertStatus,onActivated"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v5, 0x3

    if-eq v4, v5, :cond_16

    .line 432
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 433
    const-string/jumbo v6, "oem_nightmode_progress_status"

    const/16 v7, 0x46

    const/4 v8, -0x2

    .line 432
    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 434
    .restart local v3    # "process":I
    if-ne v3, v9, :cond_f

    const/4 v2, 0x6

    .line 435
    .restart local v2    # "mode":I
    :goto_5
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nightModeSwitch process:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v5, 0x6

    if-gt v2, v5, :cond_d

    if-gez v2, :cond_e

    .line 437
    :cond_d
    const/4 v2, 0x4

    .line 438
    if-le v3, v9, :cond_10

    if-gt v3, v10, :cond_10

    .line 439
    const/4 v2, 0x2

    .line 450
    :cond_e
    :goto_6
    move v1, v2

    .line 451
    .restart local v1    # "i":I
    :goto_7
    if-lez v1, :cond_16

    .line 452
    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    if-eq p2, v5, :cond_14

    .line 453
    return-void

    .line 434
    .end local v1    # "i":I
    .end local v2    # "mode":I
    :cond_f
    div-int/lit8 v5, v3, 0x16

    add-int/lit8 v2, v5, 0x1

    .restart local v2    # "mode":I
    goto :goto_5

    .line 440
    :cond_10
    if-le v3, v10, :cond_11

    if-gt v3, v11, :cond_11

    .line 441
    const/4 v2, 0x3

    .line 440
    goto :goto_6

    .line 442
    :cond_11
    if-le v3, v11, :cond_12

    if-gt v3, v12, :cond_12

    .line 443
    const/4 v2, 0x4

    .line 442
    goto :goto_6

    .line 444
    :cond_12
    if-le v3, v12, :cond_13

    const/16 v5, 0x1f4

    if-gt v3, v5, :cond_13

    .line 445
    const/4 v2, 0x5

    .line 444
    goto :goto_6

    .line 446
    :cond_13
    const/16 v5, 0x1f4

    if-le v3, v5, :cond_e

    const/16 v5, 0x258

    if-gt v3, v5, :cond_e

    .line 447
    const/4 v2, 0x6

    goto :goto_6

    .line 456
    .restart local v1    # "i":I
    :cond_14
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v5, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 457
    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    if-eq p2, v5, :cond_15

    .line 458
    return-void

    .line 461
    :cond_15
    const/16 v5, 0x64

    :try_start_1
    div-int/2addr v5, v2

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 451
    :goto_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 462
    :catch_1
    move-exception v0

    .line 463
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    .line 468
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "i":I
    .end local v2    # "mode":I
    .end local v3    # "process":I
    :cond_16
    iget v5, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    if-eq p2, v5, :cond_17

    .line 469
    return-void

    .line 472
    :cond_17
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->revertStatus()V

    .line 473
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/ColorBalanceService;->mIsActivatedJustToBeFalse:Ljava/lang/Boolean;

    goto/16 :goto_4
.end method

.method private onUserChanged(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, -0x2710

    .line 199
    invoke-virtual {p0}, Lcom/android/server/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 200
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    if-eq v1, v2, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 203
    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 209
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    .line 211
    iget v1, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    if-eq v1, v2, :cond_1

    .line 212
    iget v1, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v0, v1}, Lcom/android/server/display/ColorBalanceService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 213
    new-instance v1, Lcom/android/server/display/ColorBalanceService$1;

    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/display/ColorBalanceService$1;-><init>(Lcom/android/server/display/ColorBalanceService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 226
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 227
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    const/4 v4, 0x0

    .line 226
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 198
    :cond_1
    :goto_1
    return-void

    .line 204
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/ColorBalanceService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->tearDown()V

    goto :goto_0

    .line 228
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/display/ColorBalanceService;->mBootCompleted:Z

    if-eqz v1, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->setUp()V

    goto :goto_1
.end method

.method private processScreenOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 814
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 817
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 818
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsActivatedJustToBeFalse:Ljava/lang/Boolean;

    .line 813
    :cond_1
    return-void

    .line 814
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsActivatedJustToBeFalse:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->revertStatus()V

    goto :goto_0
.end method

.method private revertStatus()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 306
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v2, :cond_0

    .line 307
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v3, "revertStatus,mCmgr is null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void

    .line 310
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 311
    const-string/jumbo v3, "screen_color_mode_settings_value"

    .line 310
    invoke-static {v2, v3, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 313
    .local v0, "status":I
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "revertStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    packed-switch v0, :pswitch_data_0

    .line 305
    :goto_0
    :pswitch_0
    return-void

    .line 317
    :pswitch_1
    invoke-direct {p0, v5}, Lcom/android/server/display/ColorBalanceService;->setSRGB(Z)V

    .line 318
    invoke-direct {p0, v5}, Lcom/android/server/display/ColorBalanceService;->setNightMode(Z)V

    .line 319
    invoke-direct {p0, v5}, Lcom/android/server/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 320
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 321
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    .line 322
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    .line 323
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->saveColorModeInternal()V

    goto :goto_0

    .line 326
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/android/server/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 327
    invoke-direct {p0, v6}, Lcom/android/server/display/ColorBalanceService;->setSRGB(Z)V

    .line 328
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 329
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    goto :goto_0

    .line 332
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/android/server/display/ColorBalanceService;->setSRGB(Z)V

    .line 333
    invoke-direct {p0, v5}, Lcom/android/server/display/ColorBalanceService;->setNightMode(Z)V

    .line 334
    invoke-direct {p0, v6}, Lcom/android/server/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 335
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 336
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    goto :goto_0

    .line 339
    :pswitch_4
    invoke-direct {p0, v5}, Lcom/android/server/display/ColorBalanceService;->setSRGB(Z)V

    .line 340
    invoke-direct {p0, v5}, Lcom/android/server/display/ColorBalanceService;->setNightMode(Z)V

    .line 341
    invoke-direct {p0, v5}, Lcom/android/server/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 342
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 343
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    .line 344
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 345
    const-string/jumbo v3, "oem_screen_better_value"

    const/16 v4, 0x37

    .line 344
    invoke-static {v2, v3, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 347
    .local v1, "value":I
    const/16 v2, 0x64

    if-gt v1, v2, :cond_1

    if-gez v1, :cond_2

    .line 348
    :cond_1
    const/16 v1, 0x32

    .line 350
    :cond_2
    rsub-int/lit8 v1, v1, 0x64

    .line 351
    add-int/lit8 v1, v1, -0x2b

    .line 352
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 353
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    .line 354
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setActiveMode 0, setColorBalance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->saveColorModeInternal()V

    goto/16 :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private saveColorModeInternal()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1000
    const-string/jumbo v4, "ColorBalanceService"

    const-string/jumbo v5, "saveColorModeInternal"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const-string/jumbo v2, "oneplus_color_mode"

    .line 1004
    .local v2, "modeName":Ljava/lang/String;
    const/4 v1, -0x1

    .line 1005
    .local v1, "modeId":I
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-eqz v4, :cond_3

    .line 1006
    invoke-direct {p0, v2}, Lcom/android/server/display/ColorBalanceService;->modeExists(Ljava/lang/String;)Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;

    move-result-object v0

    .local v0, "mode":Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;
    if-eqz v0, :cond_4

    .line 1007
    invoke-direct {p0, v0}, Lcom/android/server/display/ColorBalanceService;->isFactoryMode(Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1008
    return-void

    .line 1011
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    iget v5, v0, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;->modeID:I

    invoke-virtual {v4, v5, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->modifyMode(ILjava/lang/String;)I

    move-result v3

    .line 1012
    .local v3, "retVal":I
    if-gez v3, :cond_1

    .line 1013
    return-void

    .line 1015
    :cond_1
    iget v1, v0, Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;->modeID:I

    .line 1027
    .end local v3    # "retVal":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v4, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 1028
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v4, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    .line 999
    .end local v0    # "mode":Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;
    :cond_3
    return-void

    .line 1018
    .restart local v0    # "mode":Lcom/android/server/display/ColorBalanceService$ModeInfoWrapper;
    :cond_4
    iget v4, p0, Lcom/android/server/display/ColorBalanceService;->mCreateModeState:I

    if-ne v4, v6, :cond_5

    .line 1019
    return-void

    .line 1021
    :cond_5
    iput v6, p0, Lcom/android/server/display/ColorBalanceService;->mCreateModeState:I

    .line 1022
    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v4, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->createNewMode(Ljava/lang/String;)I

    move-result v1

    .line 1023
    if-gez v1, :cond_2

    .line 1024
    return-void
.end method

.method private sendMsgInternal(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 949
    invoke-virtual {p0, p1}, Lcom/android/server/display/ColorBalanceService;->sendMsg(I)V

    .line 948
    return-void
.end method

.method private setDefaultMode(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 296
    if-eqz p1, :cond_0

    .line 297
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "default mode node,turn on!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string/jumbo v0, "sys.default_mode"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :goto_0
    return-void

    .line 300
    :cond_0
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "default mode node,turn off!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string/jumbo v0, "sys.default_mode"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNightMode(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 286
    if-eqz p1, :cond_0

    .line 287
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "night mode node,turn on!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string/jumbo v0, "sys.night_mode"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :goto_0
    return-void

    .line 290
    :cond_0
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "night mode node,turn off!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string/jumbo v0, "sys.night_mode"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSRGB(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 277
    if-eqz p1, :cond_0

    .line 278
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "SRGB is off,turn on!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string/jumbo v0, "sys.srgb"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :goto_0
    return-void

    .line 281
    :cond_0
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "SRGB is on,turn off!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string/jumbo v0, "sys.srgb"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setUp()V
    .locals 3

    .prologue
    .line 239
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUp: currentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v0, Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {p0}, Lcom/android/server/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 243
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 246
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorBalanceService;->onAutoModeChanged(I)V

    .line 249
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsActivated:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorBalanceService;->onActivated(Z)V

    .line 238
    :cond_0
    return-void
.end method

.method private setupApplication()V
    .locals 3

    .prologue
    .line 754
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "Display ColorManager registered.."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v0, :cond_0

    .line 756
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 757
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 758
    sget-object v2, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;->DISP_PRIMARY:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;

    .line 756
    invoke-static {v0, v1, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->getInstance(Landroid/app/Application;Landroid/content/Context;Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_DISPLAY_TYPE;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    .line 760
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    if-nez v0, :cond_0

    .line 761
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "Failed to get ColorManager instance."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    return-void
.end method

.method private shading(II)V
    .locals 5
    .param p1, "base"    # I
    .param p2, "obj"    # I

    .prologue
    .line 790
    move v1, p1

    .line 791
    .local v1, "i":I
    if-le p2, p1, :cond_0

    .line 792
    :goto_0
    if-gt v1, p2, :cond_1

    .line 793
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    .line 795
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :goto_1
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setColorBalance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 802
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_2
    if-lt v1, p2, :cond_1

    .line 803
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCmgr:Lcom/qti/snapdragon/sdk/display/ColorManager;

    invoke-virtual {v2, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    .line 805
    const-wide/16 v2, 0xa

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 809
    :goto_3
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setColorBalance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 806
    :catch_1
    move-exception v0

    .line 807
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 789
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method

.method private tearDown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 255
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tearDown: currentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 259
    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/ColorBalanceService$AutoMode;->onStop()V

    .line 264
    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    .line 267
    :cond_1
    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mIsActivated:Ljava/lang/Boolean;

    .line 254
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 363
    :cond_0
    const-string/jumbo v1, "ColorBalanceService"

    if-eqz p1, :cond_3

    const-string/jumbo v0, "Turning on night display"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorBalanceService$AutoMode;->onActivated(Z)V

    .line 367
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mIsActivated:Ljava/lang/Boolean;

    .line 368
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    .line 369
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mGeneration:I

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/ColorBalanceService;->sendMsgArg1(II)V

    .line 361
    :cond_2
    return-void

    .line 363
    :cond_3
    const-string/jumbo v0, "Turning off night display"

    goto :goto_0
.end method

.method public onAutoModeChanged(I)V
    .locals 4
    .param p1, "autoMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 487
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAutoModeChanged: autoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/ColorBalanceService$AutoMode;->onStop()V

    .line 490
    iput-object v3, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    .line 493
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 494
    new-instance v0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;-><init>(Lcom/android/server/display/ColorBalanceService;)V

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    .line 499
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/ColorBalanceService$AutoMode;->onStart()V

    .line 486
    :cond_2
    return-void

    .line 495
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 496
    new-instance v0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;-><init>(Lcom/android/server/display/ColorBalanceService;)V

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 169
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 171
    const-string/jumbo v1, "power"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/ColorBalanceService;->mBootCompleted:Z

    .line 173
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorBalanceService;->sendMsg(I)V

    .line 168
    :cond_0
    return-void
.end method

.method public onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 3
    .param p1, "endTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 515
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomEndTimeChanged: endTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorBalanceService$AutoMode;->onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    .line 514
    :cond_0
    return-void
.end method

.method public onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 3
    .param p1, "startTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 506
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomStartTimeChanged: startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService;->mAutoMode:Lcom/android/server/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorBalanceService$AutoMode;->onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V

    .line 505
    :cond_0
    return-void
.end method

.method public onModeSettingChange()V
    .locals 0

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService;->revertStatus()V

    .line 479
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 163
    const-string/jumbo v0, "nightdisplay"

    new-instance v1, Lcom/android/server/display/ColorBalanceService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/ColorBalanceService$BinderService;-><init>(Lcom/android/server/display/ColorBalanceService;Lcom/android/server/display/ColorBalanceService$BinderService;)V

    .line 164
    const/4 v2, 0x1

    .line 163
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/ColorBalanceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 162
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    .line 179
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorBalanceService;->onUserChanged(I)V

    .line 177
    :cond_0
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    .line 193
    iget v0, p0, Lcom/android/server/display/ColorBalanceService;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    .line 194
    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/display/ColorBalanceService;->onUserChanged(I)V

    .line 191
    :cond_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 187
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorBalanceService;->onUserChanged(I)V

    .line 185
    return-void
.end method

.method public sendMsg(I)V
    .locals 2
    .param p1, "v"    # I

    .prologue
    .line 711
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 712
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 713
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    invoke-virtual {v1, v0}, Lcom/android/server/display/ColorBalanceService$CMH;->sendMessage(Landroid/os/Message;)Z

    .line 710
    :cond_0
    return-void
.end method

.method public sendMsgArg1(II)V
    .locals 2
    .param p1, "Msg"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 728
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 729
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 730
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 731
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    invoke-virtual {v1, v0}, Lcom/android/server/display/ColorBalanceService$CMH;->sendMessage(Landroid/os/Message;)Z

    .line 727
    :cond_0
    return-void
.end method

.method public sendMsgWithValue(II)V
    .locals 4
    .param p1, "Msg"    # I
    .param p2, "value"    # I

    .prologue
    .line 718
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 719
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 720
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 721
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 722
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 723
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    if-eqz v2, :cond_0

    .line 724
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/server/display/ColorBalanceService$CMH;->removeMessages(I)V

    .line 725
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/display/ColorBalanceService$CMH;

    invoke-virtual {v2, v1}, Lcom/android/server/display/ColorBalanceService$CMH;->sendMessage(Landroid/os/Message;)Z

    .line 717
    return-void
.end method
