.class public abstract Lcom/oneplus/gallery2/SingleMediaActivity;
.super Lcom/oneplus/gallery2/GalleryActivity;
.source "SingleMediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/SingleMediaActivity$3;
    }
.end annotation


# instance fields
.field private m_ContentUri:Landroid/net/Uri;

.field private m_Media:Lcom/oneplus/gallery2/media/Media;

.field private m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

.field private final m_ObtainMediaWhenCreating:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/SingleMediaActivity;-><init>(Z)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "obtainMediaWhenCreating"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryActivity;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcom/oneplus/gallery2/SingleMediaActivity;->m_ObtainMediaWhenCreating:Z

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/gallery2/SingleMediaActivity;)Lcom/oneplus/gallery2/media/Media;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/SingleMediaActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oneplus/gallery2/SingleMediaActivity;->m_Media:Lcom/oneplus/gallery2/media/Media;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/gallery2/SingleMediaActivity;Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery2/media/Media;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/SingleMediaActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/oneplus/gallery2/SingleMediaActivity;->m_Media:Lcom/oneplus/gallery2/media/Media;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/SingleMediaActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/SingleMediaActivity;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/oneplus/gallery2/SingleMediaActivity;->callOnMediaObtained()V

    return-void
.end method

.method private callOnMediaObtained()V
    .locals 2

    .prologue
    .line 49
    sget-object v1, Lcom/oneplus/gallery2/SingleMediaActivity$3;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    sget-object v0, Lcom/oneplus/gallery2/SingleMediaActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/SingleMediaActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 66
    iget-object v0, p0, Lcom/oneplus/gallery2/SingleMediaActivity;->m_Media:Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/SingleMediaActivity;->onMediaObtained(Lcom/oneplus/gallery2/media/Media;)V

    .line 69
    :goto_0
    return-void

    .line 52
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/SingleMediaActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/SingleMediaActivity$1;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/SingleMediaActivity$1;-><init>(Lcom/oneplus/gallery2/SingleMediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery2/SingleMediaActivity;->TAG:Ljava/lang/String;

    const-string v1, "callOnMediaObtained() - Activity is destroying or destroyed"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery2/SingleMediaActivity;->m_ContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected final getMedia()Lcom/oneplus/gallery2/media/Media;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/gallery2/SingleMediaActivity;->m_Media:Lcom/oneplus/gallery2/media/Media;

    return-object v0
.end method

.method protected obtainMedia(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/base/Handle;
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/oneplus/gallery2/SingleMediaActivity;->m_ContentUri:Landroid/net/Uri;

    .line 104
    new-instance v0, Lcom/oneplus/gallery2/SingleMediaActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/SingleMediaActivity$2;-><init>(Lcom/oneplus/gallery2/SingleMediaActivity;)V

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/oneplus/gallery2/media/MediaUtils;->getMedia(Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
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

    .line 120
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/GalleryActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 123
    invoke-virtual {p0}, Lcom/oneplus/gallery2/SingleMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 124
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 125
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "mimeType":Ljava/lang/String;
    :cond_0
    iget-boolean v3, p0, Lcom/oneplus/gallery2/SingleMediaActivity;->m_ObtainMediaWhenCreating:Z

    if-eqz v3, :cond_1

    .line 130
    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery2/SingleMediaActivity;->obtainMedia(Landroid/net/Uri;Ljava/lang/String;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    iget-object v3, p0, Lcom/oneplus/gallery2/SingleMediaActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate() - Fail to obtain media for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery2/SingleMediaActivity;->m_ContentUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_1
    :goto_1
    return-void

    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_2
    move-object v0, v2

    .line 124
    goto :goto_0

    .line 136
    .restart local v0    # "contentUri":Landroid/net/Uri;
    .restart local v2    # "mimeType":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery2/SingleMediaActivity;->TAG:Ljava/lang/String;

    const-string v4, "onCreate() - No content URI"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/oneplus/gallery2/SingleMediaActivity;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/SingleMediaActivity;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 149
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryActivity;->onDestroy()V

    .line 150
    return-void
.end method

.method protected onMediaObtained(Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 158
    return-void
.end method

.method protected final setMedia(Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/oneplus/gallery2/SingleMediaActivity;->m_Media:Lcom/oneplus/gallery2/media/Media;

    .line 167
    return-void
.end method
