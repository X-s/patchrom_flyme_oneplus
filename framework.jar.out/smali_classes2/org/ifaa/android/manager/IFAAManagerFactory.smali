.class public Lorg/ifaa/android/manager/IFAAManagerFactory;
.super Lorg/ifaa/android/manager/IFAAManagerV2;
.source "IFAAManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ifaa/android/manager/IFAAManagerFactory$1;
    }
.end annotation


# static fields
.field private static final ACTIVITY_START_FAILED:I = -0x1

.field private static final ACTIVITY_START_SUCCESS:I = 0x0

.field private static final BIND_IFAASER_SERVICE_TIMEOUT:I = 0x2710

.field private static final BIOTypeFingerprint:I = 0x1

.field private static final BIOTypeIris:I = 0x2

.field static final IFAA_SERVICE_CLASS:Ljava/lang/String; = "com.oneplus.ifaaservice.IFAAService"

.field static final IFAA_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field static final IFAA_SERVICE_PACKAGE:Ljava/lang/String; = "com.oneplus.ifaaservice"

.field private static final TAG:Ljava/lang/String; = "IFAAManagerFactory"

.field public static mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mIFAAService:Lcom/android/internal/app/IIFAAService;


# direct methods
.method static synthetic -get0(Lorg/ifaa/android/manager/IFAAManagerFactory;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get1(Lorg/ifaa/android/manager/IFAAManagerFactory;)Lcom/android/internal/app/IIFAAService;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAService:Lcom/android/internal/app/IIFAAService;

    return-object v0
.end method

.method static synthetic -set0(Lorg/ifaa/android/manager/IFAAManagerFactory;Lcom/android/internal/app/IIFAAService;)Lcom/android/internal/app/IIFAAService;
    .locals 0

    iput-object p1, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAService:Lcom/android/internal/app/IIFAAService;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    .line 27
    new-instance v0, Landroid/content/ComponentName;

    .line 28
    const-string/jumbo v1, "com.oneplus.ifaaservice"

    .line 29
    const-string/jumbo v2, "com.oneplus.ifaaservice.IFAAService"

    .line 27
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->IFAA_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/ifaa/android/manager/IFAAManagerV2;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAService:Lcom/android/internal/app/IIFAAService;

    .line 109
    new-instance v0, Lorg/ifaa/android/manager/IFAAManagerFactory$1;

    invoke-direct {v0, p0}, Lorg/ifaa/android/manager/IFAAManagerFactory$1;-><init>(Lorg/ifaa/android/manager/IFAAManagerFactory;)V

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mConnection:Landroid/content/ServiceConnection;

    .line 33
    return-void
.end method

.method private ensureIfaaService(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    iget-object v2, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAService:Lcom/android/internal/app/IIFAAService;

    if-nez v2, :cond_0

    .line 97
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lorg/ifaa/android/manager/IFAAManagerFactory;->IFAA_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 98
    .local v1, "service":Landroid/content/Intent;
    iget-object v2, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 99
    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v3

    .line 101
    :try_start_0
    iget-object v2, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mConnection:Landroid/content/ServiceConnection;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    .line 95
    .end local v1    # "service":Landroid/content/Intent;
    :cond_0
    return-void

    .line 102
    .restart local v1    # "service":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v2, "IFAAManagerFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exception while binding IFAAService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getIFAAManager(Landroid/content/Context;I)Lorg/ifaa/android/manager/IFAAManagerV2;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authType"    # I

    .prologue
    .line 67
    const-string/jumbo v0, "IFAAManagerFactory"

    const-string/jumbo v1, "getIFAAManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lorg/ifaa/android/manager/IFAAManagerFactory;

    invoke-direct {v0}, Lorg/ifaa/android/manager/IFAAManagerFactory;-><init>()V

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    .line 70
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    return-object v0

    .line 72
    :cond_0
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAManagerFactory:Lorg/ifaa/android/manager/IFAAManagerFactory;

    return-object v0
.end method


# virtual methods
.method public getDeviceModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    const-string/jumbo v0, "IFAAManagerFactory"

    const-string/jumbo v1, "device model"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string/jumbo v0, "ONEPLUS-A3000"

    return-object v0
.end method

.method public getSupportBIOTypes(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string/jumbo v0, "IFAAManagerFactory"

    const-string/jumbo v1, "BIOTypeFingerprint1"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x2

    return v0
.end method

.method public processCmdV2(Landroid/content/Context;[B)[B
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # [B

    .prologue
    .line 77
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "IFAAManagerFactory"

    const-string/jumbo v3, "processCmdV2"

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "IFAAManagerFactory"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :cond_0
    const/4 v1, 0x0

    .line 83
    .local v1, "result":[B
    invoke-direct {p0, p1}, Lorg/ifaa/android/manager/IFAAManagerFactory;->ensureIfaaService(Landroid/content/Context;)V

    .line 87
    :try_start_0
    iget-object v2, p0, Lorg/ifaa/android/manager/IFAAManagerFactory;->mIFAAService:Lcom/android/internal/app/IIFAAService;

    invoke-interface {v2, p2}, Lcom/android/internal/app/IIFAAService;->processCmdV2([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    .end local v1    # "result":[B
    :goto_0
    return-object v1

    .line 88
    .restart local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "IFAAManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exception while invoking processCmdV2 of remote IFAAService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startBIOManager(Landroid/content/Context;I)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authType"    # I

    .prologue
    const/4 v5, 0x0

    .line 42
    :try_start_0
    const-string/jumbo v2, "IFAAManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBIOManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 44
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.Settings$SecuritySettingsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    const-string/jumbo v2, "IFAAManagerFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OOS context"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    return v5

    .line 48
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    return v5

    .line 51
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v2

    .line 52
    return v5
.end method
