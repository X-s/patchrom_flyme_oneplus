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

.field static final DEBUG:Z = true

.field static final DEBUG_OEM_OBSERVER:Z = true

.field public static DEBUG_ONEPLUS:Z = false

.field private static final MSG_DELAY_COVER:I = 0x2

.field private static final MSG_INSTALL_COMPLETE:I = 0x3

.field private static final MSG_SYSTEM_READY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OemExService"

.field private static final UDEV_NAME_BACKCOVER:Ljava/lang/String; = "switch-theme"

.field private static final VENDOR_APP_INSTALLED:Ljava/lang/String; = "vendor_app_installed"

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

.method static synthetic -wrap0(Lcom/android/server/OemExService;Ljava/lang/String;)V
    .locals 0
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->installAPKs(Ljava/lang/String;)V

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

    .line 70
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    .line 90
    sput v1, Lcom/android/server/OemExService;->sBackcoverState:I

    .line 107
    sput v1, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    .line 109
    sput v1, Lcom/android/server/OemExService;->mPackageInstallState:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 226
    invoke-direct {p0}, Lcom/oem/os/IOemExService$Stub;-><init>()V

    .line 84
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/OemExService;->mLock:Ljava/lang/Object;

    .line 92
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/OemExService;->mSystemReady:Z

    .line 115
    new-instance v1, Lcom/android/server/OemExService$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/OemExService$1;-><init>(Lcom/android/server/OemExService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    .line 227
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 228
    .local v0, "pm":Landroid/os/PowerManager;
    iput-object p1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    .line 229
    const-string/jumbo v1, "OemExService"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 226
    return-void
.end method

.method private native getPhoneHistoryRecordNative(I)I
.end method

.method private installAPKs(Ljava/lang/String;)V
    .locals 14
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 185
    iget-object v6, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 187
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "vendor_app_installed"

    invoke-static {v6, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
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

    .line 191
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/system/vendor/etc/apps/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v3, "path":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 194
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 196
    .local v1, "apkFiles":[Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "package_verifier_enable"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    .line 199
    array-length v10, v1

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_6

    aget-object v0, v1, v9

    .line 200
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 201
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v8}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 205
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

    .line 206
    :cond_1
    if-eqz v5, :cond_4

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 199
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_2
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    goto :goto_0

    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    move v6, v8

    .line 205
    goto :goto_1

    .line 206
    :cond_4
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 209
    iget-object v6, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v11, "package_verifier_enable"

    invoke-static {v6, v11, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 210
    sget v6, Lcom/android/server/OemExService;->mPackageInstallState:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/server/OemExService;->mPackageInstallState:I

    .line 211
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

    .line 214
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

    .line 215
    new-instance v11, Lcom/android/server/OemExService$PackageInstallObserver;

    invoke-direct {v11, p0}, Lcom/android/server/OemExService$PackageInstallObserver;-><init>(Lcom/android/server/OemExService;)V

    .line 217
    iget-object v12, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 216
    const/16 v13, 0x102

    .line 214
    invoke-virtual {v4, v6, v11, v13, v12}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    goto :goto_2

    .line 184
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

    .line 281
    const-string/jumbo v1, "OemExService"

    const-string/jumbo v2, "systemReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iput-boolean v3, p0, Lcom/android/server/OemExService;->mSystemReady:Z

    .line 285
    invoke-direct {p0}, Lcom/android/server/OemExService;->sendBroadcastForChangeTheme()V

    .line 287
    new-instance v1, Lcom/oneplus/threekey/ThreeKeyHw;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKeyHw;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    .line 288
    iget-object v1, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v1}, Lcom/oneplus/threekey/ThreeKeyHw;->isSupportThreeKey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    return-void

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v1}, Lcom/oneplus/threekey/ThreeKeyHw;->init()V

    .line 295
    new-instance v1, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

    .line 296
    new-instance v1, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyVibratorPolicy:Lcom/oem/os/IThreeKeyPolicy;

    .line 299
    :try_start_0
    new-instance v1, Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKey;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    .line 300
    iget-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

    invoke-virtual {v1, v2}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 301
    iget-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->mThreeKeyVibratorPolicy:Lcom/oem/os/IThreeKeyPolicy;

    invoke-virtual {v1, v2}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 302
    iget-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v2}, Lcom/oneplus/threekey/ThreeKeyHw;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/threekey/ThreeKey;->init(I)V
    :try_end_0
    .catch Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    new-array v1, v3, [I

    const/16 v2, 0x19

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 310
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "OemExService"

    const-string/jumbo v2, "[scene] satrtMonitorSceneChanging"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-nez v1, :cond_2

    .line 312
    new-instance v1, Lcom/android/server/OemSceneModeController;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/OemSceneModeController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v1}, Lcom/android/server/OemSceneModeController;->startMonitor()V

    .line 280
    :cond_3
    :goto_1
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
    const-string/jumbo v1, "OemExService"

    const-string/jumbo v2, "device is not support threekey"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iput-object v4, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    goto :goto_0

    .line 316
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
    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.OEM_THEME_MODE.init"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, "blackModeIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 330
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 327
    return-void
