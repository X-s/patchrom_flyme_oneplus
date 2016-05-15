.class public final Lcom/android/server/OemExService;
.super Lcom/oem/os/IOemExService$Stub;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemExService$OemHander;,
        Lcom/android/server/OemExService$CoverObserver;,
        Lcom/android/server/OemExService$OemExInputCallBack;,
        Lcom/android/server/OemExService$OemExInputEventReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_BACK_COVER:Ljava/lang/String; = "com.oem.intent.action.THREE_BACK_COVER"

.field private static final ACTION_THREE_KEY:Ljava/lang/String; = "com.oem.intent.action.THREE_KEY_MODE"

.field private static final ACTION_THREE_KEY_BOOT:Ljava/lang/String; = "com.oem.intent.action.THREE_KEY_MODE_BOOT"

.field static final DEBUG:Z = false

.field private static final EX_CHANNEL_NAME:Ljava/lang/String; = "OemExInputReceiver"

.field private static final TAG:Ljava/lang/String; = "OemExService"

.field public static mCurrentThreeKeyState:Ljava/lang/String;

.field public static switch_state:Ljava/lang/String;


# instance fields
.field private mBackCoverKeyReceiver:Lcom/oem/os/IOemUeventCallback$Stub;

.field mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mCoverObserver:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/OemExService$CoverObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mDeviceKey:Lcom/android/server/DeviceKeyHandler;

.field mExInputChannel:Landroid/view/InputChannel;

.field mExInputEventReceiver:Lcom/android/server/OemExService$OemExInputEventReceiver;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mInputCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/OemExService$OemExInputCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mInputManager:Lcom/android/server/input/InputManagerService;

.field private mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private mIsPaused:Z

.field private mOemHander:Landroid/os/Handler;

.field private mPower:Lcom/android/server/power/PowerManagerService;

.field private mSystemComplete:Z

.field private mThreeKeyReceiver:Lcom/oem/os/IOemUeventCallback$Stub;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private final motionKeyCode:I

