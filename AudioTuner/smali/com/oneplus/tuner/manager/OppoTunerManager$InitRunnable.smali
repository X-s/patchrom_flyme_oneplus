.class Lcom/oneplus/tuner/manager/OppoTunerManager$InitRunnable;
.super Ljava/lang/Object;
.source "OppoTunerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/manager/OppoTunerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitRunnable"
.end annotation


# instance fields
.field private mModel:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/tuner/manager/OppoTunerManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/tuner/manager/OppoTunerManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "model"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/oneplus/tuner/manager/OppoTunerManager$InitRunnable;->this$0:Lcom/oneplus/tuner/manager/OppoTunerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p2, p0, Lcom/oneplus/tuner/manager/OppoTunerManager$InitRunnable;->mModel:Ljava/lang/String;

    .line 260
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 265
    sget-object v5, Lcom/oneplus/tuner/manager/OppoTunerManager;->mSoundEffectDao:Lcom/oneplus/tuner/providers/SoundEffectDao;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_model=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/tuner/manager/OppoTunerManager$InitRunnable;->mModel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/tuner/providers/SoundEffectDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 268
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    sget-object v5, Lcom/oneplus/tuner/manager/OppoTunerManager;->mModelSoundEffects:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/oneplus/tuner/manager/OppoTunerManager$InitRunnable;->mModel:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 272
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 274
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 276
    .local v2, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    iget v5, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mLocal:I

    if-ne v5, v8, :cond_3

    .line 277
    sget-object v5, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :goto_1
    iget v5, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    if-ne v5, v8, :cond_0

    .line 283
    sput-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 286
    :cond_0
    sget-object v5, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUserSoundEffects:Ljava/util/HashMap;

    iget-object v6, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 289
    .local v4, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    if-nez v4, :cond_2

    .line 290
    iget-object v5, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 291
    const-string v5, ""

    iput-object v5, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    .line 293
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .restart local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    sget-object v5, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUserSoundEffects:Ljava/util/HashMap;

    iget-object v6, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v4    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    :cond_3
    sget-object v5, Lcom/oneplus/tuner/manager/OppoTunerManager;->mNetSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 301
    .end local v2    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :cond_4
    return-void
.end method
