.class final Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;
.super Landroid/os/Handler;
.source "ThumbnailImageManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;
    }
.end annotation


# static fields
.field private static final CALLBACK_THUMB_DECODED:I = 0x1


# instance fields
.field private volatile m_IsCallbacksScheduled:Z

.field private final m_PendingCallbacks:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PerformCallbacksRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    .line 209
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 187
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->m_PendingCallbacks:Ljava/util/Deque;

    .line 188
    new-instance v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$1;-><init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->m_PerformCallbacksRunnable:Ljava/lang/Runnable;

    .line 210
    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->performCallbacks()V

    return-void
.end method

.method private callOnThumbnailImageDecoded(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;)V
    .locals 5
    .param p1, "callbackArgs"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;

    .prologue
    .line 228
    iget-object v0, p1, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;->decodingTask:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    .line 241
    .local v0, "decodingTask":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;
    iget-object v1, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->callback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    if-nez v1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v1, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->decodingHandle:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->callback:Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;

    iget-object v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->decodingHandle:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingHandle;

    iget-object v3, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;->media:Lcom/oneplus/gallery2/media/Media;

    iget-object v4, p1, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;->thumb:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, v3, v4}, Lcom/oneplus/gallery2/media/ThumbnailImageManager$DecodingCallback;->onThumbnailImageDecoded(Lcom/oneplus/base/Handle;Lcom/oneplus/gallery2/media/Media;Landroid/graphics/Bitmap;)V

    .line 246
    iget-boolean v1, p1, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;->completed:Z

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->this$0:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;

    # invokes: Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->onDecodingTaskCompleted(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;)V
    invoke-static {v1, v0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;->access$600(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;)V

    goto :goto_0
.end method

.method private performCallbacks()V
    .locals 4

    .prologue
    .line 254
    iget-object v3, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->m_PendingCallbacks:Ljava/util/Deque;

    monitor-enter v3

    .line 256
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->m_PendingCallbacks:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->m_PendingCallbacks:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;

    .line 260
    .local v0, "callbackArgs":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;
    iget v2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;->callbackType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 263
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->callOnThumbnailImageDecoded(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;)V

    goto :goto_0

    .line 270
    .end local v0    # "callbackArgs":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 267
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->m_PendingCallbacks:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->clear()V

    .line 269
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->m_IsCallbacksScheduled:Z

    .line 270
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    return-void

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private scheduleCallbacks()V
    .locals 4

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 278
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->m_IsCallbacksScheduled:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->m_PerformCallbacksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->m_IsCallbacksScheduled:Z

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->performCallbacks()V

    .line 290
    :cond_1
    :goto_0
    return-void

    .line 286
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->m_IsCallbacksScheduled:Z

    if-nez v0, :cond_1

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->m_IsCallbacksScheduled:Z

    .line 289
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->m_PerformCallbacksRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public callOnThumbnailImageDecoded(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "decodingTask"    # Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;
    .param p2, "thumb"    # Landroid/graphics/Bitmap;
    .param p3, "completed"    # Z

    .prologue
    .line 215
    new-instance v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;-><init>(Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$1;)V

    .line 216
    .local v0, "callbackArgs":Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;
    const/4 v1, 0x1

    iput v1, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;->callbackType:I

    .line 217
    iput-object p1, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;->decodingTask:Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$DecodingTask;

    .line 218
    iput-object p2, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;->thumb:Landroid/graphics/Bitmap;

    .line 219
    iput-boolean p3, v0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler$CallbackArgs;->completed:Z

    .line 220
    iget-object v2, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->m_PendingCallbacks:Ljava/util/Deque;

    monitor-enter v2

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->m_PendingCallbacks:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 223
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerImpl$CallbackHandler;->scheduleCallbacks()V

    .line 224
    monitor-exit v2

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
