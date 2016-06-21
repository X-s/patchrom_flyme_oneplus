.class final Lcom/android/systemui_ex/statusbar/CommandQueue$H;
.super Landroid/os/Handler;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/statusbar/CommandQueue;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/statusbar/CommandQueue;Lcom/android/systemui_ex/statusbar/CommandQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/statusbar/CommandQueue;
    .param p2, "x1"    # Lcom/android/systemui_ex/statusbar/CommandQueue$1;

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui_ex/statusbar/CommandQueue;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 254
    iget v7, p1, Landroid/os/Message;->what:I

    const/high16 v8, -0x10000

    and-int v6, v7, v8

    .line 255
    .local v6, "what":I
    sparse-switch v6, :sswitch_data_0

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 257
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xffff

    and-int v2, v0, v1

    .line 258
    .local v2, "index":I
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$100(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->getViewIndex(I)I

    move-result v3

    .line 259
    .local v3, "viewIndex":I
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 261
    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 262
    .local v5, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$100(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v4

    .line 263
    .local v4, "old":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v4, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$100(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/statusbar/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$100(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$100(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/statusbar/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$100(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_0

    .line 274
    .end local v4    # "old":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v5    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$100(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$100(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->removeIcon(I)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$100(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->removeIcon(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 283
    .end local v2    # "index":I
    .end local v3    # "viewIndex":I
    :sswitch_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v1

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v7, v0}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->disable(IZ)V

    goto/16 :goto_0

    .line 286
    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->animateExpandNotificationsPanel()V

    goto/16 :goto_0

    .line 289
    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->animateCollapsePanels(I)V

    goto/16 :goto_0

    .line 292
    :sswitch_4
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->animateExpandSettingsPanel()V

    goto/16 :goto_0

    .line 295
    :sswitch_5
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v7}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->setSystemUiVisibility(II)V

    goto/16 :goto_0

    .line 298
    :sswitch_6
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v7}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_2

    :goto_1
    invoke-interface {v7, v0}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->topAppWindowChanged(Z)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 301
    :sswitch_7
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "showImeSwitcherKey"

    invoke-virtual {v10, v11, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v7, v0, v8, v9, v1}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    goto/16 :goto_0

    .line 305
    :sswitch_8
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v7}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_3

    :goto_2
    invoke-interface {v7, v0}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->showRecentApps(Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 308
    :sswitch_9
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v7}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v8

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_4

    move v7, v0

    :goto_3
    iget v9, p1, Landroid/os/Message;->arg2:I

    if-eqz v9, :cond_5

    :goto_4
    invoke-interface {v8, v7, v0}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->hideRecentApps(ZZ)V

    goto/16 :goto_0

    :cond_4
    move v7, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    .line 311
    :sswitch_a
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->toggleRecentApps()V

    goto/16 :goto_0

    .line 314
    :sswitch_b
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->preloadRecentApps()V

    goto/16 :goto_0

    .line 317
    :sswitch_c
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->cancelPreloadRecentApps()V

    goto/16 :goto_0

    .line 320
    :sswitch_d
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v7}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->setWindowState(II)V

    goto/16 :goto_0

    .line 323
    :sswitch_e
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->buzzBeepBlinked()V

    goto/16 :goto_0

    .line 326
    :sswitch_f
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->notificationLightOff()V

    goto/16 :goto_0

    .line 329
    :sswitch_10
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v7, v8}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->notificationLightPulse(III)V

    goto/16 :goto_0

    .line 332
    :sswitch_11
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui_ex/statusbar/CommandQueue;

    # getter for: Lcom/android/systemui_ex/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue;->access$200(Lcom/android/systemui_ex/statusbar/CommandQueue;)Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui_ex/statusbar/CommandQueue$Callbacks;->showScreenPinningRequest()V

    goto/16 :goto_0

    .line 255
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_2
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_5
        0x70000 -> :sswitch_6
        0x80000 -> :sswitch_7
        0x90000 -> :sswitch_a
        0xa0000 -> :sswitch_b
        0xb0000 -> :sswitch_c
        0xc0000 -> :sswitch_d
        0xd0000 -> :sswitch_8
        0xe0000 -> :sswitch_9
        0xf0000 -> :sswitch_e
        0x100000 -> :sswitch_f
        0x110000 -> :sswitch_10
        0x120000 -> :sswitch_11
    .end sparse-switch

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
