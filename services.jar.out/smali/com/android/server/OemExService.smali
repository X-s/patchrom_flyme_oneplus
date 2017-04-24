.class public final Lcom/android/server/OemExService;
.super Lcom/oem/os/IOemExService$Stub;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private static final IN_APP_INSTALLED:Ljava/lang/String; = "in_app_installed"

.field private static final MSG_DELAY_COVER:I = 0x2

.field private static final MSG_INSTALL_COMPLETE:I = 0x3

.field private static final MSG_SYSTEM_READY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OemExService"

.field private static final UDEV_NAME_BACKCOVER:Ljava/lang/String; = "switch-theme"

.field private static mPackageInstallState:I

.field private static mPackageVerifierEnable:I

.field private static sBackcoverState:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private volatile mSystemReady:Z

.field private mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

.field private mThreeKeyVibratorPolicy:Lcom/oem/os/IThreeKeyPolicy;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private threekey:Lcom/oneplus/threekey/ThreeKey;

.field private threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    .line 70
    sput v1, Lcom/android/server/OemExService;->sBackcoverState:I

    .line 86
    sput v1, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    .line 88
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

    .line 195
    invoke-direct {p0}, Lcom/oem/os/IOemExService$Stub;-><init>()V

    .line 64
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/OemExService;->mLock:Ljava/lang/Object;

    .line 72
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/OemExService;->mSystemReady:Z

    .line 92
    new-instance v1, Lcom/android/server/OemExService$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/OemExService$1;-><init>(Lcom/android/server/OemExService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    .line 196
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 197
    .local v0, "pm":Landroid/os/PowerManager;
    iput-object p1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    .line 198
    const-string v1, "OemExService"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OemExService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/server/OemExService;->onSystemReady()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 45
    sput p0, Lcom/android/server/OemExService;->sBackcoverState:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/OemExService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemExService;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->sendBroadcastForChangeTheme(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/OemExService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    return v0
.end method

.method static synthetic access$510()I
    .locals 2

    .prologue
    .line 45
    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/android/server/OemExService;->mPackageInstallState:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/OemExService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/OemExService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/server/OemExService;->installAPKs()V

    return-void
.end method

.method private installAPKs()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 157
    iget-object v6, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 158
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Ljava/io/File;

    const-string v6, "/system/vendor/etc/in_apps"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v3, "path":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 160
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 162
    .local v0, "apkFiles":[Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "package_verifier_enable"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_6

    .line 164
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 165
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 166
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v8}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 169
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "in_app_installed"

    invoke-static {v6, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 170
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

    .line 173
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

    .line 174
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

    .line 176
    iget-object v6, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "package_verifier_enable"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    sget v6, Lcom/android/server/OemExService;->mPackageInstallState:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/server/OemExService;->mPackageInstallState:I

    .line 179
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

    .line 182
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

    .line 163
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "strAppInstalled":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v5    # "strAppInstalled":Ljava/lang/String;
    :cond_5
    move v6, v8

    .line 173
    goto :goto_1

    .line 191
    .end local v0    # "apkFiles":[Ljava/io/File;
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "strAppInstalled":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private onSystemReady()V
    .locals 3

    .prologue
    .line 216
    const-string v1, "OemExService"

    const-string v2, "systemReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/OemExService;->mSystemReady:Z

    .line 220
    invoke-direct {p0}, Lcom/android/server/OemExService;->sendBroadcastForChangeBlackMode()V

    .line 222
    new-instance v1, Lcom/oneplus/threekey/ThreeKeyHw;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKeyHw;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    .line 223
    iget-object v1, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v1}, Lcom/oneplus/threekey/ThreeKeyHw;->isSupportThreeKey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v1}, Lcom/oneplus/threekey/ThreeKeyHw;->init()V

    .line 230
    new-instance v1, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

    .line 231
    new-instance v1, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyVibratorPolicy:Lcom/oem/os/IThreeKeyPolicy;

    .line 234
    :try_start_0
    new-instance v1, Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKey;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    .line 235
    iget-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

    invoke-virtual {v1, v2}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 236
    iget-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->mThreeKeyVibratorPolicy:Lcom/oem/os/IThreeKeyPolicy;

    invoke-virtual {v1, v2}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 237
    iget-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v2}, Lcom/oneplus/threekey/ThreeKeyHw;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/threekey/ThreeKey;->init(I)V
    :try_end_0
    .catch Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
    const-string v1, "OemExService"

    const-string v2, "device is not support threekey"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    goto :goto_0
