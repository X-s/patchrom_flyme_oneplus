.class Lcom/oneplus/gallery2/editor/NetEaseFilter$1;
.super Ljava/lang/Object;
.source "NetEaseFilter.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/NetEaseFilter;->createFinalResultImageReader(II)V
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
    .line 203
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$1;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 6
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 211
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 220
    .local v1, "image":Landroid/media/Image;
    if-nez v1, :cond_0

    .line 222
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$1;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$100(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onImageAvailable() - Final image is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .end local v1    # "image":Landroid/media/Image;
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$1;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$000(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onImageAvailable() - Error when acquire latest image"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 227
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "image":Landroid/media/Image;
    :cond_0
    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->SYNC_WAIT_FINAL_RESULT_IMAGE_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$200()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 229
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$1;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->m_IsWaitingFinalImageFrame:Z
    invoke-static {v2}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$300(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 231
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$1;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$400(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "onImageAvailable() - Not waiting final frame, skip"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    if-eqz v1, :cond_1

    .line 233
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 234
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 237
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$1;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    const/4 v4, 0x0

    # setter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->m_IsWaitingFinalImageFrame:Z
    invoke-static {v2, v4}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$302(Lcom/oneplus/gallery2/editor/NetEaseFilter;Z)Z

    .line 239
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$1;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$500(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "onImageAvailable() - Final Image: "

    invoke-static {v2, v4, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    :try_start_3
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$1;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$1;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->m_FinalResultFilteredImage:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$600(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/oneplus/media/ImageUtils;->createBitmapFromRgbaImagePlane(Landroid/media/Image;Ljava/nio/ByteBuffer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    # setter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->m_FinalResultFilteredImage:Landroid/graphics/Bitmap;
    invoke-static {v2, v4}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$602(Lcom/oneplus/gallery2/editor/NetEaseFilter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    :goto_1
    if-eqz v1, :cond_3

    .line 251
    :try_start_4
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 254
    :cond_3
    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->SYNC_WAIT_FINAL_RESULT_IMAGE_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$200()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 255
    monitor-exit v3

    goto :goto_0

    .line 244
    :catch_1
    move-exception v0

    .line 246
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$1;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$700(Lcom/oneplus/gallery2/editor/NetEaseFilter;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Error when create final result bitmap"

    invoke-static {v2, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
