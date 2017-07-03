.class Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask$1;
.super Lcom/oneplus/media/BitmapPool$Callback;
.source "ThumbnailImageManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    invoke-direct {p0}, Lcom/oneplus/media/BitmapPool$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    const/4 v1, 0x0

    # invokes: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V
    invoke-static {v0, p1, p2, p3, v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->access$700(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;Lcom/oneplus/base/Handle;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V

    .line 338
    return-void
.end method

.method public onBitmapDecoded(Lcom/oneplus/base/Handle;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask$1;->this$1:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    const/4 v1, 0x0

    # invokes: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V
    invoke-static {v0, p1, p2, p3, v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->access$700(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;Lcom/oneplus/base/Handle;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V

    .line 334
    return-void
.end method
