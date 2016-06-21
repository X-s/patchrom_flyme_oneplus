.class public final Lcom/android/systemui_ex/qs/QSTile$H;
.super Landroid/os/Handler;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/qs/QSTile;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile$H;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>.H;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 243
    const/4 v1, 0x0

    .line 245
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v3, :cond_0

    .line 246
    const-string v1, "handleSetCallback"

    .line 247
    iget-object v4, p0, Lcom/android/systemui_ex/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/qs/QSTile;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui_ex/qs/QSTile$Callback;

    # invokes: Lcom/android/systemui_ex/qs/QSTile;->handleSetCallback(Lcom/android/systemui_ex/qs/QSTile$Callback;)V
    invoke-static {v4, v3}, Lcom/android/systemui_ex/qs/QSTile;->access$100(Lcom/android/systemui_ex/qs/QSTile;Lcom/android/systemui_ex/qs/QSTile$Callback;)V

    .line 284
    :goto_0
    return-void

    .line 248
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 249
    const-string v1, "handleClick"

    .line 250
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/qs/QSTile;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui_ex/qs/QSTile;->mAnnounceNextStateChange:Z
    invoke-static {v3, v4}, Lcom/android/systemui_ex/qs/QSTile;->access$202(Lcom/android/systemui_ex/qs/QSTile;Z)Z

    .line 251
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui_ex/qs/QSTile;->handleClick()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v2

    .line 280
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "error":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/qs/QSTile;

    iget-object v3, v3, Lcom/android/systemui_ex/qs/QSTile;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/qs/QSTile;

    iget-object v3, v3, Lcom/android/systemui_ex/qs/QSTile;->mHost:Lcom/android/systemui_ex/qs/QSTile$Host;

    invoke-interface {v3, v0, v2}, Lcom/android/systemui_ex/qs/QSTile$Host;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 252
    .end local v0    # "error":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 253
    const-string v1, "handleSecondaryClick"

    .line 254
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui_ex/qs/QSTile;->handleSecondaryClick()V

    goto :goto_0

    .line 255
    :cond_2
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 256
    const-string v1, "handleLongClick"

    .line 257
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui_ex/qs/QSTile;->handleLongClick()V

    goto :goto_0

    .line 258
    :cond_3
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    .line 259
    const-string v1, "handleRefreshState"

    .line 260
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/qs/QSTile;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    goto :goto_0

    .line 261
    :cond_4
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_6

    .line 262
    const-string v1, "handleShowDetail"

    .line 263
    iget-object v5, p0, Lcom/android/systemui_ex/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/qs/QSTile;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_5

    :goto_1
    # invokes: Lcom/android/systemui_ex/qs/QSTile;->handleShowDetail(Z)V
    invoke-static {v5, v3}, Lcom/android/systemui_ex/qs/QSTile;->access$300(Lcom/android/systemui_ex/qs/QSTile;Z)V

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_1

    .line 264
    :cond_6
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_7

    .line 265
    const-string v1, "handleUserSwitch"

    .line 266
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/qs/QSTile;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/qs/QSTile;->handleUserSwitch(I)V

    goto/16 :goto_0

    .line 267
    :cond_7
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_9

    .line 268
    const-string v1, "handleToggleStateChanged"

    .line 269
    iget-object v5, p0, Lcom/android/systemui_ex/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/qs/QSTile;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_8

    :goto_2
    # invokes: Lcom/android/systemui_ex/qs/QSTile;->handleToggleStateChanged(Z)V
    invoke-static {v5, v3}, Lcom/android/systemui_ex/qs/QSTile;->access$400(Lcom/android/systemui_ex/qs/QSTile;Z)V

    goto/16 :goto_0

    :cond_8
    move v3, v4

    goto :goto_2

    .line 270
    :cond_9
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_b

    .line 271
    const-string v1, "handleScanStateChanged"

    .line 272
    iget-object v5, p0, Lcom/android/systemui_ex/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/qs/QSTile;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_a

    :goto_3
    # invokes: Lcom/android/systemui_ex/qs/QSTile;->handleScanStateChanged(Z)V
    invoke-static {v5, v3}, Lcom/android/systemui_ex/qs/QSTile;->access$500(Lcom/android/systemui_ex/qs/QSTile;Z)V

    goto/16 :goto_0

    :cond_a
    move v3, v4

    goto :goto_3

    .line 273
    :cond_b
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_c

    .line 274
    const-string v1, "handleDestroy"

    .line 275
    iget-object v3, p0, Lcom/android/systemui_ex/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui_ex/qs/QSTile;->handleDestroy()V

    goto/16 :goto_0

    .line 277
    :cond_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method
