.class Lcom/oneplus/tuner/manager/OppoTunerManager$AddRunnable;
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
    name = "AddRunnable"
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
    .line 127
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/tuner/manager/OppoTunerManager$AddRunnable;->mItems:Ljava/util/ArrayList;

    .line 128
    iput-object p1, p0, Lcom/oneplus/tuner/manager/OppoTunerManager$AddRunnable;->mItems:Ljava/util/ArrayList;

    .line 129
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 133
    iget-object v8, p0, Lcom/oneplus/tuner/manager/OppoTunerManager$AddRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 135
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_8

    .line 137
    iget-object v8, p0, Lcom/oneplus/tuner/manager/OppoTunerManager$AddRunnable;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 138
    .local v2, "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    iget v8, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    if-ne v8, v10, :cond_6

    .line 139
    iget v8, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mLocal:I

    if-ne v8, v10, :cond_5

    .line 140
    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v8, v11, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 152
    :goto_1
    iget v8, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUsing:I

    if-ne v8, v10, :cond_0

    .line 153
    sput-object v2, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedSoundEffectData:Lcom/oneplus/tuner/providers/SoundEffectItem;

    .line 154
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$000()Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 155
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$000()Landroid/os/Handler;

    move-result-object v8

    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mUsedDataChangeRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$100()Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    :cond_0
    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUserSoundEffects:Ljava/util/HashMap;

    iget-object v9, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 162
    .local v7, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    if-nez v7, :cond_2

    .line 163
    iget-object v8, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 164
    const-string v8, ""

    iput-object v8, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    .line 166
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .restart local v7    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->mUserSoundEffects:Ljava/util/HashMap;

    iget-object v9, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mUserName:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_2
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->mModelSoundEffects:Ljava/util/HashMap;

    iget-object v9, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 175
    .local v5, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    if-nez v5, :cond_4

    .line 176
    iget-object v8, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    if-nez v8, :cond_3

    .line 177
    const-string v8, ""

    iput-object v8, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    .line 179
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .restart local v5    # "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->mModelSoundEffects:Ljava/util/HashMap;

    iget-object v9, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mModel:Ljava/lang/String;

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v5    # "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    .end local v7    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/SoundEffectItem;>;"
    :cond_5
    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->mNetSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v8, v11, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 145
    :cond_6
    iget v8, v2, Lcom/oneplus/tuner/providers/SoundEffectItem;->mLocal:I

    if-ne v8, v10, :cond_7

    .line 146
    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->mLocalSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 148
    :cond_7
    sget-object v8, Lcom/oneplus/tuner/manager/OppoTunerManager;->mNetSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    .end local v2    # "item":Lcom/oneplus/tuner/providers/SoundEffectItem;
    :cond_8
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mSoundEffectDataChangeListeners:Ljava/util/ArrayList;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$400()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 189
    .local v6, "num":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v6, :cond_9

    .line 190
    # getter for: Lcom/oneplus/tuner/manager/OppoTunerManager;->mSoundEffectDataChangeListeners:Ljava/util/ArrayList;
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->access$400()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;

    .line 192
    .local v4, "listener":Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;
    invoke-interface {v4}, Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;->onEffectDataChanged()V

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 195
    .end local v4    # "listener":Lcom/oneplus/tuner/listener/SoundEffectDataChangeListener;
    :cond_9
    return-void
.end method