.end method

.method private sendBroadcastForChangeBlackMode()V
    .locals 2

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.OEM_THEME_MODE.init"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "blackModeIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 254
    return-void
.end method

.method private sendBroadcastForChangeTheme(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.intent.action.THREE_BACK_COVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "backCover":Landroid/content/Intent;
    const-string v1, "switch_state"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 248
    return-void
.end method

.method private native setLCDGammaData(I)V
.end method

.method private native setLaserCrossTalk(I)V
.end method

.method private native setLaserOffset(I)V
.end method


# virtual methods
.method public addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V
    .locals 2
    .param p1, "policy"    # Lcom/oem/os/IThreeKeyPolicy;

    .prologue
    .line 339
    const-string v0, "OemExService"

    const-string v1, "[setThreeKeyPolicy]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    invoke-virtual {v0, p1}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 341
    return-void
.end method

.method public disableDefaultThreeKey()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

    invoke-virtual {v0, v1}, Lcom/oneplus/threekey/ThreeKey;->removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 330
    const-string v0, "OemExService"

    const-string v1, "[disableDefaultThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method

.method public enalbeDefaultThreeKey()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oem/os/IThreeKeyPolicy;

    invoke-virtual {v0, v1}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 335
    const-string v0, "OemExService"

    const-string v1, "[enableDefaultThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void
.end method

.method public getThreeKeyStatus()I
    .locals 3

    .prologue
    .line 354
    const-string v1, "OemExService"

    const-string v2, "[getThreeKeyStatus]"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v1}, Lcom/oneplus/threekey/ThreeKeyHw;->getState()I
    :try_end_0
    .catch Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 360
    :goto_0
    return v1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
    const-string v1, "OemExService"

    const-string v2, "system unsupport for threekey"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v1, 0x0

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
    .line 282
    return-void
.end method

.method public registerInputEvent(Lcom/oem/os/IOemExInputCallBack;I)Z
    .locals 1
    .param p1, "callBackAdd"    # Lcom/oem/os/IOemExInputCallBack;
    .param p2, "keycode"    # I

    .prologue
    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V
    .locals 2
    .param p1, "policy"    # Lcom/oem/os/IThreeKeyPolicy;

    .prologue
    .line 344
    const-string v0, "OemExService"

    const-string v1, "[removeThreeKeyPolicy]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    invoke-virtual {v0, p1}, Lcom/oneplus/threekey/ThreeKey;->removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V

    .line 346
    return-void
.end method

.method public resetThreeKey()V
    .locals 2

    .prologue
    .line 349
    const-string v0, "OemExService"

    const-string v1, "[resetThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    invoke-virtual {v0}, Lcom/oneplus/threekey/ThreeKey;->reset()V

    .line 351
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
    .line 285
    return-void
.end method

.method public setGammaData(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLCDGammaData(I)V

    .line 314
    return-void
.end method

.method public setHomeUpLock()Z
    .locals 2

    .prologue
    .line 308
    const-string v0, "OemExService"

    const-string v1, "[setHomeUpLock]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method public setInteractive(ZJ)Z
    .locals 1
    .param p1, "interactive"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public setKeyMode(I)Z
    .locals 1
    .param p1, "keyMode"    # I

    .prologue
    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public setLaserSensorCrossTalk(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLaserCrossTalk(I)V

    .line 322
    return-void
.end method

.method public setLaserSensorOffset(I)V
    .locals 0
    .param p1, "val"    # I

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setLaserOffset(I)V

    .line 318
    return-void
.end method

.method public setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public startApkInstall()V
    .locals 2

    .prologue
    .line 259
    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    if-nez v0, :cond_0

    .line 260
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/OemExService$2;

    invoke-direct {v1, p0}, Lcom/android/server/OemExService$2;-><init>(Lcom/android/server/OemExService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
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
    .line 288
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
    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method public systemRunning()V
    .locals 7

    .prologue
    .line 202
    iget-object v2, p0, Lcom/android/server/OemExService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 208
    :cond_0
    const-string v1, "oem_ex_service_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 211
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    monitor-exit v2

    .line 213
    return-void

    .line 212
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
    .line 279
    return-void
.end method
