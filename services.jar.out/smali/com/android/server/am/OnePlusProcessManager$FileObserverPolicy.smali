.class Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;
.super Landroid/os/FileObserver;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileObserverPolicy"
.end annotation


# instance fields
.field mDirPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Ljava/lang/String;)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 407
    const/16 v0, 0xfff

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->mDirPath:Ljava/lang/String;

    .line 408
    iput-object p2, p0, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->mDirPath:Ljava/lang/String;

    .line 409
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 10
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x66

    const/16 v8, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x7d0

    .line 413
    sget-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v3, :cond_0

    .line 414
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FO]:FileObserverPolicy.onEvent(): path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    if-nez p2, :cond_2

    .line 439
    :cond_1
    :goto_0
    return-void

    .line 421
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->mDirPath:Ljava/lang/String;

    invoke-direct {v0, v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 423
    const-string v3, "OnePlusProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FO]:FileObserverPolicy.onEvent(): not exists -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    move v3, v1

    :goto_1
    const/16 v4, 0x8

    if-ne p1, v4, :cond_5

    :goto_2
    or-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 428
    const-string v1, "bpm_sts.xml"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 429
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$000(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 430
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$000(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    move v3, v2

    .line 427
    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    .line 431
    :cond_6
    const-string v1, "pkg.xml"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 432
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$000(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$000(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 434
    :cond_7
    const-string v1, "brd.xml"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$000(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 436
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOneplusProcessHander:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$000(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
