.class public final Lcom/android/server/OemExService;
.super Lcom/oem/os/IOemExService$Stub;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemExService$1;,
        Lcom/android/server/OemExService$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static final ACTION_BACK_COVER:Ljava/lang/String; = "com.oem.intent.action.THREE_BACK_COVER"

.field private static final ACTION_BLACK_MODE_INIT:Ljava/lang/String; = "android.settings.OEM_THEME_MODE.init"

.field private static final ACTION_OXYGEN_DARK_MODE_INIT:Ljava/lang/String; = "com.oneplus.oxygen.changetheme.init"

.field private static final CACHE_ISUB_SOURCES:Ljava/lang/String; = "/cache/isub"

.field static final DEBUG:Z = true

.field static final DEBUG_OEM_OBSERVER:Z = true

.field public static DEBUG_ONEPLUS:Z = false

.field private static final IN_APP_INSTALLED:Ljava/lang/String; = "in_app_installed"

.field private static final KERNEL_WAKEUP_SOURCES:Ljava/lang/String; = "/d/wakeup_sources"

.field private static final MSG_DELAY_COVER:I = 0x2

.field private static final MSG_INSTALL_COMPLETE:I = 0x3

.field private static final MSG_SYSTEM_READY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OemExService"

.field private static final UDEV_NAME_BACKCOVER:Ljava/lang/String; = "switch-theme"

.field private static mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private static mDropbox:Landroid/os/DropBoxManager;

.field private static mPackageInstallState:I

.field private static mPackageVerifierEnable:I

.field private static sBackcoverState:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mSceneModeController:Lcom/android/server/OemSceneModeController;

.field private volatile mSystemReady:Z

.field private mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

.field private mThreeKeyVibratorPolicy:Lcom/oem/os/IThreeKeyPolicy;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private threekey:Lcom/oneplus/threekey/ThreeKey;

.field private threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;


