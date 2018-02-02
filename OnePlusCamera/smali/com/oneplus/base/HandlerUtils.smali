.class public final Lcom/oneplus/base/HandlerUtils;
.super Ljava/lang/Object;
.source "HandlerUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HandlerUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasAsyncMessages(Lcom/oneplus/base/AsyncHandlerObject;I)Z
    .locals 2
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "what"    # I

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return v1

    .line 30
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/base/AsyncHandlerObject;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    .line 31
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 32
    return v1

    .line 33
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    return v1
.end method

.method public static hasMessages(Lcom/oneplus/base/HandlerObject;I)Z
    .locals 2
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "what"    # I

    .prologue
    const/4 v1, 0x0

    .line 45
    if-nez p0, :cond_0

    .line 46
    return v1

    .line 47
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/base/HandlerObject;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 48
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 49
    return v1

    .line 50
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    return v1
.end method

.method public static post(Landroid/os/Handler;Ljava/lang/Runnable;J)Z
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 105
    const-string/jumbo v0, "HandlerUtils"

    const-string/jumbo v1, "post() - No handler to post"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    return v0

    .line 110
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 111
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0

    .line 112
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public static post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z
    .locals 2
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 62
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public static post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z
    .locals 4
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    const/4 v3, 0x0

    .line 76
    if-nez p0, :cond_0

    .line 78
    const-string/jumbo v1, "HandlerUtils"

    const-string/jumbo v2, "post() - No target to post"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return v3

    .line 81
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/base/HandlerObject;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 82
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 84
    const-string/jumbo v1, "HandlerUtils"

    const-string/jumbo v2, "post() - No Handler to post"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return v3

    .line 89
    :cond_1
    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/base/HandlerUtils;->post(Landroid/os/Handler;Ljava/lang/Runnable;J)Z

    move-result v1

    return v1
.end method

