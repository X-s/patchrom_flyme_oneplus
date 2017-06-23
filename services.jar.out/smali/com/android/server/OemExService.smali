.class public final Lcom/android/server/OemExService;
.super Lcom/oem/os/IOemExService$Stub;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemExService$OemUEventObserver;,
        Lcom/android/server/OemExService$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static final ACTION_BACK_COVER:Ljava/lang/String; = "com.oem.intent.action.THREE_BACK_COVER"

.field private static final ACTION_BLACK_MODE_INIT:Ljava/lang/String; = "android.settings.OEM_BLACK_MODE.init"

.field private static final ACTION_OXYGEN_DARK_MODE_INIT:Ljava/lang/String; = "com.oneplus.oxygen.changetheme.init"

.field static final DEBUG:Z = true

.field static final DEBUG_OEM_OBSERVER:Z = true

.field static final DEBUG_OEM_ZENMODE:Z = true

.field public static DEBUG_ONEPLUS:Z = false

.field private static final IN_APP_INSTALLED:Ljava/lang/String; = "in_app_installed"

.field private static final MSG_DELAY_COVER:I = 0x2

.field private static final MSG_INSTALL_COMPLETE:I = 0x4

.field private static final MSG_SYSTEM_READY:I = 0x1

.field private static final MSG_ZENMODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OemExService"

.field private static final UDEV_NAME_BACKCOVER:Ljava/lang/String; = "switch-theme"

.field private static final UDEV_NAME_ZENMODE:Ljava/lang/String; = "tri-state-key"

.field private static final ZENMODE_IMPORTANT_INTERRUPTIONS:I = 0x2

.field private static final ZENMODE_NO_INTERRUPTIONS:I = 0x1

.field private static final ZENMODE_OFF:I = 0x3

.field private static mPackageInstallState:I

.field private static mPackageVerifierEnable:I

.field private static sBackcoverState:I

.field private static sZenModeState:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Lcom/android/server/OemExService$OemUEventObserver;

