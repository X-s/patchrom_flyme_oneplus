.class public abstract Lcom/oneplus/gallery2/media/MediaSourceComponent;
.super Lcom/oneplus/base/component/BasicComponent;
.source "MediaSourceComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TSource::",
        "Lcom/oneplus/gallery2/media/MediaSource;",
        ">",
        "Lcom/oneplus/base/component/BasicComponent;"
    }
.end annotation


# instance fields
.field private m_IsMediaChangeCBEnabled:Z

.field private final m_MediaChangeCB:Lcom/oneplus/gallery2/media/MediaChangeCallback;

.field private m_MediaChangeCBHandle:Lcom/oneplus/base/Handle;

.field private m_MediaSource:Lcom/oneplus/gallery2/media/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTSource;"
        }
    .end annotation
.end field

.field private final m_MediaSourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TTSource;>;"
        }
    .end annotation
.end field

.field private final m_MediaTableStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owner"    # Lcom/oneplus/base/component/ComponentOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oneplus/base/component/ComponentOwner;",
            "Ljava/lang/Class",
            "<+TTSource;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/oneplus/gallery2/media/MediaSourceComponent;, "Lcom/oneplus/gallery2/media/MediaSourceComponent<TTSource;>;"
    .local p3, "mediaSourceClass":Ljava/lang/Class;, "Ljava/lang/Class<+TTSource;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 22
    new-instance v0, Lcom/oneplus/gallery2/media/MediaSourceComponent$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent$1;-><init>(Lcom/oneplus/gallery2/media/MediaSourceComponent;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaChangeCB:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 48
    new-instance v0, Lcom/oneplus/gallery2/media/MediaSourceComponent$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent$2;-><init>(Lcom/oneplus/gallery2/media/MediaSourceComponent;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaTableStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    .line 71
    if-nez p3, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No type of media source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaSourceClass:Ljava/lang/Class;

    .line 74
    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/gallery2/media/MediaSourceComponent;Lcom/oneplus/gallery2/media/MediaSource;)Lcom/oneplus/gallery2/media/MediaSource;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/MediaSourceComponent;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaSource;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaSource;

    return-object p1
.end method


# virtual methods
.method protected disableMediaChangeCallback()V
    .locals 1

    .prologue
    .line 100
    .local p0, "this":Lcom/oneplus/gallery2/media/MediaSourceComponent;, "Lcom/oneplus/gallery2/media/MediaSourceComponent<TTSource;>;"
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaChangeCBHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaChangeCBHandle:Lcom/oneplus/base/Handle;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_IsMediaChangeCBEnabled:Z

    .line 102
    return-void
.end method

.method protected enableMediaChangeCallback()V
    .locals 2

    .prologue
    .line 82
    .local p0, "this":Lcom/oneplus/gallery2/media/MediaSourceComponent;, "Lcom/oneplus/gallery2/media/MediaSourceComponent<TTSource;>;"
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaSource;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaChangeCBHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaSource;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaChangeCB:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaChangeCBHandle:Lcom/oneplus/base/Handle;

    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaChangeCBHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_IsMediaChangeCBEnabled:Z

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_IsMediaChangeCBEnabled:Z

    goto :goto_0
.end method

.method public final getMediaSource()Lcom/oneplus/gallery2/media/MediaSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTSource;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/oneplus/gallery2/media/MediaSourceComponent;, "Lcom/oneplus/gallery2/media/MediaSourceComponent<TTSource;>;"
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaSource;

    return-object v0
.end method

.method public final isMediaSourceBound()Z
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lcom/oneplus/gallery2/media/MediaSourceComponent;, "Lcom/oneplus/gallery2/media/MediaSourceComponent<TTSource;>;"
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaSource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindToMediaSource(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSource;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/oneplus/gallery2/media/MediaSourceComponent;, "Lcom/oneplus/gallery2/media/MediaSourceComponent<TTSource;>;"
    .local p1, "source":Lcom/oneplus/gallery2/media/MediaSource;, "TTSource;"
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/gallery2/media/MediaSource;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_IsMediaChangeCBEnabled:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->enableMediaChangeCallback()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->TAG:Ljava/lang/String;

    const-string v1, "onBindToMediaSource() - Waiting for media table ready"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaTableStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onMediaTableReady()V

    goto :goto_0
.end method

.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lcom/oneplus/gallery2/media/MediaSourceComponent;, "Lcom/oneplus/gallery2/media/MediaSourceComponent<TTSource;>;"
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaSource;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaSource;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onUnbindFromMediaSource(Lcom/oneplus/gallery2/media/MediaSource;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaSource;

    .line 155
    :cond_0
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onDeinitialize()V

    .line 156
    return-void
.end method

.method protected onInitialize()V
    .locals 3

    .prologue
    .line 165
    .local p0, "this":Lcom/oneplus/gallery2/media/MediaSourceComponent;, "Lcom/oneplus/gallery2/media/MediaSourceComponent<TTSource;>;"
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onInitialize()V

    .line 168
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaSourceClass:Ljava/lang/Class;

    new-instance v2, Lcom/oneplus/gallery2/media/MediaSourceComponent$3;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent$3;-><init>(Lcom/oneplus/gallery2/media/MediaSourceComponent;)V

    invoke-static {v0, v1, p0, v2}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 177
    return-void
.end method

.method protected onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 186
    .local p0, "this":Lcom/oneplus/gallery2/media/MediaSourceComponent;, "Lcom/oneplus/gallery2/media/MediaSourceComponent<TTSource;>;"
    return-void
.end method

.method protected onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 195
    .local p0, "this":Lcom/oneplus/gallery2/media/MediaSourceComponent;, "Lcom/oneplus/gallery2/media/MediaSourceComponent<TTSource;>;"
    return-void
.end method

.method protected onMediaTableReady()V
    .locals 2

    .prologue
    .line 203
    .local p0, "this":Lcom/oneplus/gallery2/media/MediaSourceComponent;, "Lcom/oneplus/gallery2/media/MediaSourceComponent<TTSource;>;"
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->TAG:Ljava/lang/String;

    const-string v1, "onMediaTableReady()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method protected onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 213
    .local p0, "this":Lcom/oneplus/gallery2/media/MediaSourceComponent;, "Lcom/oneplus/gallery2/media/MediaSourceComponent<TTSource;>;"
    return-void
.end method

.method protected onUnbindFromMediaSource(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSource;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lcom/oneplus/gallery2/media/MediaSourceComponent;, "Lcom/oneplus/gallery2/media/MediaSourceComponent<TTSource;>;"
    .local p1, "source":Lcom/oneplus/gallery2/media/MediaSource;, "TTSource;"
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->disableMediaChangeCallback()V

    .line 223
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent;->m_MediaTableStateChangedCB:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSource;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 224
    return-void
.end method
