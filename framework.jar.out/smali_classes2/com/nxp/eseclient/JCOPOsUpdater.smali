.class public final Lcom/nxp/eseclient/JCOPOsUpdater;
.super Ljava/lang/Object;
.source "JCOPOsUpdater.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EseSpiJCOPService"

.field private static mEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

.field private static mEseClientServicesAdapterBuilder:Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;

.field private static mEseManager:Lcom/nxp/eseclient/EseClientManager;

.field private static mJcpService:Lcom/nxp/eseclient/JCOPOsUpdater;


# instance fields
.field private IJcpService:Lcom/nxp/intf/IJcopService;

.field private setMedium:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/nxp/eseclient/JCOPOsUpdater;->mJcpService:Lcom/nxp/eseclient/JCOPOsUpdater;

    return-void
.end method

.method public constructor <init>(Lcom/nxp/intf/IJcopService;)V
    .locals 0
    .param p1, "mJcopService"    # Lcom/nxp/intf/IJcopService;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/nxp/eseclient/JCOPOsUpdater;->IJcpService:Lcom/nxp/intf/IJcopService;

    .line 45
    return-void
.end method

.method public static declared-synchronized createJCOPInterface()Lcom/nxp/eseclient/JCOPOsUpdater;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 54
    const-class v3, Lcom/nxp/eseclient/JCOPOsUpdater;

    monitor-enter v3

    const/4 v0, 0x0

    .line 55
    .local v0, "JcpServiceIntf":Lcom/nxp/intf/IJcopService;
    :try_start_0
    invoke-static {}, Lcom/nxp/eseclient/EseClientManager;->getInstance()Lcom/nxp/eseclient/EseClientManager;

    move-result-object v2

    sput-object v2, Lcom/nxp/eseclient/JCOPOsUpdater;->mEseManager:Lcom/nxp/eseclient/EseClientManager;

    .line 56
    sget-object v2, Lcom/nxp/eseclient/JCOPOsUpdater;->mEseManager:Lcom/nxp/eseclient/EseClientManager;

    invoke-virtual {v2}, Lcom/nxp/eseclient/EseClientManager;->initialize()V

    .line 57
    sget-object v2, Lcom/nxp/eseclient/JCOPOsUpdater;->mEseManager:Lcom/nxp/eseclient/EseClientManager;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/nxp/eseclient/EseClientManager;->getSeInterface(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 58
    .local v1, "seMedium":Ljava/lang/Integer;
    const-string v2, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected P61 interface ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v2, Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;

    invoke-direct {v2}, Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;-><init>()V

    sput-object v2, Lcom/nxp/eseclient/JCOPOsUpdater;->mEseClientServicesAdapterBuilder:Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;

    .line 60
    sget-object v2, Lcom/nxp/eseclient/JCOPOsUpdater;->mEseClientServicesAdapterBuilder:Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;->getEseClientServicesAdapterInstance(I)Lcom/nxp/eseclient/EseClientServicesAdapter;

    move-result-object v2

    sput-object v2, Lcom/nxp/eseclient/JCOPOsUpdater;->mEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

    .line 61
    sget-object v2, Lcom/nxp/eseclient/JCOPOsUpdater;->mEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

    invoke-virtual {v2}, Lcom/nxp/eseclient/EseClientServicesAdapter;->getJcopService()Lcom/nxp/intf/IJcopService;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    new-instance v2, Lcom/nxp/eseclient/JCOPOsUpdater;

    invoke-direct {v2, v0}, Lcom/nxp/eseclient/JCOPOsUpdater;-><init>(Lcom/nxp/intf/IJcopService;)V

    sput-object v2, Lcom/nxp/eseclient/JCOPOsUpdater;->mJcpService:Lcom/nxp/eseclient/JCOPOsUpdater;

    .line 64
    const-string v2, "TAG"

    const-string v4, "JcpServiceIntf is retrived"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    sget-object v2, Lcom/nxp/eseclient/JCOPOsUpdater;->mJcpService:Lcom/nxp/eseclient/JCOPOsUpdater;

    if-nez v2, :cond_1

    .line 67
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Interface not available"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    :cond_1
    sget-object v2, Lcom/nxp/eseclient/JCOPOsUpdater;->mJcpService:Lcom/nxp/eseclient/JCOPOsUpdater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 54
    .end local v1    # "seMedium":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public declared-synchronized jcopOsDownload(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/nxp/eseclient/JCOPOsUpdater;->IJcpService:Lcom/nxp/intf/IJcopService;

    invoke-interface {v2, p1}, Lcom/nxp/intf/IJcopService;->jcopOsDownload(Ljava/lang/String;)I

    move-result v1

    .line 88
    .local v1, "status":I
    if-nez v1, :cond_1

    .line 89
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Jcop Download success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 90
    :cond_1
    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 91
    :try_start_1
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Feature is Not Supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    .end local v1    # "status":I
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "EseSpiJCOPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException in jcopOsDownload(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in jcopOsDownload()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
