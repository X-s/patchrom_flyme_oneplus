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
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getService()Lcom/oem/os/IOemExService;
    .locals 2

    .prologue
    .line 76
    sget-object v1, Lcom/oem/os/ThreeKeyManager;->sService:Lcom/oem/os/IOemExService;

    if-eqz v1, :cond_0

    .line 77
    sget-object v1, Lcom/oem/os/ThreeKeyManager;->sService:Lcom/oem/os/IOemExService;

    .line 81
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 79
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "OEMExService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 80
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v1

    sput-object v1, Lcom/oem/os/ThreeKeyManager;->sService:Lcom/oem/os/IOemExService;

    .line 81
    sget-object v1, Lcom/oem/os/ThreeKeyManager;->sService:Lcom/oem/os/IOemExService;

    goto :goto_0
.end method


# virtual methods
.method public addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V
    .locals 3
    .param p1, "policy"    # Lcom/oem/os/IThreeKeyPolicy;

    .prologue
    .line 38
    const-string v1, "ThreeKeyManager"

    const-string v2, "[setThreeKeyPolicyHelper]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :try_start_0
    invoke-static {}, Lcom/oem/os/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/oem/os/IOemExService;->addThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ThreeKeyManager"

    const-string v2, "[setThreeKeyPolicyHelper] service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableDefaultThreeKey()V
    .locals 3

    .prologue
    .line 20
    const-string v1, "ThreeKeyManager"

    const-string v2, "[disableDefaultThreeKey]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :try_start_0
    invoke-static {}, Lcom/oem/os/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v1

    invoke-interface {v1}, Lcom/oem/os/IOemExService;->disableDefaultThreeKey()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ThreeKeyManager"

    const-string v2, "[test] service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enalbeDefaultThreeKey()V
    .locals 3

    .prologue
    .line 29
    const-string v1, "ThreeKeyManager"

    const-string v2, "[enalbeDefaultThreeKey]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :try_start_0
    invoke-static {}, Lcom/oem/os/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v1

    invoke-interface {v1}, Lcom/oem/os/IOemExService;->enalbeDefaultThreeKey()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ThreeKeyManager"

    const-string v2, "[test] service is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getThreeKeyStatus()I
    .locals 3

    .prologue
    .line 65
    const-string v1, "ThreeKeyManager"

    const-string v2, "[getThreeKeyStatus]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :try_start_0
    invoke-static {}, Lcom/oem/os/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v1

    invoke-interface {v1}, Lcom/oem/os/IOemExService;->getThreeKeyStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 71
    :goto_0
    return v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TAG"

    const-string v2, "[getThreeKeyStatus]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V
    .locals 3
    .param p1, "policy"    # Lcom/oem/os/IThreeKeyPolicy;

    .prologue
    .line 47
    const-string v1, "ThreeKeyManager"

    const-string v2, "[removeThreeKeyPolicyHelper]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :try_start_0
    invoke-static {}, Lcom/oem/os/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/oem/os/IOemExService;->removeThreeKeyPolicy(Lcom/oem/os/IThreeKeyPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ThreeKeyManager"

    const-string v2, "[removeThreeKeyPolicyHelper]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetThreeKey()V
    .locals 3

    .prologue
    .line 56
    const-string v1, "ThreeKeyManager"

    const-string v2, "[resetThreeKey]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :try_start_0
    invoke-static {}, Lcom/oem/os/ThreeKeyManager;->getService()Lcom/oem/os/IOemExService;

    move-result-object v1

    invoke-interface {v1}, Lcom/oem/os/IOemExService;->resetThreeKey()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ThreeKeyManager"

    const-string v2, "[resetThreeKey]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
