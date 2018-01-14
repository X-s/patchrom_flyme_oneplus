.class public final Lcom/nxp/ese/spi/EseSpiAdapter;
.super Ljava/lang/Object;
.source "EseSpiAdapter.java"


# static fields
.field public static final ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "android.ese.spi.action.ADAPTER_STATE_CHANGED"

.field public static final EXTRA_ADAPTER_STATE:Ljava/lang/String; = "android.ese.spi.extra.ADAPTER_STATE"

.field public static final STATE_OFF:I = 0x1

.field public static final STATE_ON:I = 0x3

.field public static final STATE_TURNING_OFF:I = 0x4

.field public static final STATE_TURNING_ON:I = 0x2

.field static final TAG:Ljava/lang/String; = "SPI"

.field static eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

.field static sIsInitialized:Z

.field static sNullContextSpiAdapter:Lcom/nxp/ese/spi/EseSpiAdapter;

.field static sSpiAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/nxp/ese/spi/EseSpiAdapter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nxp/ese/spi/EseSpiAdapter;->sIsInitialized:Z

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nxp/ese/spi/EseSpiAdapter;->sSpiAdapters:Ljava/util/HashMap;

    .line 46
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/nxp/ese/spi/EseSpiAdapter;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method private static getServiceInterface()Lcom/nxp/ese/spi/IEseSpiAdapter;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    const-string/jumbo v1, "spi"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 93
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 94
    return-object v2

    .line 96
    :cond_0
    invoke-static {v0}, Lcom/nxp/ese/spi/IEseSpiAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nxp/ese/spi/IEseSpiAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getSpiAdapter(Landroid/content/Context;)Lcom/nxp/ese/spi/EseSpiAdapter;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v2, Lcom/nxp/ese/spi/EseSpiAdapter;

    monitor-enter v2

    .line 149
    :try_start_0
    sget-boolean v1, Lcom/nxp/ese/spi/EseSpiAdapter;->sIsInitialized:Z

    if-nez v1, :cond_1

    .line 156
    invoke-static {}, Lcom/nxp/ese/spi/EseSpiAdapter;->getServiceInterface()Lcom/nxp/ese/spi/IEseSpiAdapter;

    move-result-object v1

    sput-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    .line 157
    sget-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    if-nez v1, :cond_0

    .line 158
    const-string/jumbo v1, "SPI"

    const-string/jumbo v3, "could not retrieve SPI service"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 162
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/nxp/ese/spi/EseSpiAdapter;->sIsInitialized:Z

    .line 164
    :cond_1
    if-nez p0, :cond_3

    .line 165
    sget-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->sNullContextSpiAdapter:Lcom/nxp/ese/spi/EseSpiAdapter;

    if-nez v1, :cond_2

    .line 168
    :cond_2
    sget-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->sNullContextSpiAdapter:Lcom/nxp/ese/spi/EseSpiAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1

    .line 170
    :cond_3
    :try_start_2
    sget-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->sSpiAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nxp/ese/spi/EseSpiAdapter;

    .line 171
    .local v0, "adapter":Lcom/nxp/ese/spi/EseSpiAdapter;
    if-nez v0, :cond_4

    .line 172
    new-instance v0, Lcom/nxp/ese/spi/EseSpiAdapter;

    .end local v0    # "adapter":Lcom/nxp/ese/spi/EseSpiAdapter;
    invoke-direct {v0, p0}, Lcom/nxp/ese/spi/EseSpiAdapter;-><init>(Landroid/content/Context;)V

    .line 173
    .restart local v0    # "adapter":Lcom/nxp/ese/spi/EseSpiAdapter;
    sget-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->sSpiAdapters:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit v2

    .line 175
    return-object v0
.end method


# virtual methods
.method public attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 100
    const-string/jumbo v1, "SPI"

    const-string/jumbo v2, "SPI service dead - attempting to recover"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    invoke-static {}, Lcom/nxp/ese/spi/EseSpiAdapter;->getServiceInterface()Lcom/nxp/ese/spi/IEseSpiAdapter;

    move-result-object v0

    .line 102
    .local v0, "service":Lcom/nxp/ese/spi/IEseSpiAdapter;
    if-nez v0, :cond_0

    .line 103
    const-string/jumbo v1, "SPI"

    const-string/jumbo v2, "could not retrieve SPI service during service recovery"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void

    .line 110
    :cond_0
    sput-object v0, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    .line 112
    return-void
.end method

.method public disable()Z
    .locals 3

    .prologue
    .line 317
    :try_start_0
    sget-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/nxp/ese/spi/IEseSpiAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/nxp/ese/spi/EseSpiAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 320
    const/4 v1, 0x0

    return v1
.end method

.method public enable(I)Z
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 291
    :try_start_0
    sget-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    invoke-interface {v1, p1}, Lcom/nxp/ese/spi/IEseSpiAdapter;->enable(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/nxp/ese/spi/EseSpiAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 294
    const/4 v1, 0x0

    return v1
.end method

.method public exchangeData(Ljava/lang/String;[B)[B
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    :try_start_0
    sget-object v2, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    if-eqz v2, :cond_0

    .line 197
    const-string/jumbo v2, "SPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "spiService present  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    sget-object v2, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    invoke-interface {v2, p1, p2}, Lcom/nxp/ese/spi/IEseSpiAdapter;->transceive(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 200
    .local v1, "result":[B
    return-object v1

    .line 201
    .end local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SPI"

    const-string/jumbo v3, "tranceive failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "tranceive failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public interfaceReset()Z
    .locals 2

    .prologue
    .line 269
    :try_start_0
    sget-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    invoke-interface {v1}, Lcom/nxp/ese/spi/IEseSpiAdapter;->interfaceReset()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/nxp/ese/spi/EseSpiAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 272
    const/4 v1, 0x0

    return v1
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    :try_start_0
    sget-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    invoke-interface {v1}, Lcom/nxp/ese/spi/IEseSpiAdapter;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 219
    const/4 v1, 0x1

    return v1

    .line 221
    :cond_0
    return v3

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/nxp/ese/spi/EseSpiAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 225
    const-string/jumbo v1, "SPI"

    const-string/jumbo v2, "Enable failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    return v3
.end method

.method public reset()Z
    .locals 2

    .prologue
    .line 246
    :try_start_0
    sget-object v1, Lcom/nxp/ese/spi/EseSpiAdapter;->eseSpiService:Lcom/nxp/ese/spi/IEseSpiAdapter;

    invoke-interface {v1}, Lcom/nxp/ese/spi/IEseSpiAdapter;->reset()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/nxp/ese/spi/EseSpiAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 249
    const/4 v1, 0x0

    return v1
.end method
