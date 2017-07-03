.class public abstract Lcom/oneplus/gallery/SingleMediaActivity;
.super Lcom/oneplus/gallery/GalleryActivity;
.source "SingleMediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/SingleMediaActivity$3;
    }
.end annotation


# instance fields
.field private m_ContentUri:Landroid/net/Uri;

.field private m_Media:Lcom/oneplus/gallery/media/Media;

.field private m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

.field private final m_ObtainMediaWhenCreating:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/SingleMediaActivity;-><init>(Z)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "obtainMediaWhenCreating"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryActivity;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcom/oneplus/gallery/SingleMediaActivity;->m_ObtainMediaWhenCreating:Z

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery/SingleMediaActivity;)Lcom/oneplus/gallery/media/Media;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/SingleMediaActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oneplus/gallery/SingleMediaActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/gallery/SingleMediaActivity;Lcom/oneplus/gallery/media/Media;)Lcom/oneplus/gallery/media/Media;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/SingleMediaActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/oneplus/gallery/SingleMediaActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/SingleMediaActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/SingleMediaActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oneplus/gallery/SingleMediaActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/gallery/SingleMediaActivity;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected final getMedia()Lcom/oneplus/gallery/media/Media;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oneplus/gallery/SingleMediaActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    return-object v0
.end method

.method protected final getMediaManager()Lcom/oneplus/gallery/media/OPMediaManager;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/gallery/SingleMediaActivity;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    return-object v0
.end method

.method protected obtainMedia(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/base/Handle;
    .locals 9
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 84
    iget-object v0, p0, Lcom/oneplus/gallery/SingleMediaActivity;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery/SingleMediaActivity;->TAG:Ljava/lang/String;

    const-string v1, "obtainMedia() - No media manager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 129
    :cond_0
    :goto_0
    return-object v7

    .line 89
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery/SingleMediaActivity;->m_ContentUri:Landroid/net/Uri;

    .line 90
    const/4 v0, 0x1

    new-array v6, v0, [Z

    aput-boolean v5, v6, v5

    .line 91
    .local v6, "callMediaObtainedDelayed":[Z
    iget-object v0, p0, Lcom/oneplus/gallery/SingleMediaActivity;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    new-instance v3, Lcom/oneplus/gallery/SingleMediaActivity$1;

    invoke-direct {v3, p0, v6}, Lcom/oneplus/gallery/SingleMediaActivity$1;-><init>(Lcom/oneplus/gallery/SingleMediaActivity;[Z)V

    invoke-virtual {p0}, Lcom/oneplus/gallery/SingleMediaActivity;->getHandler()Landroid/os/Handler;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/gallery/media/OPMediaManager;->obtainMedia(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    move-result-object v7

    .line 113
    .local v7, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v7}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    aget-boolean v0, v6, v5

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/oneplus/gallery/SingleMediaActivity;->TAG:Ljava/lang/String;

    const-string v1, "obtainMedia() - Media obtained immediately when creating activity, call-back later"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/oneplus/gallery/SingleMediaActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/SingleMediaActivity$2;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/SingleMediaActivity$2;-><init>(Lcom/oneplus/gallery/SingleMediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    move-object v7, v8

    .line 129
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 137
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/GalleryActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 140
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v3

    const-class v4, Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/OPMediaManager;

    iput-object v3, p0, Lcom/oneplus/gallery/SingleMediaActivity;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    .line 143
    invoke-virtual {p0}, Lcom/oneplus/gallery/SingleMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 145
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "mimeType":Ljava/lang/String;
    :cond_0
    iget-boolean v3, p0, Lcom/oneplus/gallery/SingleMediaActivity;->m_ObtainMediaWhenCreating:Z

    if-eqz v3, :cond_1

    .line 150
    if-eqz v0, :cond_3

    .line 152
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery/SingleMediaActivity;->obtainMedia(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 153
    iget-object v3, p0, Lcom/oneplus/gallery/SingleMediaActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate() - Fail to obtain media for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery/SingleMediaActivity;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_1
    :goto_1
    return-void

    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_2
    move-object v0, v2

    .line 144
    goto :goto_0

    .line 156
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local v2    # "mimeType":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery/SingleMediaActivity;->TAG:Ljava/lang/String;

    const-string v4, "onCreate() - No content URI"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onMediaObtained(Lcom/oneplus/gallery/media/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 166
    return-void
.end method

.method protected final setMedia(Lcom/oneplus/gallery/media/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/oneplus/gallery/SingleMediaActivity;->m_Media:Lcom/oneplus/gallery/media/Media;

    .line 175
    return-void
.end method
