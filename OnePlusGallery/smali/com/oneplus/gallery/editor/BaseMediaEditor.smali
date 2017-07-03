.class public abstract Lcom/oneplus/gallery/editor/BaseMediaEditor;
.super Lcom/oneplus/base/component/ComponentOwnerObject;
.source "BaseMediaEditor.java"

# interfaces
.implements Lcom/oneplus/gallery/editor/MediaEditor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/editor/BaseMediaEditor$2;
    }
.end annotation


# instance fields
.field private final m_Context:Landroid/content/Context;

.field private m_Media:Lcom/oneplus/gallery/media/Media;

.field private m_MediaSavingState:Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

.field private m_State:Lcom/oneplus/gallery/editor/MediaEditor$State;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-direct {p0, v1}, Lcom/oneplus/base/component/ComponentOwnerObject;-><init>(Z)V

    .line 22
    sget-object v0, Lcom/oneplus/gallery/editor/MediaEditor$State;->NONE:Lcom/oneplus/gallery/editor/MediaEditor$State;

    iput-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_State:Lcom/oneplus/gallery/editor/MediaEditor$State;

    .line 23
    sget-object v0, Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;->NONE:Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

    iput-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_MediaSavingState:Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_Context:Landroid/content/Context;

    .line 36
    sget-object v0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/editor/BaseMediaEditor;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/editor/BaseMediaEditor;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setMediaProp(Lcom/oneplus/gallery/media/Media;)Z
    .locals 5
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->verifyAccess()V

    .line 353
    sget-object v2, Lcom/oneplus/gallery/editor/BaseMediaEditor$2;->$SwitchMap$com$oneplus$gallery$editor$MediaEditor$State:[I

    iget-object v3, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_State:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {v3}, Lcom/oneplus/gallery/editor/MediaEditor$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 360
    iget-object v2, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMediaProp() - Current state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_State:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_0
    :goto_0
    return v1

    .line 365
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_Media:Lcom/oneplus/gallery/media/Media;

    .line 366
    .local v0, "prevMedia":Lcom/oneplus/gallery/media/Media;
    if-eq v0, p1, :cond_0

    .line 368
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->onVerifyMedia(Lcom/oneplus/gallery/media/Media;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 370
    iget-object v2, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMediaProp() - Invalid media : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->revert(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 377
    iget-object v2, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMediaProp() - Fail to revert media : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->onChangeMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/Media;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 384
    iget-object v2, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMediaProp() - Fail to set media : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_3
    iput-object p1, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_Media:Lcom/oneplus/gallery/media/Media;

    .line 390
    sget-object v2, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v0, p1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->prepare()Z

    move-result v1

    if-nez v1, :cond_4

    .line 395
    iget-object v1, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->TAG:Ljava/lang/String;

    const-string v2, "setMediaProp() - Fail to prepare"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected changeMediaSavingState(Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;)V
    .locals 3
    .param p1, "state"    # Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_MediaSavingState:Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

    .line 64
    .local v0, "prevState":Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;
    if-ne v0, p1, :cond_1

    .line 83
    :goto_0
    return-void

    .line 66
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_MediaSavingState:Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

    .line 68
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    sget-object v1, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_MEDIA_SAVING_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_2
    new-instance v1, Lcom/oneplus/gallery/editor/BaseMediaEditor$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/oneplus/gallery/editor/BaseMediaEditor$1;-><init>(Lcom/oneplus/gallery/editor/BaseMediaEditor;Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;)V

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected changeState(Lcom/oneplus/gallery/editor/MediaEditor$State;)V
    .locals 3
    .param p1, "state"    # Lcom/oneplus/gallery/editor/MediaEditor$State;

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_State:Lcom/oneplus/gallery/editor/MediaEditor$State;

    .line 49
    .local v0, "prevState":Lcom/oneplus/gallery/editor/MediaEditor$State;
    if-ne v0, p1, :cond_1

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_State:Lcom/oneplus/gallery/editor/MediaEditor$State;

    .line 52
    sget-object v1, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1, v0, p1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected completePreparation()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->verifyAccess()V

    .line 93
    sget-object v0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->TAG:Ljava/lang/String;

    const-string v2, "completePreparation() - Editor has been released"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 108
    :goto_0
    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_State:Lcom/oneplus/gallery/editor/MediaEditor$State;

    sget-object v2, Lcom/oneplus/gallery/editor/MediaEditor$State;->PREPARING:Lcom/oneplus/gallery/editor/MediaEditor$State;

    if-eq v0, v2, :cond_1

    .line 100
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completePreparation() - Current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_State:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 101
    goto :goto_0

    .line 105
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/editor/MediaEditor$State;->READY:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->changeState(Lcom/oneplus/gallery/editor/MediaEditor$State;)V

    .line 108
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected completeProcessing(Lcom/oneplus/gallery/media/Media;)Z
    .locals 4
    .param p1, "modifiedMedia"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->verifyAccess()V

    .line 121
    sget-object v0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->TAG:Ljava/lang/String;

    const-string v2, "completeProcessing() - Editor has been released"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 149
    .end local p1    # "modifiedMedia":Lcom/oneplus/gallery/media/Media;
    :goto_0
    return v0

    .line 126
    .restart local p1    # "modifiedMedia":Lcom/oneplus/gallery/media/Media;
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_State:Lcom/oneplus/gallery/editor/MediaEditor$State;

    sget-object v3, Lcom/oneplus/gallery/editor/MediaEditor$State;->PROCESSING:Lcom/oneplus/gallery/editor/MediaEditor$State;

    if-eq v0, v3, :cond_1

    .line 128
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeProcessing() - Current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_State:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 129
    goto :goto_0

    .line 133
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_MODIFIED_MEDIA:Lcom/oneplus/base/PropertyKey;

    if-eqz p1, :cond_2

    .end local p1    # "modifiedMedia":Lcom/oneplus/gallery/media/Media;
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_MEDIA_SAVING_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;->SAVING:Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

    if-ne v0, v3, :cond_3

    .line 136
    sget-object v0, Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;->SUCCESS:Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->changeMediaSavingState(Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;)V

    .line 137
    sget-object v0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 146
    :goto_2
    sget-object v0, Lcom/oneplus/gallery/editor/MediaEditor$State;->READY:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->changeState(Lcom/oneplus/gallery/editor/MediaEditor$State;)V

    move v0, v2

    .line 149
    goto :goto_0

    .line 133
    .restart local p1    # "modifiedMedia":Lcom/oneplus/gallery/media/Media;
    :cond_2
    iget-object p1, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_Media:Lcom/oneplus/gallery/media/Media;

    goto :goto_1

    .line 142
    .end local p1    # "modifiedMedia":Lcom/oneplus/gallery/media/Media;
    :cond_3
    sget-object v0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_Media:Lcom/oneplus/gallery/media/Media;

    .line 164
    :goto_0
    return-object v0

    .line 160
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_MEDIA_SAVING_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_MediaSavingState:Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

    goto :goto_0

    .line 162
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_State:Lcom/oneplus/gallery/editor/MediaEditor$State;

    goto :goto_0

    .line 164
    :cond_2
    invoke-super {p0, p1}, Lcom/oneplus/base/component/ComponentOwnerObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_Context:Landroid/content/Context;

    return-object v0
.end method

.method protected onChangeMedia(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/Media;)Z
    .locals 1
    .param p1, "currentMedia"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "newMedia"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onPrepare(Lcom/oneplus/gallery/media/Media;)Z
.end method

.method protected abstract onProcessMedia(Lcom/oneplus/gallery/media/Media;)Z
.end method

.method protected abstract onRevert(I)Z
.end method

.method protected abstract onVerifyMedia(Lcom/oneplus/gallery/media/Media;)Z
.end method

.method protected prepare()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->verifyAccess()V

    .line 230
    iget-object v2, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_Media:Lcom/oneplus/gallery/media/Media;

    if-nez v2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 232
    :cond_1
    sget-object v2, Lcom/oneplus/gallery/editor/BaseMediaEditor$2;->$SwitchMap$com$oneplus$gallery$editor$MediaEditor$State:[I

    iget-object v3, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_State:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {v3}, Lcom/oneplus/gallery/editor/MediaEditor$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 239
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare() - Current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_State:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 240
    goto :goto_0

    .line 244
    :pswitch_0
    sget-object v2, Lcom/oneplus/gallery/editor/MediaEditor$State;->PREPARING:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->changeState(Lcom/oneplus/gallery/editor/MediaEditor$State;)V

    .line 246
    iget-object v2, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->TAG:Ljava/lang/String;

    const-string v3, "prepare()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->onPrepare(Lcom/oneplus/gallery/media/Media;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->TAG:Ljava/lang/String;

    const-string v2, "prepare() - Fail to prepare"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/oneplus/gallery/editor/MediaEditor$State;->ERROR:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->changeState(Lcom/oneplus/gallery/editor/MediaEditor$State;)V

    move v0, v1

    .line 253
    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public revert(I)Z
    .locals 5
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->verifyAccess()V

    .line 267
    sget-object v0, Lcom/oneplus/gallery/editor/BaseMediaEditor$2;->$SwitchMap$com$oneplus$gallery$editor$MediaEditor$State:[I

    iget-object v4, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_State:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {v4}, Lcom/oneplus/gallery/editor/MediaEditor$State;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 275
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "revert() - Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_State:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 300
    :goto_0
    return v0

    :pswitch_0
    move v0, v2

    .line 270
    goto :goto_0

    .line 280
    :pswitch_1
    sget-object v0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->onRevert(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->TAG:Ljava/lang/String;

    const-string v1, "revert() - Fail to revert"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 285
    goto :goto_0

    .line 287
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 291
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/editor/MediaEditor$State;->NONE:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->changeState(Lcom/oneplus/gallery/editor/MediaEditor$State;)V

    move-object v0, v1

    .line 292
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->updatePreview(Landroid/graphics/drawable/Drawable;)V

    .line 293
    sget-object v0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_MODIFIED_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->prepare()Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->TAG:Ljava/lang/String;

    const-string v1, "revert() - Fail to prepare"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v2

    .line 300
    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public save(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->verifyAccess()V

    .line 310
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_State:Lcom/oneplus/gallery/editor/MediaEditor$State;

    sget-object v3, Lcom/oneplus/gallery/editor/MediaEditor$State;->READY:Lcom/oneplus/gallery/editor/MediaEditor$State;

    if-eq v0, v3, :cond_0

    .line 312
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save() - Current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_State:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 334
    :goto_0
    return v0

    .line 315
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->TAG:Ljava/lang/String;

    const-string v1, "save() - No changes to save"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 318
    goto :goto_0

    .line 322
    :cond_1
    sget-object v0, Lcom/oneplus/gallery/editor/MediaEditor$State;->PROCESSING:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->changeState(Lcom/oneplus/gallery/editor/MediaEditor$State;)V

    .line 323
    sget-object v0, Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;->SAVING:Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->changeMediaSavingState(Lcom/oneplus/gallery/editor/MediaEditor$MediaSavingState;)V

    .line 326
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_Media:Lcom/oneplus/gallery/media/Media;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->onProcessMedia(Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->TAG:Ljava/lang/String;

    const-string v2, "save() - Fail to start processing media"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object v0, Lcom/oneplus/gallery/editor/MediaEditor$State;->READY:Lcom/oneplus/gallery/editor/MediaEditor$State;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->changeState(Lcom/oneplus/gallery/editor/MediaEditor$State;)V

    move v0, v1

    .line 330
    goto :goto_0

    :cond_2
    move v0, v2

    .line 334
    goto :goto_0
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_MEDIA:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 343
    check-cast p2, Lcom/oneplus/gallery/media/Media;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->setMediaProp(Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    .line 344
    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/component/ComponentOwnerObject;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected updatePreview(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    .line 418
    if-eqz p1, :cond_0

    .line 420
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->m_Context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 421
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 422
    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->updatePreview(Landroid/graphics/drawable/Drawable;)V

    .line 426
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-void

    .line 425
    :cond_0
    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->updatePreview(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected updatePreview(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "preview"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 408
    sget-object v0, Lcom/oneplus/gallery/editor/BaseMediaEditor;->PROP_PREVIEW_DRAWABLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery/editor/BaseMediaEditor;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 409
    return-void
.end method
