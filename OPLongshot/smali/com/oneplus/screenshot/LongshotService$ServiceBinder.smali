.class Lcom/oneplus/screenshot/LongshotService$ServiceBinder;
.super Lcom/oneplus/longshot/LongScreenshotService;
.source "LongshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/LongshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceBinder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/oneplus/screenshot/LongshotService;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/LongshotService;Landroid/content/Context;ZZ)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "statusBarVisible"    # Z
    .param p4, "navBarVisible"    # Z

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    .line 75
    invoke-direct {p0, p2, p3, p4}, Lcom/oneplus/longshot/LongScreenshotService;-><init>(Landroid/content/Context;ZZ)V

    .line 76
    iput-object p2, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method


# virtual methods
.method public isHandleState()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    # getter for: Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isHandleState()Z

    move-result v0

    return v0
.end method

.method public isMoveState()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    # getter for: Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isMoveState()Z

    move-result v0

    return v0
.end method

.method public notifyScroll(Z)V
    .locals 2
    .param p1, "isOverScroll"    # Z

    .prologue
    const/4 v1, 0x1

    .line 90
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->FORCE_OVER_SCROLL:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 92
    :cond_0
    if-eqz p1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    # getter for: Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->setOverScroll(Z)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    # getter for: Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->setScroll(Z)V

    goto :goto_0
.end method

.method public start(Lcom/oneplus/longshot/ILongScreenshotCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/oneplus/longshot/ILongScreenshotCallback;

    .prologue
    .line 81
    # getter for: Lcom/oneplus/screenshot/LongshotService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/screenshot/LongshotService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Lcom/oneplus/screenshot/LongshotService$Finisher;

    iget-object v1, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    invoke-direct {v0, v1, p1}, Lcom/oneplus/screenshot/LongshotService$Finisher;-><init>(Lcom/oneplus/screenshot/LongshotService;Lcom/oneplus/longshot/ILongScreenshotCallback;)V

    .line 84
    .local v0, "finisher":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    # getter for: Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    invoke-static {v1}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->mStatusBarVisible:Z

    iget-boolean v3, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->mNavBarVisible:Z

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->start(Ljava/lang/Runnable;Lcom/oneplus/longshot/ILongScreenshotCallback;ZZ)V

    .line 85
    return-void
.end method

.method public stopLongshot()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/oneplus/screenshot/LongshotService$ServiceBinder;->this$0:Lcom/oneplus/screenshot/LongshotService;

    # getter for: Lcom/oneplus/screenshot/LongshotService;->mLongshotMode:Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    invoke-static {v0}, Lcom/oneplus/screenshot/LongshotService;->access$100(Lcom/oneplus/screenshot/LongshotService;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->stop()V

    .line 112
    return-void
.end method
