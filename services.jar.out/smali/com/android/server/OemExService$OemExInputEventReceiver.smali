.class final Lcom/android/server/OemExService$OemExInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OemExInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method public constructor <init>(Lcom/android/server/OemExService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/server/OemExService$OemExInputEventReceiver;->this$0:Lcom/android/server/OemExService;

    .line 345
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 346
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 350
    const/4 v4, 0x0

    .line 352
    .local v4, "handled":Z
    :try_start_0
    iget-object v8, p0, Lcom/android/server/OemExService$OemExInputEventReceiver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mIsPaused:Z
    invoke-static {v8}, Lcom/android/server/OemExService;->access$300(Lcom/android/server/OemExService;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 353
    iget-object v8, p0, Lcom/android/server/OemExService$OemExInputEventReceiver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/OemExService;->access$400(Lcom/android/server/OemExService;)Ljava/util/ArrayList;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 354
    :try_start_1
    instance-of v8, p1, Landroid/view/KeyEvent;

    if-eqz v8, :cond_1

    .line 355
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    move-object v6, v0

    .line 356
    .local v6, "keyevent":Landroid/view/KeyEvent;
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 360
    .local v2, "code":I
    iget-object v8, p0, Lcom/android/server/OemExService$OemExInputEventReceiver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/OemExService;->access$400(Lcom/android/server/OemExService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 361
    .local v7, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_3

    .line 362
    iget-object v8, p0, Lcom/android/server/OemExService$OemExInputEventReceiver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/OemExService;->access$400(Lcom/android/server/OemExService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OemExService$OemExInputCallBack;

    .line 363
    .local v1, "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/OemExService$OemExInputCallBack;->mCallBack:Lcom/oem/os/IOemExInputCallBack;
    invoke-static {v1}, Lcom/android/server/OemExService$OemExInputCallBack;->access$200(Lcom/android/server/OemExService$OemExInputCallBack;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v8

    if-eqz v8, :cond_0

    iget v8, v1, Lcom/android/server/OemExService$OemExInputCallBack;->mKeyCode:I

    if-ne v2, v8, :cond_0

    .line 365
    # getter for: Lcom/android/server/OemExService$OemExInputCallBack;->mCallBack:Lcom/oem/os/IOemExInputCallBack;
    invoke-static {v1}, Lcom/android/server/OemExService$OemExInputCallBack;->access$200(Lcom/android/server/OemExService$OemExInputCallBack;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/oem/os/IOemExInputCallBack;->onInputEvent(Landroid/view/InputEvent;)V

    .line 361
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 368
    .end local v1    # "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    .end local v2    # "code":I
    .end local v5    # "i":I
    .end local v6    # "keyevent":Landroid/view/KeyEvent;
    .end local v7    # "size":I
    :cond_1
    instance-of v8, p1, Landroid/view/MotionEvent;

    if-eqz v8, :cond_3

    .line 369
    iget-object v8, p0, Lcom/android/server/OemExService$OemExInputEventReceiver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/OemExService;->access$400(Lcom/android/server/OemExService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 370
    .restart local v7    # "size":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v7, :cond_3

    .line 371
    iget-object v8, p0, Lcom/android/server/OemExService$OemExInputEventReceiver;->this$0:Lcom/android/server/OemExService;

    # getter for: Lcom/android/server/OemExService;->mInputCallBacks:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/OemExService;->access$400(Lcom/android/server/OemExService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OemExService$OemExInputCallBack;

    .line 372
    .restart local v1    # "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    if-eqz v1, :cond_2

    # getter for: Lcom/android/server/OemExService$OemExInputCallBack;->mCallBack:Lcom/oem/os/IOemExInputCallBack;
    invoke-static {v1}, Lcom/android/server/OemExService$OemExInputCallBack;->access$200(Lcom/android/server/OemExService$OemExInputCallBack;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v8

    if-eqz v8, :cond_2

    const/4 v8, -0x1

    iget v10, v1, Lcom/android/server/OemExService$OemExInputCallBack;->mKeyCode:I

    if-ne v8, v10, :cond_2

    .line 374
    # getter for: Lcom/android/server/OemExService$OemExInputCallBack;->mCallBack:Lcom/oem/os/IOemExInputCallBack;
    invoke-static {v1}, Lcom/android/server/OemExService$OemExInputCallBack;->access$200(Lcom/android/server/OemExService$OemExInputCallBack;)Lcom/oem/os/IOemExInputCallBack;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/oem/os/IOemExInputCallBack;->onInputEvent(Landroid/view/InputEvent;)V

    .line 370
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 379
    .end local v1    # "callBackInfo":Lcom/android/server/OemExService$OemExInputCallBack;
    .end local v5    # "i":I
    .end local v7    # "size":I
    :cond_3
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    const/4 v4, 0x1

    .line 387
    :cond_4
    invoke-virtual {p0, p1, v4}, Lcom/android/server/OemExService$OemExInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 389
    :goto_2
    return-void

    .line 379
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v8
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 384
    :catch_0
    move-exception v3

    .line 385
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string v8, "OemExService"

    const-string v9, "Failure IOemExInputCallBack onInputEvent"

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 387
    invoke-virtual {p0, p1, v4}, Lcom/android/server/OemExService$OemExInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v8

    invoke-virtual {p0, p1, v4}, Lcom/android/server/OemExService$OemExInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v8
.end method