.end method

.method private sendBroadcastForChangeTheme(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 321
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.oem.intent.action.THREE_BACK_COVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, "backCover":Landroid/content/Intent;
    const-string/jumbo v1, "switch_state"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 320
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
    .line 427
    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[setThreeKeyPolicy]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    invoke-virtual {v0, p1}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 426
    return-void
.end method

.method public disableDefaultThreeKey()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

    invoke-virtual {v0, v1}, Lcom/oneplus/threekey/ThreeKey;->removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 418
    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[disableDefaultThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void
.end method

.method public enalbeDefaultThreeKey()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

    invoke-virtual {v0, v1}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 423
    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[enableDefaultThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return-void
.end method

.method public getPhoneHistoryRecord(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->getPhoneHistoryRecordNative(I)I

    move-result v0

    return v0
.end method

.method public getThreeKeyStatus()I
    .locals 3

    .prologue
    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v1}, Lcom/oneplus/threekey/ThreeKeyHw;->getState()I
    :try_end_0
    .catch Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
    const-string/jumbo v1, "OemExService"

    const-string/jumbo v2, "system unsupport for threekey"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v1, 0x0

    return v1
.end method

.method public monitorSceneChanging(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 234
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x19

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
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

    .line 236
    :cond_0
    if-eqz p1, :cond_3

    .line 238
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Lcom/android/server/OemSceneModeController;

    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/OemSceneModeController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->startMonitorPassive()V

    .line 233
    :cond_2
    :goto_0
    return-void

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->stopMonitorPassive()V

    goto :goto_0

    .line 248
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
    .line 359
    return-void
.end method

.method public preEvaluateModeStatus(II)Z
    .locals 4
    .param p1, "modeType"    # I
    .param p2, "switcherType"    # I

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "result":Z
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x19

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
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

    .line 257
    const-string/jumbo v3, " swithcer switcherType: "

    .line 256
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/OemSceneModeController;->preEvaluateModeStatus(II)Z

    move-result v0

    .line 264
    .end local v0    # "result":Z
    :cond_1
    :goto_0
    return v0

    .line 262
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
    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V
    .locals 2
    .param p1, "policy"    # Lcom/oem/os/IThreeKeyPolicy;

    .prologue
    .line 432
    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[removeThreeKeyPolicy]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    invoke-virtual {v0, p1}, Lcom/oneplus/threekey/ThreeKey;->removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 431
    return-void
.end method

.method public resetThreeKey()V
    .locals 2

    .prologue
    .line 437
    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[resetThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    invoke-virtual {v0}, Lcom/oneplus/threekey/ThreeKey;->reset()V

    .line 436
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
    .line 362
    return-void
.end method

.method public setGammaData(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLCDGammaData(I)V

    .line 390
    return-void
.end method

.method public setHomeUpLock()Z
    .locals 2

    .prologue
    .line 386
    const-string/jumbo v0, "OemExService"

    const-string/jumbo v1, "[setHomeUpLock]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method public setInteractive(ZJ)Z
    .locals 1
    .param p1, "interactive"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public setKeyMode(I)Z
    .locals 1
    .param p1, "keyMode"    # I

    .prologue
    .line 382
    const/4 v0, 0x1

    return v0
.end method

.method public setLaserSensorCrossTalk(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLaserCrossTalk(I)V

    .line 398
    return-void
.end method

.method public setLaserSensorOffset(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLaserOffset(I)V

    .line 394
    return-void
.end method

.method public setPhoneHistoryRecord(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "val"    # I

    .prologue
    .line 407
    invoke-direct {p0, p1, p2}, Lcom/android/server/OemExService;->setPhoneHistoryRecordNative(II)I

    move-result v0

    return v0
.end method

.method public setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public startApkInstall(Ljava/lang/String;)V
    .locals 2
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 337
    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    if-nez v0, :cond_0

    .line 338
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/OemExService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/OemExService$2;-><init>(Lcom/android/server/OemExService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
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
    .line 366
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
    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method public systemRunning()V
    .locals 7

    .prologue
    .line 268
    iget-object v2, p0, Lcom/android/server/OemExService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 276
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 267
    return-void

    .line 268
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
    .line 356
    return-void
.end method
