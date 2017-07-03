.class Lcom/oneplus/gallery/receiver/ClearGalleryImageCacheReceiver$1;
.super Ljava/lang/Object;
.source "ClearGalleryImageCacheReceiver.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaObtainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/receiver/ClearGalleryImageCacheReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/receiver/ClearGalleryImageCacheReceiver;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/receiver/ClearGalleryImageCacheReceiver;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/oneplus/gallery/receiver/ClearGalleryImageCacheReceiver$1;->this$0:Lcom/oneplus/gallery/receiver/ClearGalleryImageCacheReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObtained(JLcom/oneplus/gallery/media/Media;)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 38
    sget-object v1, Lcom/oneplus/gallery/receiver/ClearGalleryImageCacheReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onObtained() - media: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    if-eqz p3, :cond_0

    .line 41
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    const-class v2, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/ThumbnailImageManager;

    .line 42
    .local v0, "thumbnailManager":Lcom/oneplus/gallery/media/ThumbnailImageManager;
    if-eqz v0, :cond_0

    .line 44
    sget-object v1, Lcom/oneplus/gallery/receiver/ClearGalleryImageCacheReceiver;->TAG:Ljava/lang/String;

    const-string v2, "onObtained() - invalidateThumbnailImages"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->invalidateThumbnailImages(Lcom/oneplus/gallery/media/Media;I)V

    .line 48
    .end local v0    # "thumbnailManager":Lcom/oneplus/gallery/media/ThumbnailImageManager;
    :cond_0
    return-void
.end method
