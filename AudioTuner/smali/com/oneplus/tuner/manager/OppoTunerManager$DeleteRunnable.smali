.class Lcom/oneplus/tuner/manager/OppoTunerManager$DeleteRunnable;
.super Ljava/lang/Object;
.source "OppoTunerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/manager/OppoTunerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteRunnable"
.end annotation


# instance fields
.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/SoundEffectItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/tuner/providers/SoundEffectItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/tuner/manager/OppoTunerManager$DeleteRunnable;->mItems:Ljava/util/ArrayList;

    .line 204
    iput-object p1, p0, Lcom/oneplus/tuner/manager/OppoTunerManager$DeleteRunnable;->mItems:Ljava/util/ArrayList;

    .line 205
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 209
    iget-object v8, p0, Lcom/oneplus/tuner/manager/OppoTunerManager$DeleteRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 211
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 213
    iget-object v8, p0, Lcom/oneplus/tuner/manager/OppoTunerManager$DeleteRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 215
    .local v2, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    if-ne v2, v8, :cond_0

    .line 216
    new-instance v8, Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-direct {v8}, Lcom/oneplus/tuner/providers/SoundEffectItem;-><init>()V

    sput-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 217
    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    sget-object v9, Lcom/oneplus/tuner/manager/OppoTunerManager;->mDefautlSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    invoke-virtual {v8, v9}, Lcom/oneplus/tuner/providers/SoundEffectItem;->copyFrom(Lcom/oneplus/tuner/providers/SoundEffectItem;)V

    .line 218
    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    const/4 v9, 0x1

    iput v9, v8, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    .line 220
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$000()Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 221
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$000()Landroid/os/Handler;

    move-result-object v8

    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedDataChangeRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$100()Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    :cond_0
    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 226
    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->mNetSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 228
    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->mModelSoundEffects:Ljava/util/HashMap;

    iget-object v9, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 231
    .local v5, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 233
    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUserSoundEffects:Ljava/util/HashMap;

    iget-object v9, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 236
    .local v7, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v2    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    .end local v5    # "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    .end local v7    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    :cond_1
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mSoundEffectDataChangeListeners:Ljava/util/ArrayList;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$400()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 242
    .local v6, "num":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v6, :cond_2

    .line 243
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mSoundEffectDataChangeListeners:Ljava/util/ArrayList;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$400()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;

    .line 245
    .local v4, "listener":Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;
    invoke-interface {v4}, Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;->onEffectDataChanged()V

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 248
    .end local v4    # "listener":Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;
    :cond_2
    return-void
.end method
