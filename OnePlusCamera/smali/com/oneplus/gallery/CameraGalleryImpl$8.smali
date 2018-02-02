.class Lcom/oneplus/gallery/CameraGalleryImpl$8;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/base/IntentEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$8;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p2, "key"    # Lcom/oneplus/base/EventKey;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 344
    check-cast p3, Lcom/oneplus/base/IntentEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl$8;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/IntentEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/IntentEventArgs;)V
    .locals 8
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/base/IntentEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/IntentEventArgs;",
            ">;",
            "Lcom/oneplus/base/IntentEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 346
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/base/IntentEventArgs;>;"
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl$8;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 347
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 349
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/oneplus/base/IntentEventArgs;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "CameraActivity.InstanceId"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 353
    :try_start_0
    invoke-virtual {p3}, Lcom/oneplus/base/IntentEventArgs;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 354
    .local v2, "mediaId":J
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl$8;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get41(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl$8;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v5

    instance-of v5, v5, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;

    if-eqz v5, :cond_0

    .line 357
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl$8;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;

    invoke-virtual {v5}, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;->getWrappedMediaList()Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v5

    invoke-virtual {p3}, Lcom/oneplus/base/IntentEventArgs;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/gallery2/media/MediaUtils;->findMedia(Ljava/util/List;Landroid/net/Uri;)Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    .line 358
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz v1, :cond_0

    .line 359
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl$8;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;

    invoke-virtual {v5, v1}, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;->checkMedia(Lcom/oneplus/gallery2/media/Media;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v2    # "mediaId":J
    :cond_0
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v4

    .line 364
    .local v4, "tr":Ljava/lang/Throwable;
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl$8;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get2(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Failed to parse media Id"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
