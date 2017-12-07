.class public Landroid/hardware/display/SDManager;
.super Ljava/lang/Object;
.source "SDManager.java"


# static fields
.field public static final SMART_DISPLAY_SERVICE:Ljava/lang/String; = "smartdisplay"

.field private static final TAG:Ljava/lang/String; = "SDManager"

.field private static sService:Landroid/hardware/display/ISDService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Landroid/hardware/display/SDManager;->init()Landroid/hardware/display/ISDService;

    .line 47
    return-void
.end method

.method private static init()Landroid/hardware/display/ISDService;
    .locals 3

    .prologue
    .line 96
    sget-object v1, Landroid/hardware/display/SDManager;->sService:Landroid/hardware/display/ISDService;

    if-eqz v1, :cond_0

    .line 97
    sget-object v1, Landroid/hardware/display/SDManager;->sService:Landroid/hardware/display/ISDService;

    return-object v1

    .line 99
    :cond_0
    const-string/jumbo v1, "smartdisplay"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 100
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/display/ISDService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/ISDService;

    move-result-object v1

    sput-object v1, Landroid/hardware/display/SDManager;->sService:Landroid/hardware/display/ISDService;

    .line 101
    sget-object v1, Landroid/hardware/display/SDManager;->sService:Landroid/hardware/display/ISDService;

    if-nez v1, :cond_1

    .line 102
    const-string/jumbo v1, "SDManager"

    const-string/jumbo v2, "smartdisplay service is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    sget-object v1, Landroid/hardware/display/SDManager;->sService:Landroid/hardware/display/ISDService;

    return-object v1
.end method


# virtual methods
.method public SetUsrColorBalanceConfig(DDD)V
    .locals 9
    .param p1, "Red"    # D
    .param p3, "Green"    # D
    .param p5, "Blue"    # D

    .prologue
    .line 73
    :try_start_0
    sget-object v1, Landroid/hardware/display/SDManager;->sService:Landroid/hardware/display/ISDService;

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Landroid/hardware/display/SDManager;->sService:Landroid/hardware/display/ISDService;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/hardware/display/ISDService;->SetUsrColorBalanceConfig(DDD)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SDManager"

    const-string/jumbo v2, "smartdisplay service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetUsrSharpness(I)V
    .locals 3
    .param p1, "sharpness"    # I

    .prologue
    .line 84
    :try_start_0
    sget-object v1, Landroid/hardware/display/SDManager;->sService:Landroid/hardware/display/ISDService;

    if-eqz v1, :cond_0

    .line 85
    sget-object v1, Landroid/hardware/display/SDManager;->sService:Landroid/hardware/display/ISDService;

    invoke-interface {v1, p1}, Landroid/hardware/display/ISDService;->SetUsrSharpness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SDManager"

    const-string/jumbo v2, "smartdisplay service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableColorBalance(I)V
    .locals 3
    .param p1, "seekbar"    # I

    .prologue
    .line 63
    :try_start_0
    sget-object v1, Landroid/hardware/display/SDManager;->sService:Landroid/hardware/display/ISDService;

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, Landroid/hardware/display/SDManager;->sService:Landroid/hardware/display/ISDService;

    invoke-interface {v1, p1}, Landroid/hardware/display/ISDService;->enableColorBalance(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SDManager"

    const-string/jumbo v2, "smartdisplay service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableMode(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 53
    :try_start_0
    sget-object v1, Landroid/hardware/display/SDManager;->sService:Landroid/hardware/display/ISDService;

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Landroid/hardware/display/SDManager;->sService:Landroid/hardware/display/ISDService;

    invoke-interface {v1, p1}, Landroid/hardware/display/ISDService;->enableMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SDManager"

    const-string/jumbo v2, "smartdisplay service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
