.class public Lcom/oneplus/tuner/providers/SoundEffectEQBand$EQBandRunnable;
.super Ljava/lang/Object;
.source "SoundEffectEQBand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/providers/SoundEffectEQBand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EQBandRunnable"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/oneplus/tuner/providers/SoundEffectEQBand;


# direct methods
.method public constructor <init>(Lcom/oneplus/tuner/providers/SoundEffectEQBand;I)V
    .locals 0
    .param p2, "index"    # I

    .prologue
    .line 25
    iput-object p1, p0, Lcom/oneplus/tuner/providers/SoundEffectEQBand$EQBandRunnable;->this$0:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p2, p0, Lcom/oneplus/tuner/providers/SoundEffectEQBand$EQBandRunnable;->mIndex:I

    .line 29
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 33
    invoke-static {}, Lcom/waves/maxxaudio/MaxxAudioManager;->getInstance()Lcom/waves/maxxaudio/MaxxAudioManager;

    move-result-object v0

    .line 34
    .local v0, "manager":Lcom/waves/maxxaudio/MaxxAudioManager;
    const-string v1, "SoundEffectEQBand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEqBpGain[mIndex] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/tuner/providers/SoundEffectEQBand$EQBandRunnable;->this$0:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v3, v3, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    iget v4, p0, Lcom/oneplus/tuner/providers/SoundEffectEQBand$EQBandRunnable;->mIndex:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mEqBpFreq[mIndex] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpFreq:[F

    iget v4, p0, Lcom/oneplus/tuner/providers/SoundEffectEQBand$EQBandRunnable;->mIndex:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    if-eqz v0, :cond_0

    .line 37
    iget v1, p0, Lcom/oneplus/tuner/providers/SoundEffectEQBand$EQBandRunnable;->mIndex:I

    invoke-static {v1}, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->caculateEqBandFreqId(I)I

    move-result v1

    sget-object v2, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpFreq:[F

    iget v3, p0, Lcom/oneplus/tuner/providers/SoundEffectEQBand$EQBandRunnable;->mIndex:I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParamSync(IF)V

    .line 39
    iget v1, p0, Lcom/oneplus/tuner/providers/SoundEffectEQBand$EQBandRunnable;->mIndex:I

    invoke-static {v1}, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->caculateEqBandGainId(I)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/tuner/providers/SoundEffectEQBand$EQBandRunnable;->this$0:Lcom/oneplus/tuner/providers/SoundEffectEQBand;

    iget-object v2, v2, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->mEqBpGain:[F

    iget v3, p0, Lcom/oneplus/tuner/providers/SoundEffectEQBand$EQBandRunnable;->mIndex:I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParamSync(IF)V

    .line 41
    iget v1, p0, Lcom/oneplus/tuner/providers/SoundEffectEQBand$EQBandRunnable;->mIndex:I

    invoke-static {v1}, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->caculateEqBandQId(I)I

    move-result v1

    const v2, 0x40133333    # 2.3f

    invoke-virtual {v0, v1, v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParamSync(IF)V

    .line 42
    iget v1, p0, Lcom/oneplus/tuner/providers/SoundEffectEQBand$EQBandRunnable;->mIndex:I

    invoke-static {v1}, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->caculateEqBandTypeId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParamSync(IF)V

    .line 43
    iget v1, p0, Lcom/oneplus/tuner/providers/SoundEffectEQBand$EQBandRunnable;->mIndex:I

    invoke-static {v1}, Lcom/oneplus/tuner/providers/SoundEffectEQBand;->caculateEqBandActiveId(I)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/waves/maxxaudio/MaxxAudioManager;->setParamSync(IF)V

    .line 46
    :cond_0
    return-void
.end method
