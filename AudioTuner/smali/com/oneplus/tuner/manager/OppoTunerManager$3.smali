.class final Lcom/oneplus/tuner/manager/OppoTunerManager$3;
.super Ljava/lang/Object;
.source "OppoTunerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/manager/OppoTunerManager;->postSyncInitUsedDataRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 722
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-nez v0, :cond_0

    .line 723
    new-instance v0, Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-direct {v0}, Lcom/oneplus/tuner/providers/SoundEffectItem;-><init>()V

    sput-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 724
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-virtual {v0, v1}, Lcom/oneplus/tuner/providers/SoundEffectItem;->copyFrom(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    .line 725
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const/4 v1, 0x1

    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    .line 729
    :cond_0
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$000()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 730
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$000()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedDataChangeRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$100()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 733
    :cond_1
    return-void
.end method
