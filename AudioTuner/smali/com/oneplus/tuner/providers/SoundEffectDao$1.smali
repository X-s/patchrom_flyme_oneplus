.class Lcom/oneplus/tuner/providers/SoundEffectDao$1;
.super Ljava/lang/Object;
.source "SoundEffectDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/providers/SoundEffectDao;->setLocalUsed(Lcom/oneplus/tuner/providers/SoundEffectItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/providers/SoundEffectDao;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/providers/SoundEffectDao;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$1;->this$0:Lcom/oneplus/tuner/providers/SoundEffectDao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 150
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const/4 v1, -0x1

    iput v1, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    .line 154
    sget-object v0, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-wide v0, v0, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/oneplus/tuner/providers/SoundEffectDao$1;->this$0:Lcom/oneplus/tuner/providers/SoundEffectDao;

    sget-object v1, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    iget-wide v2, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mId:J

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/tuner/providers/SoundEffectDao;->update(Lcom/oneplus/tuner/providers/SoundEffectItem;JLjava/lang/String;[Ljava/lang/String;)Z

    .line 163
    :cond_0
    return-void
.end method
