.class public final Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;
.super Landroid/os/Handler;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 253
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>.H;"
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    .line 254
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 255
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile;Landroid/os/Looper;Lcom/android/systemui_ex/controlpanel/qs/QSTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/systemui_ex/controlpanel/qs/QSTile$1;

    .prologue
    .line 240
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>.H;"
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSTile;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;, "Lcom/android/systemui_ex/controlpanel/qs/QSTile<TTState;>.H;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 259
    const/4 v1, 0x0

    .line 261
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    if-nez v5, :cond_0

    .line 262
    const-string v1, "handleSetDetailCallback"

    .line 263
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleSetDetailCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;)V
    invoke-static {v4, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->access$100(Lcom/android/systemui_ex/controlpanel/qs/QSTile;Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailCallback;)V

    .line 303
    :goto_0
    return-void

    .line 264
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v3, :cond_1

    .line 265
    const-string v1, "handleSetCallback"

    .line 266
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleSetCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;)V
    invoke-static {v4, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->access$200(Lcom/android/systemui_ex/controlpanel/qs/QSTile;Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v2

    .line 299
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

    .line 300
    .local v0, "error":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    iget-object v3, v3, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    iget-object v3, v3, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mHost:Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;

    invoke-interface {v3, v0, v2}, Lcom/android/systemui_ex/controlpanel/qs/QSTile$Host;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 267
    .end local v0    # "error":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 268
    const-string v1, "handleClick"

    .line 269
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui_ex/controlpanel/qs/QSTile;->mAnnounceNextStateChange:Z
    invoke-static {v3, v4}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->access$302(Lcom/android/systemui_ex/controlpanel/qs/QSTile;Z)Z

    .line 270
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleClick()V

    goto :goto_0

    .line 271
    :cond_2
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 272
    const-string v1, "handleSecondaryClick"

    .line 273
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleSecondaryClick()V

    goto :goto_0

    .line 274
    :cond_3
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 275
    const-string v1, "handleLongClick"

    .line 276
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleLongClick()V

    goto :goto_0

    .line 277
    :cond_4
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    .line 278
    const-string v1, "handleRefreshState"

    .line 279
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    goto :goto_0

    .line 280
    :cond_5
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_7

    .line 281
    const-string v1, "handleShowDetail"

    .line 282
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_6

    :goto_1
    # invokes: Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleShowDetail(Z)V
    invoke-static {v5, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->access$400(Lcom/android/systemui_ex/controlpanel/qs/QSTile;Z)V

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_1

    .line 283
    :cond_7
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_8

    .line 284
    const-string v1, "handleUserSwitch"

    .line 285
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleUserSwitch(I)V

    goto/16 :goto_0

    .line 286
    :cond_8
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_a

    .line 287
    const-string v1, "handleScanStateChanged"

    .line 288
    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_9

    :goto_2
    # invokes: Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleScanStateChanged(Z)V
    invoke-static {v5, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->access$500(Lcom/android/systemui_ex/controlpanel/qs/QSTile;Z)V

    goto/16 :goto_0

    :cond_9
    move v3, v4

    goto :goto_2

    .line 289
    :cond_a
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_b

    .line 290
    const-string v1, "handleDestroy"

    .line 291
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleDestroy()V

    goto/16 :goto_0

    .line 292
    :cond_b
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_c

    .line 293
    const-string v1, "handleSetControlPanelCallback"

    .line 294
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/qs/QSTile$H;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSTile;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;

    invoke-virtual {v4, v3}, Lcom/android/systemui_ex/controlpanel/qs/QSTile;->handleSetControlPanelCallback(Lcom/android/systemui_ex/controlpanel/qs/QSTile$CallbackControlPanel;)V

    goto/16 :goto_0

    .line 296
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