# direct methods
.method static synthetic -get0(Lcom/android/server/OemExService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/OemExService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    return v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/android/server/OemExService;->mPackageInstallState:I

    return p0
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/android/server/OemExService;->sBackcoverState:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/OemExService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemExService;->installAPKs()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/OemExService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemExService;->onSystemReady()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/OemExService;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->sendBroadcastForChangeTheme(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    .line 112
    sput v1, Lcom/android/server/OemExService;->sBackcoverState:I

    .line 142
    sput v1, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    .line 144
    sput v1, Lcom/android/server/OemExService;->mPackageInstallState:I

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 259
    invoke-direct {p0}, Lcom/oem/os/IOemExService$Stub;-><init>()V

    .line 106
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/OemExService;->mLock:Ljava/lang/Object;

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/OemExService;->mSystemReady:Z

    .line 150
    new-instance v1, Lcom/android/server/OemExService$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/android/server/OemExService$1;-><init>(Lcom/android/server/OemExService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    .line 260
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 261
    .local v0, "pm":Landroid/os/PowerManager;
    iput-object p1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    .line 262
    const-string/jumbo v1, "OemExService"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 265
    sput-object v4, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 266
    const-string/jumbo v1, "dropbox"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    sput-object v1, Lcom/android/server/OemExService;->mDropbox:Landroid/os/DropBoxManager;

    .line 259
    return-void
.end method

.method private native getPhoneHistoryRecordNative(I)I
.end method

.method private installAPKs()V
    .locals 14

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 218
    iget-object v6, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 220
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "in_app_installed"

    invoke-static {v6, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "strAppInstalled":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "OemExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "installAPKs: Settings[IN_APP_INSTALLED] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v6, "/system/vendor/etc/in_apps"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v3, "path":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 227
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 229
    .local v1, "apkFiles":[Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "package_verifier_enable"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    .line 232
    array-length v10, v1

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_6

    aget-object v0, v1, v9

    .line 233
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 235
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v8}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 238
    .local v2, "info":Landroid/content/pm/PackageInfo;
    sget-boolean v6, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_1

    const-string/jumbo v11, "OemExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "["

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v12, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v12, "] = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_1
    if-eqz v5, :cond_4

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 232
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_2
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_0

    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    move v6, v8

    .line 238
    goto :goto_1

    .line 239
    :cond_4
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 242
    iget-object v6, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v11, "package_verifier_enable"

    invoke-static {v6, v11, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    sget v6, Lcom/android/server/OemExService;->mPackageInstallState:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/server/OemExService;->mPackageInstallState:I

    .line 244
    sget-boolean v6, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_5

    const-string/jumbo v6, "OemExService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "start install: mPackageInstallState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/server/OemExService;->mPackageInstallState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "file://"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 248
    new-instance v11, Lcom/android/server/OemExService$PackageInstallObserver;

    invoke-direct {v11, p0}, Lcom/android/server/OemExService$PackageInstallObserver;-><init>(Lcom/android/server/OemExService;)V

    .line 250
    iget-object v12, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 249
    const/16 v13, 0x102

    .line 247
    invoke-virtual {v4, v6, v11, v13, v12}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto :goto_2

    .line 217
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "apkFiles":[Ljava/io/File;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_6
    return-void
.end method

.method private onSystemReady()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 319
    const-string/jumbo v1, "OemExService"

    const-string/jumbo v2, "systemReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iput-boolean v3, p0, Lcom/android/server/OemExService;->mSystemReady:Z

    .line 323
    invoke-direct {p0}, Lcom/android/server/OemExService;->sendBroadcastForChangeTheme()V

    .line 325
    new-instance v1, Lcom/oneplus/threekey/ThreeKeyHw;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKeyHw;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    .line 326
    iget-object v1, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v1}, Lcom/oneplus/threekey/ThreeKeyHw;->isSupportThreeKey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    return-void

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v1}, Lcom/oneplus/threekey/ThreeKeyHw;->init()V

    .line 333
    new-instance v1, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

    .line 334
    new-instance v1, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyVibratorPolicy:Lcom/oem/os/IThreeKeyPolicy;

    .line 337
    :try_start_0
    new-instance v1, Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKey;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    .line 338
    iget-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

    invoke-virtual {v1, v2}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 339
    iget-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->mThreeKeyVibratorPolicy:Lcom/oem/os/IThreeKeyPolicy;

    invoke-virtual {v1, v2}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 340
    iget-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v2}, Lcom/oneplus/threekey/ThreeKeyHw;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/threekey/ThreeKey;->init(I)V
    :try_end_0
    .catch Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    new-array v1, v3, [I

    const/16 v2, 0x19

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 348
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "OemExService"

    const-string/jumbo v2, "[scene] satrtMonitorSceneChanging"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-nez v1, :cond_2

    .line 350
    new-instance v1, Lcom/android/server/OemSceneModeController;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/OemSceneModeController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    .line 352
    :cond_2
    iget-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v1}, Lcom/android/server/OemSceneModeController;->startMonitor()V

    .line 318
    :cond_3
    :goto_1
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
    const-string/jumbo v1, "OemExService"

    const-string/jumbo v2, "device is not support threekey"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iput-object v4, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    goto :goto_0

    .line 354
    .end local v0    # "e":Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
    :cond_4
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "OemExService"

    const-string/jumbo v2, "[scene] Scene mode not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendBroadcastForChangeTheme()V
    .locals 2

    .prologue
    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.OEM_THEME_MODE.init"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, "blackModeIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 368
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 365
    return-void
.end method

.method private sendBroadcastForChangeTheme(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.oem.intent.action.THREE_BACK_COVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, "backCover":Landroid/content/Intent;
    const-string/jumbo v1, "switch_state"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 358
    return-void
.end method

.method private native setLCDGammaData(I)V
.end method

.method private native setLaserCrossTalk(I)V
.end method

.method private native setLaserOffset(I)V
.end method

.method private native setPhoneHistoryRecordNative(II)I
.end method


# virtual methods
.method public addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V
    .locals 2
    .param p1, "policy"    # Lcom/oem/os/IThreeKeyPolicy;

    .prologue
    .line 464
    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[setThreeKeyPolicy]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    invoke-virtual {v0, p1}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 463
    return-void
.end method

.method public disableDefaultThreeKey()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

    invoke-virtual {v0, v1}, Lcom/oneplus/threekey/ThreeKey;->removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 455
    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[disableDefaultThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method

.method public dumpLightBugreport(Ljava/lang/String;)V
    .locals 36
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 491
    new-instance v26, Ljava/lang/StringBuilder;

    const/16 v31, 0x1000

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 492
    .local v26, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v31

    if-nez v31, :cond_5

    const/4 v5, 0x1

    .line 493
    .local v5, "bufferWasEmpty":Z
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 496
    .local v14, "elapsedStartTime":J
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 497
    .local v7, "date":Ljava/util/Date;
    new-instance v27, Ljava/text/SimpleDateFormat;

    const-string/jumbo v31, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 500
    .local v27, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v31, "ro.build.display.id"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 502
    .local v6, "buildId":Ljava/lang/String;
    const-string/jumbo v31, "ro.build.fingerprint"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 505
    .local v18, "fingerprint":Ljava/lang/String;
    const-string/jumbo v31, "ro.build.version.sdk"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 507
    .local v28, "sdkVersion":Ljava/lang/String;
    const-string/jumbo v31, "ro.product.model"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 509
    .local v22, "modelName":Ljava/lang/String;
    const-string/jumbo v31, "persist.sys.timezone"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 512
    .local v30, "timeZone":Ljava/lang/String;
    const-string/jumbo v31, "========================================================\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string/jumbo v31, "== dumpstate: "

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0xa

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 514
    const-string/jumbo v31, "========================================================\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    const-string/jumbo v31, "Build: "

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0xa

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 516
    const-string/jumbo v31, "Build fingerprint: \'"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x27

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0xa

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 517
    const-string/jumbo v31, "DeviceID: null\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const-string/jumbo v31, "[ro.build.version.sdk]: ["

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x5d

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0xa

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    const-string/jumbo v31, "[ro.product.model]: ["

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x5d

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0xa

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    const-string/jumbo v31, "[persist.sys.timezone]: ["

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x5d

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0xa

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 522
    sget-object v31, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    if-eqz v31, :cond_0

    .line 524
    const-string/jumbo v31, "-------------------------------------------------------------------------------\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    sget-object v31, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getPidMap(Ljava/lang/StringBuilder;)V

    .line 528
    const-string/jumbo v31, "-------------------------------------------------------------------------------\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const-string/jumbo v31, "DUMP OF SERVICE batterystats:\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    sget-object v31, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 533
    const-string/jumbo v31, "========================================================\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    const-string/jumbo v31, "== Checkins\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const-string/jumbo v31, "========================================================\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const-string/jumbo v31, "------ CHECKIN BATTERYSTATS (dumpsys -t 30 batterystats -c) ------\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v31, "-c"

    const/16 v32, 0x0

    aput-object v31, v4, v32

    .line 538
    .local v4, "args":[Ljava/lang/String;
    sget-object v31, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityManagerService;->dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 542
    .end local v4    # "args":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v31, "-------------------------------------------------------------------------------\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string/jumbo v31, "DUMP OF SERVICE sensorservice:\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const-string/jumbo v31, "------ KERNEL WAKE SOURCES (/d/wakeup_sources) ------\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    const/16 v24, 0x0

    .line 549
    .local v24, "reader":Ljava/io/BufferedReader;
    const/16 v21, 0x0

    .line 550
    .local v21, "line":Ljava/lang/String;
    :try_start_0
    new-instance v25, Ljava/io/BufferedReader;

    new-instance v31, Ljava/io/FileReader;

    new-instance v32, Ljava/io/File;

    const-string/jumbo v33, "/d/wakeup_sources"

    invoke-direct/range {v32 .. v33}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v31 .. v32}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    .end local v21    # "line":Ljava/lang/String;
    .end local v24    # "reader":Ljava/io/BufferedReader;
    .local v25, "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    .local v21, "line":Ljava/lang/String;
    if-eqz v21, :cond_6

    .line 552
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    const/16 v31, 0xa

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_1

    .line 555
    .end local v21    # "line":Ljava/lang/String;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/io/IOException;
    move-object/from16 v24, v25

    .line 556
    .end local v25    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    const-string/jumbo v31, "OemExService"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "IOException : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 559
    if-eqz v24, :cond_1

    .line 560
    :try_start_3
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 567
    .end local v8    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    const-string/jumbo v31, "\n++++++++++++++++++++++++++++++++\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    const/16 v19, 0x0

    .line 570
    .local v19, "fisub":Ljava/io/File;
    :try_start_4
    const-string/jumbo v31, "isub"

    invoke-static/range {v31 .. v31}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v29

    .line 571
    .local v29, "service":Landroid/os/IBinder;
    if-nez v29, :cond_9

    .line 572
    const-string/jumbo v31, "Can\'t find service to dump: isub\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 596
    .end local v19    # "fisub":Ljava/io/File;
    :goto_4
    if-eqz v24, :cond_2

    .line 597
    :try_start_5
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V

    .line 598
    :cond_2
    if-eqz v19, :cond_3

    .line 599
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 605
    .end local v29    # "service":Landroid/os/IBinder;
    :cond_3
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 606
    .local v10, "elapsedEndTime":J
    sub-long v32, v10, v14

    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x408f400000000000L    # 1000.0

    div-double v12, v32, v34

    .line 607
    .local v12, "elapsedSeconds":D
    const-string/jumbo v31, "--------- "

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "s was the duration of dumpLightBugreport"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    sget-object v31, Lcom/android/server/OemExService;->mDropbox:Landroid/os/DropBoxManager;

    if-eqz v31, :cond_4

    .line 611
    sget-object v31, Lcom/android/server/OemExService;->mDropbox:Landroid/os/DropBoxManager;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_4
    return-void

    .line 492
    .end local v5    # "bufferWasEmpty":Z
    .end local v6    # "buildId":Ljava/lang/String;
    .end local v7    # "date":Ljava/util/Date;
    .end local v10    # "elapsedEndTime":J
    .end local v12    # "elapsedSeconds":D
    .end local v14    # "elapsedStartTime":J
    .end local v18    # "fingerprint":Ljava/lang/String;
    .end local v22    # "modelName":Ljava/lang/String;
    .end local v27    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v28    # "sdkVersion":Ljava/lang/String;
    .end local v30    # "timeZone":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "bufferWasEmpty":Z
    goto/16 :goto_0

    .line 559
    .restart local v6    # "buildId":Ljava/lang/String;
    .restart local v7    # "date":Ljava/util/Date;
    .restart local v14    # "elapsedStartTime":J
    .restart local v18    # "fingerprint":Ljava/lang/String;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v22    # "modelName":Ljava/lang/String;
    .restart local v25    # "reader":Ljava/io/BufferedReader;
    .restart local v27    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v28    # "sdkVersion":Ljava/lang/String;
    .restart local v30    # "timeZone":Ljava/lang/String;
    :cond_6
    if-eqz v25, :cond_7

    .line 560
    :try_start_6
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_7
    :goto_6
    move-object/from16 v24, v25

    .end local v25    # "reader":Ljava/io/BufferedReader;
    .local v24, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 561
    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v25    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v16

    .local v16, "ex":Ljava/io/IOException;
    goto :goto_6

    .end local v16    # "ex":Ljava/io/IOException;
    .end local v21    # "line":Ljava/lang/String;
    .end local v25    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v16

    .restart local v16    # "ex":Ljava/io/IOException;
    goto :goto_3

    .line 557
    .end local v8    # "e":Ljava/io/IOException;
    .end local v16    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v31

    .line 559
    :goto_7
    if-eqz v24, :cond_8

    .line 560
    :try_start_7
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 557
    :cond_8
    :goto_8
    throw v31

    .line 561
    :catch_3
    move-exception v16

    .restart local v16    # "ex":Ljava/io/IOException;
    goto :goto_8

    .line 574
    .end local v16    # "ex":Ljava/io/IOException;
    .restart local v19    # "fisub":Ljava/io/File;
    .restart local v29    # "service":Landroid/os/IBinder;
    :cond_9
    :try_start_8
    const-string/jumbo v31, "DUMP OF SERVICE isub:\n"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    new-instance v23, Ljava/io/FileOutputStream;

    const-string/jumbo v31, "/cache/isub"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 576
    .local v23, "out1":Ljava/io/FileOutputStream;
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v17

    .line 577
    .local v17, "fdout":Ljava/io/FileDescriptor;
    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 579
    const/16 v21, 0x0

    .line 580
    .local v21, "line":Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    const-string/jumbo v31, "/cache/isub"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 581
    .local v20, "fisub":Ljava/io/File;
    :try_start_9
    new-instance v25, Ljava/io/BufferedReader;

    .end local v19    # "fisub":Ljava/io/File;
    new-instance v31, Ljava/io/FileReader;

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 582
    .end local v21    # "line":Ljava/lang/String;
    .restart local v25    # "reader":Ljava/io/BufferedReader;
    :goto_9
    :try_start_a
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    .local v21, "line":Ljava/lang/String;
    if-eqz v21, :cond_e

    .line 584
    const-string/jumbo v31, "0:"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 585
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const/16 v31, 0xa

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_9

    .line 592
    .end local v21    # "line":Ljava/lang/String;
    :catch_4
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v19, v20

    .end local v20    # "fisub":Ljava/io/File;
    .local v19, "fisub":Ljava/io/File;
    move-object/from16 v24, v25

    .line 593
    .end local v17    # "fdout":Ljava/io/FileDescriptor;
    .end local v19    # "fisub":Ljava/io/File;
    .end local v23    # "out1":Ljava/io/FileOutputStream;
    .end local v25    # "reader":Ljava/io/BufferedReader;
    .end local v29    # "service":Landroid/os/IBinder;
    :goto_a
    :try_start_b
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 596
    if-eqz v24, :cond_a

    .line 597
    :try_start_c
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V

    .line 598
    :cond_a
    if-eqz v19, :cond_3

    .line 599
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_5

    .line 600
    :catch_5
    move-exception v16

    .restart local v16    # "ex":Ljava/io/IOException;
    goto/16 :goto_5

    .end local v9    # "e":Ljava/lang/Exception;
    .end local v16    # "ex":Ljava/io/IOException;
    .restart local v17    # "fdout":Ljava/io/FileDescriptor;
    .restart local v20    # "fisub":Ljava/io/File;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v23    # "out1":Ljava/io/FileOutputStream;
    .restart local v25    # "reader":Ljava/io/BufferedReader;
    .restart local v29    # "service":Landroid/os/IBinder;
    :cond_b
    move-object/from16 v19, v20

    .end local v20    # "fisub":Ljava/io/File;
    .restart local v19    # "fisub":Ljava/io/File;
    move-object/from16 v24, v25

    .line 588
    .end local v25    # "reader":Ljava/io/BufferedReader;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 594
    .end local v17    # "fdout":Ljava/io/FileDescriptor;
    .end local v19    # "fisub":Ljava/io/File;
    .end local v21    # "line":Ljava/lang/String;
    .end local v23    # "out1":Ljava/io/FileOutputStream;
    .end local v24    # "reader":Ljava/io/BufferedReader;
    .end local v29    # "service":Landroid/os/IBinder;
    :catchall_1
    move-exception v31

    .line 596
    :goto_b
    if-eqz v24, :cond_c

    .line 597
    :try_start_d
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V

    .line 598
    :cond_c
    if-eqz v19, :cond_d

    .line 599
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 594
    :cond_d
    :goto_c
    throw v31

    .line 600
    :catch_6
    move-exception v16

    .restart local v16    # "ex":Ljava/io/IOException;
    goto :goto_c

    .line 594
    .end local v16    # "ex":Ljava/io/IOException;
    .restart local v17    # "fdout":Ljava/io/FileDescriptor;
    .restart local v20    # "fisub":Ljava/io/File;
    .local v21, "line":Ljava/lang/String;
    .restart local v23    # "out1":Ljava/io/FileOutputStream;
    .restart local v29    # "service":Landroid/os/IBinder;
    :catchall_2
    move-exception v31

    move-object/from16 v19, v20

    .end local v20    # "fisub":Ljava/io/File;
    .restart local v19    # "fisub":Ljava/io/File;
    goto :goto_b

    .end local v19    # "fisub":Ljava/io/File;
    .end local v21    # "line":Ljava/lang/String;
    .restart local v20    # "fisub":Ljava/io/File;
    .restart local v25    # "reader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v31

    move-object/from16 v19, v20

    .end local v20    # "fisub":Ljava/io/File;
    .restart local v19    # "fisub":Ljava/io/File;
    move-object/from16 v24, v25

    .end local v25    # "reader":Ljava/io/BufferedReader;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    goto :goto_b

    .line 592
    .end local v17    # "fdout":Ljava/io/FileDescriptor;
    .end local v23    # "out1":Ljava/io/FileOutputStream;
    .end local v24    # "reader":Ljava/io/BufferedReader;
    .end local v29    # "service":Landroid/os/IBinder;
    .local v19, "fisub":Ljava/io/File;
    :catch_7
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    goto :goto_a

    .end local v9    # "e":Ljava/lang/Exception;
    .end local v19    # "fisub":Ljava/io/File;
    .restart local v17    # "fdout":Ljava/io/FileDescriptor;
    .restart local v20    # "fisub":Ljava/io/File;
    .restart local v21    # "line":Ljava/lang/String;
    .restart local v23    # "out1":Ljava/io/FileOutputStream;
    .restart local v29    # "service":Landroid/os/IBinder;
    :catch_8
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    move-object/from16 v19, v20

    .end local v20    # "fisub":Ljava/io/File;
    .local v19, "fisub":Ljava/io/File;
    goto :goto_a

    .line 600
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v17    # "fdout":Ljava/io/FileDescriptor;
    .end local v19    # "fisub":Ljava/io/File;
    .end local v21    # "line":Ljava/lang/String;
    .end local v23    # "out1":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v16

    .restart local v16    # "ex":Ljava/io/IOException;
    goto/16 :goto_5

    .line 557
    .end local v16    # "ex":Ljava/io/IOException;
    .end local v29    # "service":Landroid/os/IBinder;
    .restart local v25    # "reader":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v31

    move-object/from16 v24, v25

    .end local v25    # "reader":Ljava/io/BufferedReader;
    .restart local v24    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .line 555
    .restart local v21    # "line":Ljava/lang/String;
    .local v24, "reader":Ljava/io/BufferedReader;
    :catch_a
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .end local v8    # "e":Ljava/io/IOException;
    .end local v24    # "reader":Ljava/io/BufferedReader;
    .restart local v17    # "fdout":Ljava/io/FileDescriptor;
    .restart local v20    # "fisub":Ljava/io/File;
    .local v21, "line":Ljava/lang/String;
    .restart local v23    # "out1":Ljava/io/FileOutputStream;
    .restart local v25    # "reader":Ljava/io/BufferedReader;
    .restart local v29    # "service":Landroid/os/IBinder;
    :cond_e
    move-object/from16 v19, v20

    .end local v20    # "fisub":Ljava/io/File;
    .restart local v19    # "fisub":Ljava/io/File;
    move-object/from16 v24, v25

    .end local v25    # "reader":Ljava/io/BufferedReader;
    .local v24, "reader":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method public enalbeDefaultThreeKey()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

    invoke-virtual {v0, v1}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 460
    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[enableDefaultThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void
.end method

.method public getPhoneHistoryRecord(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->getPhoneHistoryRecordNative(I)I

    move-result v0

    return v0
.end method

.method public getThreeKeyStatus()I
    .locals 3

    .prologue
    .line 481
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v1}, Lcom/oneplus/threekey/ThreeKeyHw;->getState()I
    :try_end_0
    .catch Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
    const-string/jumbo v1, "OemExService"

    const-string/jumbo v2, "system unsupport for threekey"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v1, 0x0

    return v1
.end method

.method public monitorSceneChanging(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 272
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x19

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[scene] monitorSceneChanging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    if-eqz p1, :cond_3

    .line 276
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-nez v0, :cond_1

    .line 277
    new-instance v0, Lcom/android/server/OemSceneModeController;

    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/OemSceneModeController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->startMonitorPassive()V

    .line 271
    :cond_2
    :goto_0
    return-void

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->stopMonitorPassive()V

    goto :goto_0

    .line 286
    :cond_4
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[scene] Scene mode not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pauseExInputEvent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 396
    return-void
.end method

.method public preEvaluateModeStatus(II)Z
    .locals 4
    .param p1, "modeType"    # I
    .param p2, "switcherType"    # I

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "result":Z
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x19

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[scene] preEvaluateModeStatus: modeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 295
    const-string/jumbo v3, " swithcer switcherType: "

    .line 294
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/OemSceneModeController;->preEvaluateModeStatus(II)Z

    move-result v0

    .line 302
    .end local v0    # "result":Z
    :cond_1
    :goto_0
    return v0

    .line 300
    .restart local v0    # "result":Z
    :cond_2
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "OemExService"

    const-string/jumbo v2, "[scene] Scene mode not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerInputEvent(Lcom/oem/os/IOemExInputCallBack;I)Z
    .locals 1
    .param p1, "callBackAdd"    # Lcom/oem/os/IOemExInputCallBack;
    .param p2, "keycode"    # I

    .prologue
    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method public removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V
    .locals 2
    .param p1, "policy"    # Lcom/oem/os/IThreeKeyPolicy;

    .prologue
    .line 469
    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[removeThreeKeyPolicy]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    invoke-virtual {v0, p1}, Lcom/oneplus/threekey/ThreeKey;->removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 468
    return-void
.end method

.method public resetThreeKey()V
    .locals 2

    .prologue
    .line 474
    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[resetThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    invoke-virtual {v0}, Lcom/oneplus/threekey/ThreeKey;->reset()V

    .line 473
    return-void
.end method

.method public resumeExInputEvent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 399
    return-void
.end method

.method public setActivityManager(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 616
    sput-object p1, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 615
    return-void
.end method

.method public setGammaData(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLCDGammaData(I)V

    .line 427
    return-void
.end method

.method public setHomeUpLock()Z
    .locals 2

    .prologue
    .line 423
    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[setHomeUpLock]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v0, 0x1

    return v0
.end method

.method public setInteractive(ZJ)Z
    .locals 1
    .param p1, "interactive"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 411
    const/4 v0, 0x1

    return v0
.end method

.method public setKeyMode(I)Z
    .locals 1
    .param p1, "keyMode"    # I

    .prologue
    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method public setLaserSensorCrossTalk(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLaserCrossTalk(I)V

    .line 435
    return-void
.end method

.method public setLaserSensorOffset(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLaserOffset(I)V

    .line 431
    return-void
.end method

.method public setPhoneHistoryRecord(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "val"    # I

    .prologue
    .line 444
    invoke-direct {p0, p1, p2}, Lcom/android/server/OemExService;->setPhoneHistoryRecordNative(II)I

    move-result v0

    return v0
.end method

.method public setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 415
    const/4 v0, 0x1

    return v0
.end method

.method public startApkInstall()V
    .locals 2

    .prologue
    .line 374
    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    if-nez v0, :cond_0

    .line 375
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/OemExService$2;

    invoke-direct {v1, p0}, Lcom/android/server/OemExService$2;-><init>(Lcom/android/server/OemExService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
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
    .line 403
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
    .line 407
    const/4 v0, 0x1

    return v0
.end method

.method public systemRunning()V
    .locals 7

    .prologue
    .line 306
    iget-object v2, p0, Lcom/android/server/OemExService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 314
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 305
    return-void

    .line 306
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisterInputEvent(Lcom/oem/os/IOemExInputCallBack;)V
    .locals 0
    .param p1, "callBackRemove"    # Lcom/oem/os/IOemExInputCallBack;

    .prologue
    .line 393
    return-void
.end method
