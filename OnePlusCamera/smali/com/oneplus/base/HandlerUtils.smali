.class public final Lcom/oneplus/base/HandlerUtils;
.super Ljava/lang/Object;
.source "HandlerUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HandlerUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
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
    if-nez p0, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v1

    .line 30
    :cond_1
    invoke-interface {p0}, Lcom/oneplus/base/AsyncHandlerObject;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    .line 31
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    goto :goto_0
.end method

.method public static hasMessages(Lcom/oneplus/base/HandlerObject;I)Z
    .locals 2
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "what"    # I

    .prologue
    const/4 v1, 0x0

    .line 45
    if-nez p0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v1

    .line 47
    :cond_1
    invoke-interface {p0}, Lcom/oneplus/base/HandlerObject;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 48
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    goto :goto_0
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
    const/4 v1, 0x0

    .line 76
    if-nez p0, :cond_0

    .line 78
    const-string v2, "HandlerUtils"

    const-string v3, "post() - No target to post"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    return v1

    .line 81
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/base/HandlerObject;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 82
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 84
    const-string v2, "HandlerUtils"

    const-string v3, "post() - No Handler to post"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_2

    .line 90
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    goto :goto_0
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
    .line 102
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->postAndWait(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;JJ)Z

    .line 103
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
    .line 114
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/HandlerUtils;->postAndWait(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;JJ)Z

    .line 115
    return-void
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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    if-nez p0, :cond_0

    .line 130
    const-string v3, "HandlerUtils"

    const-string v4, "postAndWait() - No target to post"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    return v2

    .line 133
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/base/HandlerObject;->isDependencyThread()Z

    move-result v4

    if-nez v4, :cond_3

    .line 135
    new-array v1, v3, [Z

    aput-boolean v2, v1, v2

    .line 136
    .local v1, "result":[Z
    new-instance v0, Lcom/oneplus/base/HandlerUtils$1;

    invoke-direct {v0, p1, v1}, Lcom/oneplus/base/HandlerUtils$1;-><init>(Ljava/lang/Runnable;[Z)V

    .line 149
    .local v0, "action":Ljava/lang/Runnable;
    monitor-enter v1

    .line 151
    :try_start_0
    invoke-static {p0, v0, p2, p3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-ltz v2, :cond_2

    .line 154
    invoke-virtual {v1, p4, p5}, Ljava/lang/Object;->wait(J)V

    .line 158
    :cond_1
    :goto_1
    const/4 v2, 0x0

    aget-boolean v2, v1, v2

    monitor-exit v1

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 156
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 163
    .end local v0    # "action":Ljava/lang/Runnable;
    .end local v1    # "result":[Z
    :cond_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    move v2, v3

    .line 164
    goto :goto_0
.end method

.method public static postAsync(Lcom/oneplus/base/AsyncHandlerObject;Ljava/lang/Runnable;)Z
    .locals 2
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 177
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
    const/4 v1, 0x0

    .line 191
    if-nez p0, :cond_0

    .line 193
    const-string v2, "HandlerUtils"

    const-string v3, "postAsync() - No target to post"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return v1

    .line 196
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/base/AsyncHandlerObject;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    .line 197
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 199
    const-string v2, "HandlerUtils"

    const-string v3, "postAsync() - No Handler to post"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_2

    .line 205
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    goto :goto_0
.end method

.method public static removeAsyncCallbacks(Lcom/oneplus/base/AsyncHandlerObject;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 217
    if-nez p0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-interface {p0}, Lcom/oneplus/base/AsyncHandlerObject;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    .line 220
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static removeAsyncMessages(Lcom/oneplus/base/AsyncHandlerObject;I)V
    .locals 1
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "what"    # I

    .prologue
    .line 249
    if-nez p0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-interface {p0}, Lcom/oneplus/base/AsyncHandlerObject;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    .line 252
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public static removeAsyncMessages(Lcom/oneplus/base/AsyncHandlerObject;ILjava/lang/Object;)V
    .locals 1
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 266
    if-nez p0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-interface {p0}, Lcom/oneplus/base/AsyncHandlerObject;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    .line 269
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 233
    if-nez p0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-interface {p0}, Lcom/oneplus/base/HandlerObject;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 236
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static removeMessages(Lcom/oneplus/base/HandlerObject;I)V
    .locals 1
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "what"    # I

    .prologue
    .line 282
    if-nez p0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-interface {p0}, Lcom/oneplus/base/HandlerObject;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 285
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public static removeMessages(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)V
    .locals 1
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 299
    if-nez p0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-interface {p0}, Lcom/oneplus/base/HandlerObject;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 302
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;I)Z
    .locals 8
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "what"    # I

    .prologue
    const/4 v2, 0x0

    .line 316
    const/4 v4, 0x0

    const-wide/16 v6, 0x0

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
    .line 384
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

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
    .line 400
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
    .line 416
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
    const/4 v2, 0x0

    .line 434
    if-nez p0, :cond_0

    .line 436
    const-string v3, "HandlerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendAsyncMessage() - No target to send "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :goto_0
    return v2

    .line 439
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/base/AsyncHandlerObject;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    .line 440
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 442
    const-string v3, "HandlerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendAsyncMessage() - No Handler to send "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_1
    if-eqz p5, :cond_2

    .line 448
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 449
    :cond_2
    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 450
    .local v1, "msg":Landroid/os/Message;
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-gtz v2, :cond_3

    .line 451
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    goto :goto_0

    .line 452
    :cond_3
    invoke-virtual {v0, v1, p6, p7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    goto :goto_0
.end method

.method public static sendAsyncMessage(Lcom/oneplus/base/AsyncHandlerObject;IJ)Z
    .locals 8
    .param p0, "target"    # Lcom/oneplus/base/AsyncHandlerObject;
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .prologue
    const/4 v2, 0x0

    .line 329
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

    .line 369
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

    .line 342
    const/4 v4, 0x0

    const-wide/16 v6, 0x0

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

    .line 356
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

    .line 464
    const/4 v4, 0x0

    const-wide/16 v6, 0x0

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
    .line 532
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

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
    .line 548
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
    .line 564
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
    const/4 v2, 0x0

    .line 582
    if-nez p0, :cond_0

    .line 584
    const-string v3, "HandlerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMessage() - No target to send "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :goto_0
    return v2

    .line 587
    :cond_0
    invoke-interface {p0}, Lcom/oneplus/base/HandlerObject;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 588
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 590
    const-string v3, "HandlerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMessage() - No Handler to send "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_1
    if-eqz p5, :cond_2

    .line 596
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    :cond_2
    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 598
    .local v1, "msg":Landroid/os/Message;
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-gtz v2, :cond_3

    .line 599
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    goto :goto_0

    .line 600
    :cond_3
    invoke-virtual {v0, v1, p6, p7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    goto :goto_0
.end method

.method public static sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z
    .locals 8
    .param p0, "target"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .prologue
    const/4 v2, 0x0

    .line 477
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

    .line 517
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

    .line 490
    const/4 v4, 0x0

    const-wide/16 v6, 0x0

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

    .line 504
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