.field vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-string v0, ""

    sput-object v0, Lcom/android/server/OemExService;->mCurrentThreeKeyState:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/power/PowerManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "inputManager"    # Lcom/android/server/input/InputManagerService;
    .param p4, "power"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Lcom/oem/os/IOemExService$Stub;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/android/server/OemExService;->mExInputChannel:Landroid/view/InputChannel;

    .line 77
    iput-object v0, p0, Lcom/android/server/OemExService;->mExInputEventReceiver:Lcom/android/server/OemExService$OemExInputEventReceiver;

    .line 78
    iput-object v0, p0, Lcom/android/server/OemExService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    .line 84
    iput-boolean v1, p0, Lcom/android/server/OemExService;->mIsPaused:Z

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/OemExService;->motionKeyCode:I

    .line 108
    iput-boolean v1, p0, Lcom/android/server/OemExService;->mSystemComplete:Z

    .line 162
    new-instance v0, Lcom/android/server/OemExService$1;

    invoke-direct {v0, p0}, Lcom/android/server/OemExService$1;-><init>(Lcom/android/server/OemExService;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 524
    new-instance v0, Lcom/android/server/OemExService$2;

    invoke-direct {v0, p0}, Lcom/android/server/OemExService$2;-><init>(Lcom/android/server/OemExService;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mThreeKeyReceiver:Lcom/oem/os/IOemUeventCallback$Stub;

    .line 627
    new-instance v0, Lcom/android/server/OemExService$3;

    invoke-direct {v0, p0}, Lcom/android/server/OemExService$3;-><init>(Lcom/android/server/OemExService;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mBackCoverKeyReceiver:Lcom/oem/os/IOemUeventCallback$Stub;

    .line 112
    iput-object p1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/server/OemExService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 114
    iput-object p3, p0, Lcom/android/server/OemExService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 115
    iput-object p4, p0, Lcom/android/server/OemExService;->mPower:Lcom/android/server/power/PowerManagerService;

    .line 116
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OemExService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 117
    iget-object v0, p0, Lcom/android/server/OemExService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 119
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    iput-object v0, p0, Lcom/android/server/OemExService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 121
    new-instance v0, Lcom/android/server/OemExService$OemHander;

    iget-object v1, p0, Lcom/android/server/OemExService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/OemExService$OemHander;-><init>(Lcom/android/server/OemExService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mOemHander:Landroid/os/Handler;

    .line 123
    iget-object v0, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/OemExService;->vibrator:Landroid/os/Vibrator;

    .line 124
    return-void
.end method

.method private CoverObservse_init()V
    .locals 12

    .prologue
    .line 175
    const/16 v9, 0x400

    :try_start_0
    new-array v1, v9, [C

    .line 179
    .local v1, "buffer":[C
    new-instance v5, Ljava/io/FileReader;

    const-string v9, "/sys/class/switch/tri-state-key/state"

    invoke-direct {v5, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 180
    .local v5, "file":Ljava/io/FileReader;
    const/4 v9, 0x0

    const/16 v10, 0x400

    invoke-virtual {v5, v1, v9, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 181
    .local v6, "len":I
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 182
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "curState":Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.oem.intent.action.THREE_KEY_MODE_BOOT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v8, "threeKey":Landroid/content/Intent;
    const-string v9, "switch_state"

    invoke-virtual {v8, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object v9, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v8, v10}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 186
    const-string v9, "OemExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "oemEvent message switch_state  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v9, "3"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/android/server/OemExService;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v7

    .line 191
    .local v7, "mConfig":Landroid/service/notification/ZenModeConfig;
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 192
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 193
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 194
    const/4 v9, 0x0

    iput v9, v7, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 195
    invoke-direct {p0, v7}, Lcom/android/server/OemExService;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 196
    iget-object v9, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "zen_mode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    :goto_0
    const/16 v9, 0x400

    new-array v2, v9, [C

    .line 223
    .local v2, "buffer2":[C
    new-instance v5, Ljava/io/FileReader;

    .end local v5    # "file":Ljava/io/FileReader;
    const-string v9, "/sys/class/switch/switch-theme/state"

    invoke-direct {v5, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 224
    .restart local v5    # "file":Ljava/io/FileReader;
    const/4 v9, 0x0

    const/16 v10, 0x400

    invoke-virtual {v5, v2, v9, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 225
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 226
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v2, v10, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.oem.intent.action.THREE_BACK_COVER"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "back_cover":Landroid/content/Intent;
    const-string v9, "switch_state"

    invoke-virtual {v0, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v9, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 234
    .end local v0    # "back_cover":Landroid/content/Intent;
    .end local v1    # "buffer":[C
    .end local v2    # "buffer2":[C
    .end local v3    # "curState":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    .end local v7    # "mConfig":Landroid/service/notification/ZenModeConfig;
    .end local v8    # "threeKey":Landroid/content/Intent;
    :goto_1
    return-void

    .line 198
    .restart local v1    # "buffer":[C
    .restart local v3    # "curState":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "len":I
    .restart local v8    # "threeKey":Landroid/content/Intent;
    :cond_0
    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/android/server/OemExService;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v7

    .line 202
    .restart local v7    # "mConfig":Landroid/service/notification/ZenModeConfig;
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 203
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 204
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 205
    const/4 v9, 0x1

    iput v9, v7, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 206
    invoke-direct {p0, v7}, Lcom/android/server/OemExService;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 207
    iget-object v9, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "zen_mode"

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    .end local v1    # "buffer":[C
    .end local v3    # "curState":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    .end local v7    # "mConfig":Landroid/service/notification/ZenModeConfig;
    .end local v8    # "threeKey":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 232
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 212
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "buffer":[C
    .restart local v3    # "curState":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "len":I
    .restart local v8    # "threeKey":Landroid/content/Intent;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/OemExService;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v7

    .line 213
    .restart local v7    # "mConfig":Landroid/service/notification/ZenModeConfig;
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 214
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 215
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 216
    const/4 v9, 0x2

    iput v9, v7, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 217
    invoke-direct {p0, v7}, Lcom/android/server/OemExService;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 218
    iget-object v9, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "zen_mode"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/OemExService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/server/OemExService;->mSystemComplete:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/OemExService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemExService;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/server/OemExService;->mSystemComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/OemExService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/OemExService;->CoverObservse_init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/OemExService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/OemExService;->mOemHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/OemExService;)Landroid/hardware/input/InputManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/OemExService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/OemExService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/server/OemExService;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/OemExService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/OemExService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/OemExService;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->getUeventMessage(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/OemExService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/OemExService;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/OemExService;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/OemExService;Landroid/service/notification/ZenModeConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    return v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 243
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/16 v3, 0x3f5

    if-eq v2, v3, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v1

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "OemExService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUeventMessage(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 610
    .local v3, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 611
    .local v4, "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 612
    .local v2, "length":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 613
    const/16 v5, 0x3d

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 614
    .local v1, "equals":I
    const/16 v5, 0x20

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 615
    .local v0, "at":I
    if-gez v0, :cond_1

    .line 624
    .end local v0    # "at":I
    .end local v1    # "equals":I
    :cond_0
    return-object v3

    .line 617
    .restart local v0    # "at":I
    .restart local v1    # "equals":I
    :cond_1
    if-le v1, v4, :cond_2

    if-ge v1, v0, :cond_2

    .line 619
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    :cond_2
    add-int/lit8 v4, v0, 0x1

    .line 623
    goto :goto_0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 598
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 601
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 604
    :goto_0
    return-object v2

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OemExService"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private native setLCDGammaData(I)V
.end method

.method private native setLaserCrossTalk(I)V
.end method

.method private native setLaserOffset(I)V
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 5
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 585
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 588
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 593
    :goto_0
    return v2

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "OemExService"

    const-string v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableInputReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 327
    const-string v0, "android.permission.BIND_OEMEX_SERVICE"

    const-string v1, "enableInputReceiver()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/server/OemExService;->mExInputEventReceiver:Lcom/android/server/OemExService$OemExInputEventReceiver;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/android/server/OemExService;->mExInputEventReceiver:Lcom/android/server/OemExService$OemExInputEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/OemExService$OemExInputEventReceiver;->dispose()V

    .line 333
    iput-object v2, p0, Lcom/android/server/OemExService;->mExInputEventReceiver:Lcom/android/server/OemExService$OemExInputEventReceiver;

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/android/server/OemExService;->mExInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/android/server/OemExService;->mExInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 338
    iput-object v2, p0, Lcom/android/server/OemExService;->mExInputChannel:Landroid/view/InputChannel;

    .line 340
    :cond_2
    return-void
.end method

.method public enableInputReceiver()V
    .locals 3

    .prologue
    .line 314
    const-string v0, "android.permission.BIND_OEMEX_SERVICE"

    const-string v1, "enableInputReceiver()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/server/OemExService;->mExInputEventReceiver:Lcom/android/server/OemExService$OemExInputEventReceiver;

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/android/server/OemExService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const-string v1, "OemExInputReceiver"

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemExService;->mExInputChannel:Landroid/view/InputChannel;

    .line 321
    new-instance v0, Lcom/android/server/OemExService$OemExInputEventReceiver;

    iget-object v1, p0, Lcom/android/server/OemExService;->mExInputChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Lcom/android/server/OemExService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/OemExService$OemExInputEventReceiver;-><init>(Lcom/android/server/OemExService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mExInputEventReceiver:Lcom/android/server/OemExService$OemExInputEventReceiver;

    .line 324
    :cond_1
    return-void
.end method

.method public pauseExInputEvent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 414
    const-string v0, "android.permission.BIND_OEMEX_SERVICE"

    const-string v1, "enableInputReceiver()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemExService;->mIsPaused:Z

    .line 419
    return-void
.end method

.method public registerInputEvent(Lcom/oem/os/IOemExInputCallBack;I)Z
    .locals 9
    .param p1, "callBackAdd"    # Lcom/oem/os/IOemExInputCallBack;
    .param p2, "keycode"    # I

    .prologue
    const/4 v5, 0x0

    .line 261
    const-string v6, "android.permission.BIND_OEMEX_SERVICE"

    const-string v7, "registerInputEvent()"

    invoke-direct {p0, v6, v7}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 263
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 266
    :cond_0
    iget-object v6, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    monitor-enter v6

    .line 267
    :try_start_0
    iget-object v7, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 268
    .local v4, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 269
    iget-object v7, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OemExService$OemExInputCallBack;

    .line 270
    .local v0, "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    # getter for: Lcom/android/server/OemExService$OemExInputCallBack;->mCallBack:Lcom/oem/os/IOemExInputCallBack;
    invoke-static {v0}, Lcom/android/server/OemExService$OemExInputCallBack;->access$200(Lcom/android/server/OemExService$OemExInputCallBack;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v7

    invoke-interface {v7}, Lcom/oem/os/IOemExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {p1}, Lcom/oem/os/IOemExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-ne v7, v8, :cond_1

    .line 271
    monitor-exit v6

    .line 288
    .end local v0    # "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    :goto_1
    return v5

    .line 268
    .restart local v0    # "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    :cond_2
    new-instance v1, Lcom/android/server/OemExService$OemExInputCallBack;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/OemExService$OemExInputCallBack;-><init>(Lcom/android/server/OemExService;Lcom/oem/os/IOemExInputCallBack;I)V

    .line 276
    .local v1, "callNewBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    iget-object v7, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :try_start_1
    invoke-interface {p1}, Lcom/oem/os/IOemExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v1, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :try_start_2
    iget-object v5, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 285
    invoke-virtual {p0}, Lcom/android/server/OemExService;->enableInputReceiver()V

    .line 287
    :cond_3
    monitor-exit v6

    .line 288
    const/4 v5, 0x1

    goto :goto_1

    .line 279
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Landroid/os/RemoteException;
    monitor-exit v6

    goto :goto_1

    .line 287
    .end local v1    # "callNewBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method public resumeExInputEvent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 424
    const-string v0, "android.permission.BIND_OEMEX_SERVICE"

    const-string v1, "enableInputReceiver()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemExService;->mIsPaused:Z

    .line 429
    return-void
.end method

.method public setGammaData(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 728
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLCDGammaData(I)V

    .line 729
    return-void
.end method

.method public setHomeUpLock()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 718
    const-string v0, "android.permission.BIND_OEMEX_SERVICE"

    const-string v1, "setHomeUpLock()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_0
    sput v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLockHomeUp:I

    .line 724
    return v2
.end method

.method public setInteractive(ZJ)Z
    .locals 4
    .param p1, "interactive"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    const/4 v2, 0x1

    .line 679
    const-string v0, "android.permission.BIND_OEMEX_SERVICE"

    const-string v1, "setInteractive()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    if-nez p1, :cond_1

    .line 684
    iget-object v0, p0, Lcom/android/server/OemExService;->mOemHander:Landroid/os/Handler;

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/android/server/OemExService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerInternal;->setInteractive(Z)V

    .line 687
    return v2
.end method

.method public setKeyMode(I)Z
    .locals 4
    .param p1, "keyMode"    # I

    .prologue
    .line 702
    const-string v2, "android.permission.BIND_OEMEX_SERVICE"

    const-string v3, "setKeyMode()"

    invoke-direct {p0, v2, v3}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 704
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 707
    :cond_0
    sput p1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mCurrentKeyMode:I

    .line 709
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 710
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem.keylock.mode"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 712
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    const/4 v2, 0x1

    return v2
.end method

.method public setLaserSensorCrossTalk(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLaserCrossTalk(I)V

    .line 737
    return-void
.end method

.method public setLaserSensorOffset(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 732
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLaserOffset(I)V

    .line 733
    return-void
.end method

.method public setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 692
    const-string v0, "android.permission.BIND_OEMEX_SERVICE"

    const-string v1, "setInteractive()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const/4 v0, 0x1

    return v0
.end method

.method public startUevent(Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)Z
    .locals 10
    .param p1, "patch"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oem/os/IOemUeventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 477
    const-string v7, "android.permission.BIND_OEMEX_SERVICE"

    const-string v8, "enableInputReceiver()"

    invoke-direct {p0, v7, v8}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 479
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 481
    :cond_0
    iget-object v7, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    monitor-enter v7

    .line 483
    :try_start_0
    iget-object v8, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 484
    .local v4, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 485
    iget-object v8, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OemExService$CoverObserver;

    .line 486
    .local v0, "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    iget-object v8, v0, Lcom/android/server/OemExService$CoverObserver;->mCallback:Lcom/oem/os/IOemUeventCallback;

    invoke-interface {v8}, Lcom/oem/os/IOemUeventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {p2}, Lcom/oem/os/IOemUeventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    if-ne v8, v9, :cond_1

    .line 487
    monitor-exit v7

    .line 500
    .end local v0    # "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    :goto_1
    return v5

    .line 484
    .restart local v0    # "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 491
    .end local v0    # "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    :cond_2
    new-instance v1, Lcom/android/server/OemExService$CoverObserver;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/OemExService$CoverObserver;-><init>(Lcom/android/server/OemExService;Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)V

    .line 492
    .local v1, "callNewBackInfo":Lcom/android/server/OemExService$CoverObserver;
    iget-object v8, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :try_start_1
    invoke-interface {p2}, Lcom/oem/os/IOemUeventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v1, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 495
    invoke-virtual {v1}, Lcom/android/server/OemExService$CoverObserver;->start()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    :try_start_2
    monitor-exit v7

    goto :goto_1

    .end local v1    # "callNewBackInfo":Lcom/android/server/OemExService$CoverObserver;
    .end local v3    # "i":I
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 496
    .restart local v1    # "callNewBackInfo":Lcom/android/server/OemExService$CoverObserver;
    .restart local v3    # "i":I
    .restart local v4    # "size":I
    :catch_0
    move-exception v2

    .line 497
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v5, v6

    goto :goto_1
.end method

.method public stopUevent(Lcom/oem/os/IOemUeventCallback;)Z
    .locals 6
    .param p1, "callback"    # Lcom/oem/os/IOemUeventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 505
    const-string v3, "android.permission.BIND_OEMEX_SERVICE"

    const-string v4, "enableInputReceiver()"

    invoke-direct {p0, v3, v4}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 507
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 509
    :cond_0
    iget-object v4, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    monitor-enter v4

    .line 510
    :try_start_0
    iget-object v3, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 511
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 512
    iget-object v3, p0, Lcom/android/server/OemExService;->mCoverObserver:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OemExService$CoverObserver;

    .line 513
    .local v0, "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    iget-object v3, v0, Lcom/android/server/OemExService$CoverObserver;->mCallback:Lcom/oem/os/IOemUeventCallback;

    invoke-interface {v3}, Lcom/oem/os/IOemUeventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/oem/os/IOemUeventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_2

    .line 514
    invoke-virtual {v0}, Lcom/android/server/OemExService$CoverObserver;->stop()V

    .line 515
    iget-object v3, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 516
    invoke-interface {p1}, Lcom/oem/os/IOemUeventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 520
    .end local v0    # "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    :cond_1
    monitor-exit v4

    .line 521
    const/4 v3, 0x1

    return v3

    .line 511
    .restart local v0    # "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    .end local v0    # "callBackInfo":Lcom/android/server/OemExService$CoverObserver;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 127
    const-string v3, "OemExService"

    const-string v4, "systemReady "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/android/server/OemExService;->enableInputReceiver()V

    .line 132
    new-instance v1, Lcom/android/server/OemPowerUI;

    invoke-direct {v1}, Lcom/android/server/OemPowerUI;-><init>()V

    .line 133
    .local v1, "oemPowerUI":Lcom/android/server/OemPowerUI;
    iget-object v3, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/server/OemPowerUI;->start(Landroid/content/Context;)V

    .line 138
    new-instance v2, Lcom/android/server/OemExService$CoverObserver;

    const-string v3, "/devices/virtual/switch/tri-state-key"

    iget-object v4, p0, Lcom/android/server/OemExService;->mThreeKeyReceiver:Lcom/oem/os/IOemUeventCallback$Stub;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/OemExService$CoverObserver;-><init>(Lcom/android/server/OemExService;Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)V

    .line 140
    .local v2, "threeObserver":Lcom/android/server/OemExService$CoverObserver;
    invoke-virtual {v2}, Lcom/android/server/OemExService$CoverObserver;->start()V

    .line 144
    new-instance v0, Lcom/android/server/OemExService$CoverObserver;

    const-string v3, "/devices/virtual/switch/switch-theme"

    iget-object v4, p0, Lcom/android/server/OemExService;->mBackCoverKeyReceiver:Lcom/oem/os/IOemUeventCallback$Stub;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/OemExService$CoverObserver;-><init>(Lcom/android/server/OemExService;Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)V

    .line 147
    .local v0, "mBackCoverObserver":Lcom/android/server/OemExService$CoverObserver;
    invoke-virtual {v0}, Lcom/android/server/OemExService$CoverObserver;->start()V

    .line 152
    iget-object v3, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem.keylock.mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    new-instance v3, Lcom/android/server/DeviceKeyHandler;

    iget-object v4, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/DeviceKeyHandler;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/OemExService;->mDeviceKey:Lcom/android/server/DeviceKeyHandler;

    .line 155
    iget-object v3, p0, Lcom/android/server/OemExService;->mDeviceKey:Lcom/android/server/DeviceKeyHandler;

    invoke-virtual {v3}, Lcom/android/server/DeviceKeyHandler;->SystemReady()V

    .line 157
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/OemExService;->mSystemComplete:Z

    .line 158
    invoke-direct {p0}, Lcom/android/server/OemExService;->CoverObservse_init()V

    .line 160
    return-void
.end method

.method public unregisterInputEvent(Lcom/oem/os/IOemExInputCallBack;)V
    .locals 6
    .param p1, "callBackRemove"    # Lcom/oem/os/IOemExInputCallBack;

    .prologue
    .line 292
    const-string v3, "android.permission.BIND_OEMEX_SERVICE"

    const-string v4, "unregisterInputEvent()"

    invoke-direct {p0, v3, v4}, Lcom/android/server/OemExService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 294
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires BIND_OEMEX_SERVICE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 296
    :cond_0
    iget-object v4, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 297
    :try_start_0
    iget-object v3, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 298
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 299
    iget-object v3, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OemExService$OemExInputCallBack;

    .line 300
    .local v0, "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    # getter for: Lcom/android/server/OemExService$OemExInputCallBack;->mCallBack:Lcom/oem/os/IOemExInputCallBack;
    invoke-static {v0}, Lcom/android/server/OemExService$OemExInputCallBack;->access$200(Lcom/android/server/OemExService$OemExInputCallBack;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v3

    invoke-interface {v3}, Lcom/oem/os/IOemExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/oem/os/IOemExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_3

    .line 301
    iget-object v3, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 302
    invoke-interface {p1}, Lcom/oem/os/IOemExInputCallBack;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 306
    .end local v0    # "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    :cond_1
    iget-object v3, p0, Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/android/server/OemExService;->disableInputReceiver()V

    .line 310
    :cond_2
    monitor-exit v4

    .line 311
    return-void

    .line 298
    .restart local v0    # "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v0    # "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