.method public static postAndWait(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V
    .locals 6
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "r"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 123
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->postAndWait(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;JJ)Z

    .line 121
    return-void
.end method

.method public static postAndWait(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)V
    .locals 6
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 135
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->postAndWait(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;JJ)Z

    .line 133
    return-void
.end method

.method public static postAndWait(Landroid/os/Handler;Ljava/lang/Runnable;JJ)Z
    .locals 6
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J
    .param p4, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 168
    if-nez p0, :cond_0

    .line 170
    const-string/jumbo v2, "HandlerUtils"

    const-string/jumbo v3, "postAndWait() - No handler to post"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return v4

    .line 173
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 175
    new-array v1, v5, [Z

    aput-boolean v4, v1, v4

    .line 176
    .local v1, "result":[Z
    new-instance v0, Lcom/oneplus/base/HandlerUtils$1;

    invoke-direct {v0, p1, v1}, Lcom/oneplus/base/HandlerUtils$1;-><init>(Ljava/lang/Runnable;[Z)V

    .line 189
    .local v0, "action":Ljava/lang/Runnable;
    monitor-enter v1

    .line 191
    :try_start_0
    invoke-static {p0, v0, p2, p3}, Lcom/oneplus/base/HandlerUtils;->post(Landroid/os/Handler;Ljava/lang/Runnable;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-ltz v2, :cond_2

    .line 194
    invoke-virtual {v1, p4, p5}, Ljava/lang/Object;->wait(J)V

    .line 198
    :cond_1
    :goto_0
    const/4 v2, 0x0

    aget-boolean v2, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v2

    .line 196
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 203
    .end local v0    # "action":Ljava/lang/Runnable;
    .end local v1    # "result":[Z
    :cond_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 204
    return v5
.end method

.method public static postAndWait(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;JJ)Z
    .locals 6
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J
    .param p4, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 149
    if-nez p0, :cond_0

    .line 151
    const-string/jumbo v0, "HandlerUtils"

    const-string/jumbo v1, "postAndWait() - No target to post"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/base/HandlerObject;->getHandler()Landroid/os/Handler;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->postAndWait(Landroid/os/Handler;Ljava/lang/Runnable;JJ)Z

    move-result v0

    return v0
.end method

.method public static postAsync(Lcom/oneplus/base/AsyncHandlerObject;Ljava/lang/Runnable;)Z
    .locals 2
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 217
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/oneplus/base/HandlerUtils;->postAsync(Lcom/oneplus/base/AsyncHandlerObject;Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public static postAsync(Lcom/oneplus/base/AsyncHandlerObject;Ljava/lang/Runnable;J)Z
    .locals 4
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    const/4 v3, 0x0

    .line 231
    if-nez p0, :cond_0

    .line 233
    const-string/jumbo v1, "HandlerUtils"

    const-string/jumbo v2, "postAsync() - No target to post"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return v3

    .line 236
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/base/AsyncHandlerObject;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    .line 237
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 239
    const-string/jumbo v1, "HandlerUtils"

    const-string/jumbo v2, "postAsync() - No Handler to post"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return v3

    .line 244
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_2

    .line 245
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    return v1

    .line 246
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    return v1
.end method

.method public static removeAsyncCallbacks(Lcom/oneplus/base/AsyncHandlerObject;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 257
    if-nez p0, :cond_0

    .line 258
    return-void

    .line 259
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/base/AsyncHandlerObject;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    .line 260
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 261
    return-void

    .line 262
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 255
    return-void
.end method

.method public static removeAsyncMessages(Lcom/oneplus/base/AsyncHandlerObject;I)V
    .locals 1
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "what"    # I

    .prologue
    .line 289
    if-nez p0, :cond_0

    .line 290
    return-void

    .line 291
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/base/AsyncHandlerObject;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    .line 292
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 293
    return-void

    .line 294
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    return-void
.end method

.method public static removeAsyncMessages(Lcom/oneplus/base/AsyncHandlerObject;ILjava/lang/Object;)V
    .locals 1
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 306
    if-nez p0, :cond_0

    .line 307
    return-void

    .line 308
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/base/AsyncHandlerObject;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    .line 309
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 310
    return-void

    .line 311
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 304
    return-void
.end method

.method public static removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 273
    if-nez p0, :cond_0

    .line 274
    return-void

    .line 275
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/base/HandlerObject;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 276
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 277
    return-void

    .line 278
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method

.method public static removeMessages(Lcom/oneplus/base/HandlerObject;I)V
    .locals 1
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "what"    # I

    .prologue
    .line 322
    if-nez p0, :cond_0

    .line 323
    return-void

    .line 324
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/base/HandlerObject;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 325
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 326
    return-void

    .line 327
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    return-void
.end method

.method public static removeMessages(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)V
    .locals 1
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 339
    if-nez p0, :cond_0

    .line 340
    return-void

    .line 341
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/base/HandlerObject;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 342
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 343
    return-void

    .line 344
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 337
    return-void
.end method

.method public static sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;I)Z
    .locals 8
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "what"    # I

    .prologue
    const/4 v2, 0x0

    .line 356
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IIILjava/lang/Object;ZJ)Z

    move-result v0

    return v0
.end method

.method public static sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IIILjava/lang/Object;)Z
    .locals 8
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 424
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IIILjava/lang/Object;ZJ)Z

    move-result v0

    return v0
.end method

.method public static sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IIILjava/lang/Object;J)Z
    .locals 9
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delayMillis"    # J

    .prologue
    .line 440
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IIILjava/lang/Object;ZJ)Z

    move-result v0

    return v0
.end method

.method public static sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IIILjava/lang/Object;Z)Z
    .locals 8
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "uniqueMessage"    # Z

    .prologue
    .line 456
    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IIILjava/lang/Object;ZJ)Z

    move-result v0

    return v0
.end method

