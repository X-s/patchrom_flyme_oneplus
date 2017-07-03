.class Lcom/oneplus/gallery2/ClearGalleryImageCacheReceiver$1;
.super Ljava/lang/Object;
.source "ClearGalleryImageCacheReceiver.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/ClearGalleryImageCacheReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/ClearGalleryImageCacheReceiver;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/ClearGalleryImageCacheReceiver;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oneplus/gallery2/ClearGalleryImageCacheReceiver$1;->this$0:Lcom/oneplus/gallery2/ClearGalleryImageCacheReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 34
    sget-object v1, Lcom/oneplus/gallery2/ClearGalleryImageCacheReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onObtained() - media: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    if-eqz p4, :cond_0

    .line 37
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v1

    const-class v2, Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    invoke-virtual {v1, v2}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    .line 38
    .local v0, "thumbnailManager":Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    if-eqz v0, :cond_0

    .line 40
    sget-object v1, Lcom/oneplus/gallery2/ClearGalleryImageCacheReceiver;->TAG:Ljava/lang/String;

    const-string v2, "onObtained() - invalidateThumbnailImages"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v1, 0x0

    invoke-interface {v0, p4, v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->invalidateThumbnailImages(Lcom/oneplus/gallery2/media/Media;I)V

    .line 44
    .end local v0    # "thumbnailManager":Lcom/oneplus/gallery2/media/ThumbnailImageManager;
    :cond_0
    return-void
.end method