.field private volatile mSystemReady:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    .line 106
    sput v1, Lcom/android/server/OemExService;->sBackcoverState:I

    .line 107
    sput v1, Lcom/android/server/OemExService;->sZenModeState:I

    .line 108
    sput v1, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    .line 109
    sput v1, Lcom/android/server/OemExService;->mPackageInstallState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .prologue
    const/4 v4, 0x1

    .line 221
    invoke-direct {p0}, Lcom/oem/os/IOemExService$Stub;-><init>()V

    .line 95
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/OemExService;->mLock:Ljava/lang/Object;

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/OemExService;->mSystemReady:Z

    .line 116
    new-instance v1, Lcom/android/server/OemExService$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/OemExService$1;-><init>(Lcom/android/server/OemExService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    .line 222
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 223
    .local v0, "pm":Landroid/os/PowerManager;
    iput-object p1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    .line 224
    const-string v1, "OemExService"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 225
    new-instance v1, Lcom/android/server/OemExService$OemUEventObserver;

    invoke-direct {v1, p0}, Lcom/android/server/OemExService$OemUEventObserver;-><init>(Lcom/android/server/OemExService;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mObserver:Lcom/android/server/OemExService$OemUEventObserver;

    .line 226
    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/server/OemExService;->mVibrator:Landroid/os/Vibrator;

    .line 227
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OemExService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/OemExService;->onSystemReady()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/OemExService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/OemExService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/OemExService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/OemExService;->installAPKs()V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/server/OemExService;->sBackcoverState:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 64
    sput p0, Lcom/android/server/OemExService;->sBackcoverState:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/OemExService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemExService;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->sendBroadcastForChangeTheme(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/OemExService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    return v0
.end method

.method static synthetic access$510()I
    .locals 2

    .prologue
    .line 64
    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/android/server/OemExService;->mPackageInstallState:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/OemExService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/OemExService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/OemExService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/server/OemExService;->sZenModeState:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 64
    sput p0, Lcom/android/server/OemExService;->sZenModeState:I

    return p0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 564
    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 566
    .local v1, "nm":Landroid/app/NotificationManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 569
    :goto_0
    return-object v2

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OemExService"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private installAPKs()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 184
    iget-object v6, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 185
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Ljava/io/File;

    const-string v6, "/system/vendor/etc/in_apps"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v3, "path":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 187
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 189
    .local v0, "apkFiles":[Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "package_verifier_enable"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    .line 190
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_6

    .line 191
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 192
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 193
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v8}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 196
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "in_app_installed"

    invoke-static {v6, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, "strAppInstalled":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_0

    const-string v6, "OemExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Settings[IN_APP_INSTALLED] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    sget-boolean v6, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_1

    const-string v9, "OemExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "] = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_1
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1
    if-eqz v5, :cond_2

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_2
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 203
    iget-object v6, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "package_verifier_enable"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    sget v6, Lcom/android/server/OemExService;->mPackageInstallState:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/server/OemExService;->mPackageInstallState:I

    .line 206
    sget-boolean v6, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_3

    const-string v6, "OemExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start install: mPackageInstallState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/OemExService;->mPackageInstallState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v9, v0, v1

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v9, Lcom/android/server/OemExService$PackageInstallObserver;

    invoke-direct {v9, p0}, Lcom/android/server/OemExService$PackageInstallObserver;-><init>(Lcom/android/server/OemExService;)V

    const/16 v10, 0x102

    iget-object v11, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6, v9, v10, v11}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 190
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "strAppInstalled":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v5    # "strAppInstalled":Ljava/lang/String;
    :cond_5
    move v6, v8

    .line 200
    goto :goto_1

    .line 218
    .end local v0    # "apkFiles":[Ljava/io/File;
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "strAppInstalled":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private onSystemReady()V
    .locals 4

    .prologue
    .line 244
    const-string v1, "OemExService"

    const-string v2, "systemReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/OemExService;->mSystemReady:Z

    .line 247
    iget-object v1, p0, Lcom/android/server/OemExService;->mObserver:Lcom/android/server/OemExService$OemUEventObserver;

    invoke-virtual {v1}, Lcom/android/server/OemExService$OemUEventObserver;->init()V

    .line 251
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    new-instance v0, Lcom/android/server/OemPowerUI;

    invoke-direct {v0}, Lcom/android/server/OemPowerUI;-><init>()V

    .line 253
    .local v0, "oemPowerUI":Lcom/android/server/OemPowerUI;
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/OemPowerUI;->start(Landroid/content/Context;)V

    .line 256
    invoke-direct {p0}, Lcom/android/server/OemExService;->sendBroadcastForChangeBlackMode()V

    .line 259
    .end local v0    # "oemPowerUI":Lcom/android/server/OemPowerUI;
    :cond_0
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget v2, Lcom/android/server/OemExService;->sZenModeState:I

    if-eq v1, v2, :cond_1

    .line 263
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    sget v3, Lcom/android/server/OemExService;->sZenModeState:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    :cond_1
    invoke-direct {p0}, Lcom/android/server/OemExService;->sendBroadcastForChangeDarkMode()V

    .line 268
    sget v1, Lcom/android/server/OemExService;->sZenModeState:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/OemExService;->sendBroadcastForZenModeChanged(IZ)V

    .line 271
    :cond_2
    return-void
.end method

.method private sendBroadcastForChangeBlackMode()V
    .locals 2

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.OEM_BLACK_MODE.init"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "blackModeIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 283
    return-void
.end method

.method private sendBroadcastForChangeDarkMode()V
    .locals 2

    .prologue
    .line 287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.oxygen.changetheme.init"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "darkModeIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 289
    return-void
.end method

.method private sendBroadcastForChangeTheme(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.intent.action.THREE_BACK_COVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "backCover":Landroid/content/Intent;
    const-string v1, "switch_state"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 277
    return-void
.end method

.method private sendBroadcastForZenModeChanged(IZ)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "first"    # Z

    .prologue
    .line 293
    if-eqz p2, :cond_0

    .line 294
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.intent.action.THREE_KEY_MODE_BOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "intentZenMode":Landroid/content/Intent;
    :goto_0
    const-string v1, "switch_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 300
    return-void

    .line 296
    .end local v0    # "intentZenMode":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intentZenMode":Landroid/content/Intent;
    goto :goto_0
.end method

.method private native setLCDGammaData(I)V
.end method

.method private native setLaserCrossTalk(I)V
.end method

.method private native setLaserOffset(I)V
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 4
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 553
    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 556
    .local v1, "nm":Landroid/app/NotificationManager;
    :try_start_0
    const-string v2, "zenmode key"

    invoke-virtual {v1, p1, v2}, Landroid/app/NotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 559
    :goto_0
    return v2

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OemExService"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public native getRootStatus()Z
.end method

.method handleZenModeChanged(II)V
    .locals 8
    .param p1, "newState"    # I
    .param p2, "oldState"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 472
    const-string v1, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleZenModeChanged: newState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    packed-switch p1, :pswitch_data_0

    .line 496
    :cond_0
    :goto_0
    invoke-static {}, Landroid/util/OpFeatures;->isH2()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 499
    invoke-direct {p0}, Lcom/android/server/OemExService;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 500
    .local v0, "configZenMode":Landroid/service/notification/ZenModeConfig;
    iput-boolean v4, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 501
    iput-boolean v4, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 502
    iput-boolean v4, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 504
    packed-switch p1, :pswitch_data_1

    .line 527
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/OemExService;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 545
    .end local v0    # "configZenMode":Landroid/service/notification/ZenModeConfig;
    :goto_2
    invoke-static {}, Landroid/util/OpFeatures;->isO2()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_3

    .line 546
    :cond_1
    invoke-direct {p0, p1, v6}, Lcom/android/server/OemExService;->sendBroadcastForZenModeChanged(IZ)V

    .line 550
    :goto_3
    return-void

    .line 481
    :pswitch_0
    if-eqz p2, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/server/OemExService;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 487
    :pswitch_1
    if-eqz p2, :cond_0

    .line 488
    iget-object v1, p0, Lcom/android/server/OemExService;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 506
    .restart local v0    # "configZenMode":Landroid/service/notification/ZenModeConfig;
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 508
    iput v4, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 509
    iput v4, v0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    goto :goto_1

    .line 512
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 514
    iput v5, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 515
    iput v5, v0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    goto :goto_1

    .line 518
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    invoke-static {v1, v2, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 520
    iput v6, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 521
    iput v6, v0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    goto :goto_1

    .line 529
    .end local v0    # "configZenMode":Landroid/service/notification/ZenModeConfig;
    :cond_2
    packed-switch p1, :pswitch_data_2

    goto :goto_2

    .line 531
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 535
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 539
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    invoke-static {v1, v2, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 548
    :cond_3
    invoke-direct {p0, p1, v4}, Lcom/android/server/OemExService;->sendBroadcastForZenModeChanged(IZ)V

    goto :goto_3

    .line 478
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 504
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 529
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public pauseExInputEvent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 596
    return-void
.end method

.method public registerInputEvent(Lcom/oem/os/IOemExInputCallBack;I)Z
    .locals 1
    .param p1, "callBackAdd"    # Lcom/oem/os/IOemExInputCallBack;
    .param p2, "keycode"    # I

    .prologue
    .line 589
    const/4 v0, 0x1

    return v0
.end method

.method public resumeExInputEvent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 599
    return-void
.end method

.method public setGammaData(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLCDGammaData(I)V

    .line 627
    return-void
.end method

.method public setHomeUpLock()Z
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x1

    return v0
.end method

.method public setInteractive(ZJ)Z
    .locals 1
    .param p1, "interactive"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 610
    const/4 v0, 0x1

    return v0
.end method

.method public setKeyMode(I)Z
    .locals 1
    .param p1, "keyMode"    # I

    .prologue
    .line 618
    const/4 v0, 0x1

    return v0
.end method

.method public setLaserSensorCrossTalk(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLaserCrossTalk(I)V

    .line 635
    return-void
.end method

.method public setLaserSensorOffset(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLaserOffset(I)V

    .line 631
    return-void
.end method

.method public setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 614
    const/4 v0, 0x1

    return v0
.end method

.method public startApkInstall()V
    .locals 2

    .prologue
    .line 574
    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    if-nez v0, :cond_0

    .line 575
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/OemExService$2;

    invoke-direct {v1, p0}, Lcom/android/server/OemExService$2;-><init>(Lcom/android/server/OemExService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 586
    :cond_0
    return-void
.end method

.method public startUevent(Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)Z
    .locals 1
    .param p1, "patch"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oem/os/IOemUeventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 602
    const/4 v0, 0x1

    return v0
.end method

.method public stopUevent(Lcom/oem/os/IOemUeventCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/oem/os/IOemUeventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 606
    const/4 v0, 0x1

    return v0
.end method

.method public systemRunning()V
    .locals 7

    .prologue
    .line 230
    iget-object v2, p0, Lcom/android/server/OemExService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 236
    :cond_0
    const-string v1, "oem_ex_service_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 239
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 240
    monitor-exit v2

    .line 241
    return-void

    .line 240
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterInputEvent(Lcom/oem/os/IOemExInputCallBack;)V
    .locals 0
    .param p1, "callBackRemove"    # Lcom/oem/os/IOemExInputCallBack;

    .prologue
    .line 593
    return-void
.end method
