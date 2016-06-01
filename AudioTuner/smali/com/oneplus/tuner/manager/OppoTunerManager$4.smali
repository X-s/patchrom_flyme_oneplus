.class final Lcom/oneplus/tuner/manager/OppoTunerManager$4;
.super Ljava/lang/Object;
.source "OppoTunerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncEnforceInitUsedDataRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 750
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-eqz v0, :cond_0

    .line 751
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const/4 v1, -0x1

    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    .line 752
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-wide v0, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mSoundEffectDao:Lcom/oneplus/tuner/providers/SoundEffectDao;

    if-eqz v0, :cond_0

    .line 754
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mSoundEffectDao:Lcom/oneplus/tuner/providers/SoundEffectDao;

    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-wide v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/tuner/providers/SoundEffectDao;->update(Lcom/oneplus/tuner/providers/SoundEffectItem;JLjava/lang/String;[Ljava/lang/String;)Z

    .line 759
    :cond_0
    new-instance v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-direct {v0}, Lcom/oneplus/tuner/providers/SoundEffectItem;-><init>()V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 760
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/providers/SoundEffectItem;->copyFrom(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    .line 761
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const/4 v1, 0x1

    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    .line 763
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$000()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 764
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$000()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedDataChangeRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$100()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 767
    :cond_1
    return-void
.end method
