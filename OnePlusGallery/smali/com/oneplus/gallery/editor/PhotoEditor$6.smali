.class Lcom/oneplus/gallery/editor/PhotoEditor$6;
.super Ljava/lang/Thread;
.source "PhotoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/editor/PhotoEditor;->startDecodingOriginalBitmap()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

.field final synthetic val$maxOutputHeight:I

.field final synthetic val$maxOutputWidth:I

.field final synthetic val$photoMedia:Lcom/oneplus/gallery/media/PhotoMedia;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/media/PhotoMedia;II)V
    .locals 0

    .prologue
    .line 2347
    iput-object p1, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    iput-object p2, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->val$photoMedia:Lcom/oneplus/gallery/media/PhotoMedia;

    iput p3, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->val$maxOutputWidth:I

    iput p4, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->val$maxOutputHeight:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2351
    iget-object v4, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$1100(Lcom/oneplus/gallery/editor/PhotoEditor;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2354
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsDecodingOriginalBitmap:Z
    invoke-static {v4}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$1200(Lcom/oneplus/gallery/editor/PhotoEditor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 2358
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$1300(Lcom/oneplus/gallery/editor/PhotoEditor;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "startDecodingOriginalBitmap() - Wait for current decoding"

    invoke-static {v4, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    iget-object v4, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$1100(Lcom/oneplus/gallery/editor/PhotoEditor;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2366
    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    const/4 v6, 0x1

    # setter for: Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsDecodingOriginalBitmap:Z
    invoke-static {v4, v6}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$1202(Lcom/oneplus/gallery/editor/PhotoEditor;Z)Z

    .line 2367
    iget-object v4, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    const/4 v6, 0x0

    # setter for: Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v6}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$1502(Lcom/oneplus/gallery/editor/PhotoEditor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2368
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2372
    .local v2, "time":J
    const/4 v1, 0x0

    .line 2375
    .local v1, "originalBitmap":Landroid/graphics/Bitmap;
    :try_start_3
    iget-object v4, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    iget-object v5, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->val$photoMedia:Lcom/oneplus/gallery/media/PhotoMedia;

    iget v6, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->val$maxOutputWidth:I

    iget v7, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->val$maxOutputHeight:I

    # invokes: Lcom/oneplus/gallery/editor/PhotoEditor;->decodeOriginalBitmap(Lcom/oneplus/gallery/media/PhotoMedia;II)Landroid/graphics/Bitmap;
    invoke-static {v4, v5, v6, v7}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$1600(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/media/PhotoMedia;II)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    .line 2381
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 2384
    iget-object v4, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$1100(Lcom/oneplus/gallery/editor/PhotoEditor;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2386
    :try_start_4
    iget-object v4, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsDecodingOriginalBitmap:Z
    invoke-static {v4}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$1200(Lcom/oneplus/gallery/editor/PhotoEditor;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2388
    iget-object v4, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$1800(Lcom/oneplus/gallery/editor/PhotoEditor;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "startDecodingOriginalBitmap() - Cancelled"

    invoke-static {v4, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2396
    :goto_2
    return-void

    .line 2361
    .end local v1    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "time":J
    :catch_0
    move-exception v0

    .line 2363
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_5
    iget-object v4, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$1400(Lcom/oneplus/gallery/editor/PhotoEditor;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "startDecodingOriginalBitmap() - Interrupted"

    invoke-static {v4, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2368
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 2377
    .restart local v1    # "originalBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "time":J
    :catch_1
    move-exception v0

    .line 2379
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$1700(Lcom/oneplus/gallery/editor/PhotoEditor;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "startDecodingOriginalBitmap() - Fail to decode"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2391
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    :try_start_6
    iget-object v4, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery/editor/PhotoEditor;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$1900(Lcom/oneplus/gallery/editor/PhotoEditor;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "startDecodingOriginalBitmap() - Completed"

    invoke-static {v4, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    iget-object v4, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    # setter for: Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$1502(Lcom/oneplus/gallery/editor/PhotoEditor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2393
    iget-object v4, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    const/4 v6, 0x0

    # setter for: Lcom/oneplus/gallery/editor/PhotoEditor;->m_IsDecodingOriginalBitmap:Z
    invoke-static {v4, v6}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$1202(Lcom/oneplus/gallery/editor/PhotoEditor;Z)Z

    .line 2394
    iget-object v4, p0, Lcom/oneplus/gallery/editor/PhotoEditor$6;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$1100(Lcom/oneplus/gallery/editor/PhotoEditor;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 2395
    monitor-exit v5

    goto :goto_2

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4
.end method
