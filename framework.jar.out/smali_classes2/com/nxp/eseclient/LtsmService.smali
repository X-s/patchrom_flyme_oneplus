.class public final Lcom/nxp/eseclient/LtsmService;
.super Ljava/lang/Object;
.source "LtsmService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LtsmService"

.field private static mEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

.field private static mEseClientServicesAdapterBuilder:Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;

.field private static mEseManager:Lcom/nxp/eseclient/EseClientManager;

.field private static mINxpExtrasService:Lcom/nxp/intf/INxpExtrasService;

.field private static mLtsmService:Lcom/nxp/eseclient/LtsmService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/nxp/eseclient/LtsmService;->mLtsmService:Lcom/nxp/eseclient/LtsmService;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/nxp/intf/INxpExtrasService;)V
    .locals 0
    .param p1, "NxpExtrasServiceIntf"    # Lcom/nxp/intf/INxpExtrasService;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sput-object p1, Lcom/nxp/eseclient/LtsmService;->mINxpExtrasService:Lcom/nxp/intf/INxpExtrasService;

    .line 38
    return-void
.end method

.method public static declared-synchronized close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-class v3, Lcom/nxp/eseclient/LtsmService;

    monitor-enter v3

    .line 90
    :try_start_0
    sget-object v2, Lcom/nxp/eseclient/LtsmService;->mINxpExtrasService:Lcom/nxp/intf/INxpExtrasService;

    invoke-interface {v2, p0, p1}, Lcom/nxp/intf/INxpExtrasService;->close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v1

    .line 91
    .local v1, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "e"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 92
    const-string/jumbo v2, "LtsmService"

    const-string/jumbo v4, "LTSM close secure element successful"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 93
    return-object v1

    .line 95
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "LTSM close secure elemnt failed"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .end local v1    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "LtsmService"

    const-string/jumbo v4, "Exception in LTSM secure element close connection"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "Exception in LTSM  close connection()"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized createLtsmServiceInterface()Lcom/nxp/eseclient/LtsmService;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-class v3, Lcom/nxp/eseclient/LtsmService;

    monitor-enter v3

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "NxpExtrasServiceIntf":Lcom/nxp/intf/INxpExtrasService;
    :try_start_0
    invoke-static {}, Lcom/nxp/eseclient/EseClientManager;->getInstance()Lcom/nxp/eseclient/EseClientManager;

    move-result-object v2

    sput-object v2, Lcom/nxp/eseclient/LtsmService;->mEseManager:Lcom/nxp/eseclient/EseClientManager;

    .line 48
    sget-object v2, Lcom/nxp/eseclient/LtsmService;->mEseManager:Lcom/nxp/eseclient/EseClientManager;

    invoke-virtual {v2}, Lcom/nxp/eseclient/EseClientManager;->initialize()V

    .line 49
    sget-object v2, Lcom/nxp/eseclient/LtsmService;->mEseManager:Lcom/nxp/eseclient/EseClientManager;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/nxp/eseclient/EseClientManager;->getSeInterface(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 50
    .local v1, "seMedium":Ljava/lang/Integer;
    const-string/jumbo v2, "LtsmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Selected P61 interface ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v2, Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;

    invoke-direct {v2}, Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;-><init>()V

    sput-object v2, Lcom/nxp/eseclient/LtsmService;->mEseClientServicesAdapterBuilder:Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;

    .line 52
    sget-object v2, Lcom/nxp/eseclient/LtsmService;->mEseClientServicesAdapterBuilder:Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/nxp/eseclient/EseClientServicesAdapterBuilder;->getEseClientServicesAdapterInstance(I)Lcom/nxp/eseclient/EseClientServicesAdapter;

    move-result-object v2

    sput-object v2, Lcom/nxp/eseclient/LtsmService;->mEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

    .line 53
    sget-object v2, Lcom/nxp/eseclient/LtsmService;->mEseClientServicesAdapter:Lcom/nxp/eseclient/EseClientServicesAdapter;

    invoke-virtual {v2}, Lcom/nxp/eseclient/EseClientServicesAdapter;->getNxpExtrasService()Lcom/nxp/intf/INxpExtrasService;

    move-result-object v0

    .line 54
    .local v0, "NxpExtrasServiceIntf":Lcom/nxp/intf/INxpExtrasService;
    if-eqz v0, :cond_0

    .line 55
    new-instance v2, Lcom/nxp/eseclient/LtsmService;

    invoke-direct {v2, v0}, Lcom/nxp/eseclient/LtsmService;-><init>(Lcom/nxp/intf/INxpExtrasService;)V

    sput-object v2, Lcom/nxp/eseclient/LtsmService;->mLtsmService:Lcom/nxp/eseclient/LtsmService;

    .line 56
    const-string/jumbo v2, "LtsmService"

    const-string/jumbo v4, "LtsmService is retrived"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    sget-object v2, Lcom/nxp/eseclient/LtsmService;->mLtsmService:Lcom/nxp/eseclient/LtsmService;

    if-nez v2, :cond_1

    .line 59
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "Interface not available"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 61
    :cond_1
    sget-object v2, Lcom/nxp/eseclient/LtsmService;->mLtsmService:Lcom/nxp/eseclient/LtsmService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "b"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-class v3, Lcom/nxp/eseclient/LtsmService;

    monitor-enter v3

    .line 71
    :try_start_0
    sget-object v2, Lcom/nxp/eseclient/LtsmService;->mINxpExtrasService:Lcom/nxp/intf/INxpExtrasService;

    invoke-interface {v2, p0, p1}, Lcom/nxp/intf/INxpExtrasService;->open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v1

    .line 72
    .local v1, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "e"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 73
    const-string/jumbo v2, "LtsmService"

    const-string/jumbo v4, "LTSM Open secure element successful"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 74
    return-object v1

    .line 76
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "LTSM open secure elemnt failed"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .end local v1    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "LtsmService"

    const-string/jumbo v4, "Exception in LTSM secure element open connection"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "Exception in LTSM  open connection()"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized transceive(Ljava/lang/String;[B)Landroid/os/Bundle;
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-class v3, Lcom/nxp/eseclient/LtsmService;

    monitor-enter v3

    .line 109
    :try_start_0
    sget-object v2, Lcom/nxp/eseclient/LtsmService;->mINxpExtrasService:Lcom/nxp/intf/INxpExtrasService;

    invoke-interface {v2, p0, p1}, Lcom/nxp/intf/INxpExtrasService;->transceive(Ljava/lang/String;[B)Landroid/os/Bundle;

    move-result-object v1

    .line 110
    .local v1, "result":Landroid/os/Bundle;
    const-string/jumbo v2, "e"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 111
    const-string/jumbo v2, "LtsmService"

    const-string/jumbo v4, "LTSM transceive secure element successful"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 112
    return-object v1

    .line 114
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "LTSM transceive secure elemnt failed"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .end local v1    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "LtsmService"

    const-string/jumbo v4, "Exception in LTSM secure element transceive connection"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "RemoteException in LTSM  transceive connection()"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
