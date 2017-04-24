.class public Lorg/ifaa/android/manager/IFAAManagerFactory;
.super Lorg/ifaa/android/manager/IFAAManager;
.source "IFAAManagerFactory.java"


# static fields
.field private static final ACTIVITY_START_FAILED:I = -0x1

.field private static final ACTIVITY_START_SUCCESS:I = 0x0

.field private static final BIOTypeFingerprint:I = 0x1

.field private static final BIOTypeIris:I = 0x2

.field private static final TAG:Ljava/lang/String; = "IFAAManagerFactory"

.field public static mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/ifaa/android/manager/IFAAManager;-><init>()V

    .line 24
    return-void
.end method

.method public static getIFAAManager(Landroid/content/Context;I)Lorg/ifaa/android/manager/IFAAManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authType"    # I

    .prologue
    .line 57
    const-string v0, "IFAAManagerFactory"

    const-string v1, "getIFAAManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lorg/ifaa/android/manager/IFAAManagerFactory;

    invoke-direct {v0}, Lorg/ifaa/android/manager/IFAAManagerFactory;-><init>()V

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    .line 60
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    .line 62
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    goto :goto_0
.end method


# virtual methods
.method public getDeviceModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    const-string v0, "IFAAManagerFactory"

    const-string v1, "device model"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v0, "ONEPLUS-A3000"

    return-object v0
.end method

.method public getSupportBIOTypes(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const-string v0, "IFAAManagerFactory"

    const-string v1, "BIOTypeFingerprint1"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public startBIOManager(Landroid/content/Context;I)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authType"    # I

    .prologue
    const/4 v5, 0x0

    .line 32
    :try_start_0
    const-string v2, "IFAAManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startBIOManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$SecuritySettingsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 36
    const-string v2, "IFAAManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OOS context"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v5

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v2

    goto :goto_0
.end method
