.class public Lcom/oneplus/tuner/utillty/EffectSmoothRunnable;
.super Ljava/lang/Object;
.source "EffectSmoothRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final STEP:I = 0x5


# instance fields
.field private mClient:Lcom/waves/maxxaudio/IWavesFXClient;

.field private mParam:I

.field private mParamValue:D


# direct methods
.method public constructor <init>(IDLcom/waves/maxxaudio/IWavesFXClient;)V
    .locals 0
    .param p1, "param"    # I
    .param p2, "value"    # D
    .param p4, "client"    # Lcom/waves/maxxaudio/IWavesFXClient;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/oneplus/tuner/utillty/EffectSmoothRunnable;->mParam:I

    .line 19
    iput-wide p2, p0, Lcom/oneplus/tuner/utillty/EffectSmoothRunnable;->mParamValue:D

    .line 20
    iput-object p4, p0, Lcom/oneplus/tuner/utillty/EffectSmoothRunnable;->mClient:Lcom/waves/maxxaudio/IWavesFXClient;

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .line 26
    iget v4, p0, Lcom/oneplus/tuner/utillty/EffectSmoothRunnable;->mParam:I

    invoke-static {v4}, Lcom/waves/maxxaudio/MaxxAudioService;->onGetParam(I)D

    move-result-wide v0

    .line 28
    .local v0, "current":D
    iget-wide v4, p0, Lcom/oneplus/tuner/utillty/EffectSmoothRunnable;->mParamValue:D

    sub-double/2addr v4, v0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-wide v4, p0, Lcom/oneplus/tuner/utillty/EffectSmoothRunnable;->mParamValue:D

    sub-double/2addr v4, v0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    const/4 v3, 0x1

    .line 36
    .local v3, "type":I
    :cond_2
    :goto_1
    mul-int/lit8 v4, v3, 0x5

    int-to-double v4, v4

    add-double/2addr v0, v4

    .line 38
    int-to-double v4, v3

    mul-double/2addr v4, v0

    iget-wide v6, p0, Lcom/oneplus/tuner/utillty/EffectSmoothRunnable;->mParamValue:D

    int-to-double v8, v3

    mul-double/2addr v6, v8

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    .line 39
    iget-object v4, p0, Lcom/oneplus/tuner/utillty/EffectSmoothRunnable;->mClient:Lcom/waves/maxxaudio/IWavesFXClient;

    if-eqz v4, :cond_2

    .line 41
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/tuner/utillty/EffectSmoothRunnable;->mClient:Lcom/waves/maxxaudio/IWavesFXClient;

    iget v5, p0, Lcom/oneplus/tuner/utillty/EffectSmoothRunnable;->mParam:I

    double-to-float v6, v0

    invoke-interface {v4, v5, v6}, Lcom/waves/maxxaudio/IWavesFXClient;->setParam(IF)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 42
    :catch_0
    move-exception v2

    .line 43
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 32
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "type":I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1

    .line 47
    .restart local v3    # "type":I
    :cond_4
    iget-object v4, p0, Lcom/oneplus/tuner/utillty/EffectSmoothRunnable;->mClient:Lcom/waves/maxxaudio/IWavesFXClient;

    if-eqz v4, :cond_0

    .line 49
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/tuner/utillty/EffectSmoothRunnable;->mClient:Lcom/waves/maxxaudio/IWavesFXClient;

    iget v5, p0, Lcom/oneplus/tuner/utillty/EffectSmoothRunnable;->mParam:I

    iget-wide v6, p0, Lcom/oneplus/tuner/utillty/EffectSmoothRunnable;->mParamValue:D

    double-to-float v6, v6

    invoke-interface {v4, v5, v6}, Lcom/waves/maxxaudio/IWavesFXClient;->setParam(IF)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 50
    :catch_1
    move-exception v2

    .line 51
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
