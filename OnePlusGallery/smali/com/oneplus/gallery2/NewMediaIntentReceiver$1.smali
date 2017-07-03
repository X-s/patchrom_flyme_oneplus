.class final Lcom/oneplus/gallery2/NewMediaIntentReceiver$1;
.super Ljava/lang/Object;
.source "NewMediaIntentReceiver.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/NewMediaIntentReceiver;->onNewMediaThumbnailCreated(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$thumb:Landroid/graphics/Bitmap;

.field final synthetic val$thumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/ThumbnailImageManager;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/oneplus/gallery2/NewMediaIntentReceiver$1;->val$thumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    iput-object p2, p0, Lcom/oneplus/gallery2/NewMediaIntentReceiver$1;->val$thumb:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/gallery2/media/MediaSource;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p5, "flags"    # I

    .prologue
    .line 94
    if-eqz p4, :cond_0

    .line 95
    iget-object v0, p0, Lcom/oneplus/gallery2/NewMediaIntentReceiver$1;->val$thumbManager:Lcom/oneplus/gallery2/media/ThumbnailImageManager;

    iget-object v1, p0, Lcom/oneplus/gallery2/NewMediaIntentReceiver$1;->val$thumb:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-interface {v0, p4, v1, v2}, Lcom/oneplus/gallery2/media/ThumbnailImageManager;->setTempThumbnailImage(Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;I)Z

    .line 96
    :cond_0
    return-void
.end method