.method public static sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IIILjava/lang/Object;ZJ)Z
    .locals 6
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "uniqueMessage"    # Z
    .param p6, "delayMillis"    # J

    .prologue
    const/4 v5, 0x0

    .line 474
    if-nez p0, :cond_0

    .line 476
    const-string/jumbo v2, "HandlerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendAsyncMessage() - No target to send "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return v5

    .line 479
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/base/AsyncHandlerObject;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    .line 480
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 482
    const-string/jumbo v2, "HandlerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendAsyncMessage() - No Handler to send "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return v5

    .line 487
    :cond_1
    if-eqz p5, :cond_2

    .line 488
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 489
    :cond_2
    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 490
    .local v1, "msg":Landroid/os/Message;
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-gtz v2, :cond_3

    .line 491
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    return v2

    .line 492
    :cond_3
    invoke-virtual {v0, v1, p6, p7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    return v2
.end method

.method public static sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IJ)Z
    .locals 8
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .prologue
    const/4 v2, 0x0

    .line 369
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v5, v2

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IIILjava/lang/Object;ZJ)Z

    move-result v0

    return v0
.end method

.method public static sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;ILjava/lang/Object;)Z
    .locals 8
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 409
    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move-object v4, p2

    move v5, v2

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IIILjava/lang/Object;ZJ)Z

    move-result v0

    return v0
.end method

.method public static sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IZ)Z
    .locals 8
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "what"    # I
    .param p2, "uniqueMessage"    # Z

    .prologue
    const/4 v2, 0x0

    .line 382
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v5, p2

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IIILjava/lang/Object;ZJ)Z

    move-result v0

    return v0
.end method

.method public static sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IZJ)Z
    .locals 9
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "what"    # I
    .param p2, "uniqueMessage"    # Z
    .param p3, "delayMillis"    # J

    .prologue
    const/4 v2, 0x0

    .line 396
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v5, p2

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IIILjava/lang/Object;ZJ)Z

    move-result v0

    return v0
.end method

.method public static sendMessage(Lcom/oneplus/base/HandlerObject;I)Z
    .locals 8
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "what"    # I

    .prologue
    const/4 v2, 0x0

    .line 504
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    move-result v0

    return v0
.end method

.method public static sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z
    .locals 8
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 572
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    move-result v0

    return v0
.end method

.method public static sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;J)Z
    .locals 9
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delayMillis"    # J

    .prologue
    .line 588
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    move-result v0

    return v0
.end method

.method public static sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;Z)Z
    .locals 8
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "uniqueMessage"    # Z

    .prologue
    .line 604
    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    move-result v0

    return v0
.end method

.method public static sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z
    .locals 6
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "uniqueMessage"    # Z
    .param p6, "delayMillis"    # J

    .prologue
    const/4 v5, 0x0

    .line 622
    if-nez p0, :cond_0

    .line 624
    const-string/jumbo v2, "HandlerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendMessage() - No target to send "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    return v5

    .line 627
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/base/HandlerObject;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 628
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 630
    const-string/jumbo v2, "HandlerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendMessage() - No Handler to send "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    return v5

    .line 635
    :cond_1
    if-eqz p5, :cond_2

    .line 636
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 637
    :cond_2
    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 638
    .local v1, "msg":Landroid/os/Message;
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-gtz v2, :cond_3

    .line 639
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    return v2

    .line 640
    :cond_3
    invoke-virtual {v0, v1, p6, p7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    return v2
.end method

.method public static sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z
    .locals 8
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .prologue
    const/4 v2, 0x0

    .line 517
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v5, v2

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    move-result v0

    return v0
.end method

.method public static sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z
    .locals 8
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 557
    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move-object v4, p2

    move v5, v2

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    move-result v0

    return v0
.end method

.method public static sendMessage(Lcom/oneplus/base/HandlerObject;IZ)Z
    .locals 8
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "what"    # I
    .param p2, "uniqueMessage"    # Z

    .prologue
    const/4 v2, 0x0

    .line 530
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v5, p2

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    move-result v0

    return v0
.end method

.method public static sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z
    .locals 9
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "what"    # I
    .param p2, "uniqueMessage"    # Z
    .param p3, "delayMillis"    # J

    .prologue
    const/4 v2, 0x0

    .line 544
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v5, p2

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;ZJ)Z

    move-result v0

    return v0
.end method
