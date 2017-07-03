.class Lcom/oneplus/gallery2/editor/NetEaseFilter$2;
.super Ljava/lang/Object;
.source "NetEaseFilter.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/NetEaseFilter;->createImageReader(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/NetEaseFilter;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$2;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 6
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 278
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 287
    .local v1, "image":Landroid/media/Image;
    if-nez v1, :cond_0

    .line 289
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$2;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$900(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onImageAvailable() - Image is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .end local v1    # "image":Landroid/media/Image;
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$2;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$800(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onImageAvailable() - Error when aquire latest image"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 294
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "image":Landroid/media/Image;
    :cond_0
    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->SYNC_WAIT_IMAGE_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$1000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 296
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$2;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->m_IsWaitingImageFrame:Z
    invoke-static {v2}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$1100(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 298
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$2;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$1200(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "onImageAvailable() - Not waiting frame, skip"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    if-eqz v1, :cond_1

    .line 300
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 301
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 304
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$2;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    const/4 v4, 0x0

    # setter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->m_IsWaitingImageFrame:Z
    invoke-static {v2, v4}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$1102(Lcom/oneplus/gallery2/editor/NetEaseFilter;Z)Z

    .line 306
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$2;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$1300(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "onImageAvailable() - Image: "

    invoke-static {v2, v4, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$2;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->m_PreviewArgbBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v2}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$1400(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$2;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->m_PreviewArgbBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v2}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$1400(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    if-ge v2, v4, :cond_4

    .line 308
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$2;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    # setter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->m_PreviewArgbBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v2, v4}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$1402(Lcom/oneplus/gallery2/editor/NetEaseFilter;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 309
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$2;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    iget-object v4, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$2;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->m_PreviewArgbBuffer:Ljava/nio/ByteBuffer;
    invoke-static {v4}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$1400(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$2;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->m_FilteredImage:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$1500(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/oneplus/media/ImageUtils;->createBitmapFromRgbaImagePlane(Landroid/media/Image;Ljava/nio/ByteBuffer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    # setter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->m_FilteredImage:Landroid/graphics/Bitmap;
    invoke-static {v2, v4}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$1502(Lcom/oneplus/gallery2/editor/NetEaseFilter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 312
    if-eqz v1, :cond_5

    .line 313
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 316
    :cond_5
    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->SYNC_WAIT_IMAGE_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$1000()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 317
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
