.class Lcom/oneplus/gallery2/editor/PhotoEditor$7;
.super Ljava/lang/Thread;
.source "PhotoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/PhotoEditor;->startDecodingOriginalBitmap()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

.field final synthetic val$maxOutputHeight:I

.field final synthetic val$maxOutputWidth:I

.field final synthetic val$photoMedia:Lcom/oneplus/gallery2/media/PhotoMedia;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/media/PhotoMedia;II)V
    .locals 0

    .prologue
    .line 2563
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    iput-object p2, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->val$photoMedia:Lcom/oneplus/gallery2/media/PhotoMedia;

    iput p3, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->val$maxOutputWidth:I

    iput p4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->val$maxOutputHeight:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2567
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$1100(Lcom/oneplus/gallery2/editor/PhotoEditor;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2570
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsDecodingOriginalBitmap:Z
    invoke-static {v4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$1200(Lcom/oneplus/gallery2/editor/PhotoEditor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 2574
    :try_start_1
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$1300(Lcom/oneplus/gallery2/editor/PhotoEditor;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "startDecodingOriginalBitmap() - Wait for current decoding"

    invoke-static {v4, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$1100(Lcom/oneplus/gallery2/editor/PhotoEditor;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2582
    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    const/4 v6, 0x1

    # setter for: Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsDecodingOriginalBitmap:Z
    invoke-static {v4, v6}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$1202(Lcom/oneplus/gallery2/editor/PhotoEditor;Z)Z

    .line 2583
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    const/4 v6, 0x0

    # setter for: Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v6}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$1502(Lcom/oneplus/gallery2/editor/PhotoEditor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2584
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2587
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2588
    .local v2, "time":J
    const/4 v1, 0x0

    .line 2591
    .local v1, "originalBitmap":Landroid/graphics/Bitmap;
    :try_start_3
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    iget-object v5, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->val$photoMedia:Lcom/oneplus/gallery2/media/PhotoMedia;

    iget v6, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->val$maxOutputWidth:I

    iget v7, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->val$maxOutputHeight:I

    # invokes: Lcom/oneplus/gallery2/editor/PhotoEditor;->decodeOriginalBitmap(Lcom/oneplus/gallery2/media/PhotoMedia;II)Landroid/graphics/Bitmap;
    invoke-static {v4, v5, v6, v7}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$1600(Lcom/oneplus/gallery2/editor/PhotoEditor;Lcom/oneplus/gallery2/media/PhotoMedia;II)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    .line 2597
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 2600
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$1100(Lcom/oneplus/gallery2/editor/PhotoEditor;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2602
    :try_start_4
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsDecodingOriginalBitmap:Z
    invoke-static {v4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$1200(Lcom/oneplus/gallery2/editor/PhotoEditor;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2604
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$1800(Lcom/oneplus/gallery2/editor/PhotoEditor;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "startDecodingOriginalBitmap() - Cancelled"

    invoke-static {v4, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2612
    :goto_2
    return-void

    .line 2577
    .end local v1    # "originalBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "time":J
    :catch_0
    move-exception v0

    .line 2579
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_5
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$1400(Lcom/oneplus/gallery2/editor/PhotoEditor;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "startDecodingOriginalBitmap() - Interrupted"

    invoke-static {v4, v6, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2584
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 2593
    .restart local v1    # "originalBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "time":J
    :catch_1
    move-exception v0

    .line 2595
    .restart local v0    # "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$1700(Lcom/oneplus/gallery2/editor/PhotoEditor;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "startDecodingOriginalBitmap() - Fail to decode"

    invoke-static {v4, v5, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2607
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    :try_start_6
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery2/editor/PhotoEditor;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$1900(Lcom/oneplus/gallery2/editor/PhotoEditor;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "startDecodingOriginalBitmap() - Completed"

    invoke-static {v4, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    # setter for: Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v1}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$1502(Lcom/oneplus/gallery2/editor/PhotoEditor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2609
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    const/4 v6, 0x0

    # setter for: Lcom/oneplus/gallery2/editor/PhotoEditor;->m_IsDecodingOriginalBitmap:Z
    invoke-static {v4, v6}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$1202(Lcom/oneplus/gallery2/editor/PhotoEditor;Z)Z

    .line 2610
    iget-object v4, p0, Lcom/oneplus/gallery2/editor/PhotoEditor$7;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditor;

    # getter for: Lcom/oneplus/gallery2/editor/PhotoEditor;->m_OriginalBitmapLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/oneplus/gallery2/editor/PhotoEditor;->access$1100(Lcom/oneplus/gallery2/editor/PhotoEditor;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 2611
    monitor-exit v5

    goto :goto_2

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4
.end method
