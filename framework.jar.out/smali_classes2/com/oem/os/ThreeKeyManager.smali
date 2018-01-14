.class public Lcom/oem/os/ThreeKeyManager;
.super Ljava/lang/Object;
.source "ThreeKeyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreeKeyManager"

.field private static sService:Lcom/oem/os/IOemExService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService()Lcom/oem/os/IOemExService;
    .locals 2

    .prologue
    .line 77
    sget-object v1, Lcom/oem/os/ThreeKeyManager;->sService:Lcom/oem/os/IOemExService;

    if-eqz v1, :cond_0

    .line 78
    sget-object v1, Lcom/oem/os/ThreeKeyManager;->sService:Lcom/oem/os/IOemExService;

    return-object v1

    .line 80
    :cond_0
    const-string/jumbo v1, "OEMExService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 81
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v1

    sput-object v1, Lcom/oem/os/ThreeKeyManager;->sService:Lcom/oem/os/IOemExService;

    .line 82
    sget-object v1, Lcom/oem/os/ThreeKeyManager;->sService:Lcom/oem/os/IOemExService;

    return-object v1
.end method


# virtual methods
.method public addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V
    .locals 3
    .param p1, "policy"    # Lcom/oem/os/IThreeKeyPolicy;

    .prologue
    .line 39
    const-string/jumbo v1, "ThreeKeyManager"

    const-string/jumbo v2, "[setThreeKeyPolicyHelper]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :try_start_0
    invoke-static {}, Lcom/oem/os/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/oem/os/IOemExService;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ThreeKeyManager"

    const-string/jumbo v2, "[setThreeKeyPolicyHelper] service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableDefaultThreeKey()V
    .locals 3

    .prologue
    .line 21
    const-string/jumbo v1, "ThreeKeyManager"

    const-string/jumbo v2, "[disableDefaultThreeKey]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :try_start_0
    invoke-static {}, Lcom/oem/os/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v1

    invoke-interface {v1}, Lcom/oem/os/IOemExService;->disableDefaultThreeKey()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ThreeKeyManager"

    const-string/jumbo v2, "[test] service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enalbeDefaultThreeKey()V
    .locals 3

    .prologue
    .line 30
    const-string/jumbo v1, "ThreeKeyManager"

    const-string/jumbo v2, "[enalbeDefaultThreeKey]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :try_start_0
    invoke-static {}, Lcom/oem/os/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v1

    invoke-interface {v1}, Lcom/oem/os/IOemExService;->enalbeDefaultThreeKey()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ThreeKeyManager"

    const-string/jumbo v2, "[test] service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getThreeKeyStatus()I
    .locals 3

    .prologue
    .line 68
    :try_start_0
    invoke-static {}, Lcom/oem/os/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v1

    invoke-interface {v1}, Lcom/oem/os/IOemExService;->getThreeKeyStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TAG"

    const-string/jumbo v2, "[getThreeKeyStatus]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v1, 0x0

    return v1
.end method

.method public removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V
    .locals 3
    .param p1, "policy"    # Lcom/oem/os/IThreeKeyPolicy;

    .prologue
    .line 48
    const-string/jumbo v1, "ThreeKeyManager"

    const-string/jumbo v2, "[removeThreeKeyPolicyHelper]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :try_start_0
    invoke-static {}, Lcom/oem/os/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/oem/os/IOemExService;->removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ThreeKeyManager"

    const-string/jumbo v2, "[removeThreeKeyPolicyHelper]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetThreeKey()V
    .locals 3

    .prologue
    .line 57
    const-string/jumbo v1, "ThreeKeyManager"

    const-string/jumbo v2, "[resetThreeKey]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :try_start_0
    invoke-static {}, Lcom/oem/os/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v1

    invoke-interface {v1}, Lcom/oem/os/IOemExService;->resetThreeKey()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ThreeKeyManager"

    const-string/jumbo v2, "[resetThreeKey]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
