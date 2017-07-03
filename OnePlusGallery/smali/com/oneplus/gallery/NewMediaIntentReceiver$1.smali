.class final Lcom/oneplus/gallery/NewMediaIntentReceiver$1;
.super Ljava/lang/Object;
.source "NewMediaIntentReceiver.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaObtainCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/NewMediaIntentReceiver;->onNewMediaThumbnailCreated(Landroid/content/Intent;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$thumb:Landroid/graphics/Bitmap;

.field final synthetic val$thumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/ThumbnailImageManager;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/oneplus/gallery/NewMediaIntentReceiver$1;->val$thumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    iput-object p2, p0, Lcom/oneplus/gallery/NewMediaIntentReceiver$1;->val$thumb:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObtained(JLcom/oneplus/gallery/media/Media;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/oneplus/gallery/NewMediaIntentReceiver$1;->val$thumbManager:Lcom/oneplus/gallery/media/ThumbnailImageManager;

    iget-object v1, p0, Lcom/oneplus/gallery/NewMediaIntentReceiver$1;->val$thumb:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-interface {v0, p3, v1, v2}, Lcom/oneplus/gallery/media/ThumbnailImageManager;->setTempThumbnailImage(Lcom/oneplus/gallery/media/Media;Landroid/graphics/Bitmap;I)Z

    .line 102
    return-void
.end method
