.class Lcom/android/server/policy/UcGlobalActions$5;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/UcPowerScrollView$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/UcGlobalActions;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/UcGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/UcGlobalActions;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/server/policy/UcGlobalActions$5;->this$0:Lcom/android/server/policy/UcGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$5;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # getter for: Lcom/android/server/policy/UcGlobalActions;->isShuttingDown:Z
    invoke-static {v0}, Lcom/android/server/policy/UcGlobalActions;->access$000(Lcom/android/server/policy/UcGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$5;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # getter for: Lcom/android/server/policy/UcGlobalActions;->mOverlayScrollView:Lcom/android/server/policy/UcOverlayScrollView;
    invoke-static {v0}, Lcom/android/server/policy/UcGlobalActions;->access$600(Lcom/android/server/policy/UcGlobalActions;)Lcom/android/server/policy/UcOverlayScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/UcOverlayScrollView;->isPhaseInFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$5;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # getter for: Lcom/android/server/policy/UcGlobalActions;->mScreenshotScrollView:Lcom/android/server/policy/UcScreenshotScrollView;
    invoke-static {v0}, Lcom/android/server/policy/UcGlobalActions;->access$800(Lcom/android/server/policy/UcGlobalActions;)Lcom/android/server/policy/UcScreenshotScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/UcScreenshotScrollView;->isPhaseInFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$5;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # getter for: Lcom/android/server/policy/UcGlobalActions;->mIconScrollView:Lcom/android/server/policy/UcIconScrollView;
    invoke-static {v0}, Lcom/android/server/policy/UcGlobalActions;->access$700(Lcom/android/server/policy/UcGlobalActions;)Lcom/android/server/policy/UcIconScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/UcIconScrollView;->isPhaseInFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$5;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # getter for: Lcom/android/server/policy/UcGlobalActions;->mOverlayScrollView:Lcom/android/server/policy/UcOverlayScrollView;
    invoke-static {v0}, Lcom/android/server/policy/UcGlobalActions;->access$600(Lcom/android/server/policy/UcGlobalActions;)Lcom/android/server/policy/UcOverlayScrollView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/UcOverlayScrollView;->scrollSync(IIII)V

    .line 320
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$5;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # getter for: Lcom/android/server/policy/UcGlobalActions;->mScreenshotScrollView:Lcom/android/server/policy/UcScreenshotScrollView;
    invoke-static {v0}, Lcom/android/server/policy/UcGlobalActions;->access$800(Lcom/android/server/policy/UcGlobalActions;)Lcom/android/server/policy/UcScreenshotScrollView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/UcScreenshotScrollView;->scrollSync(IIII)V

    .line 321
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$5;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # getter for: Lcom/android/server/policy/UcGlobalActions;->mIconScrollView:Lcom/android/server/policy/UcIconScrollView;
    invoke-static {v0}, Lcom/android/server/policy/UcGlobalActions;->access$700(Lcom/android/server/policy/UcGlobalActions;)Lcom/android/server/policy/UcIconScrollView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/UcIconScrollView;->scrollSync(IIII)V

    goto :goto_0
.end method

.method public onScrollToExit()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$5;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # getter for: Lcom/android/server/policy/UcGlobalActions;->mOverlayScrollView:Lcom/android/server/policy/UcOverlayScrollView;
    invoke-static {v0}, Lcom/android/server/policy/UcGlobalActions;->access$600(Lcom/android/server/policy/UcGlobalActions;)Lcom/android/server/policy/UcOverlayScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/UcOverlayScrollView;->exit()V

    .line 333
    return-void
.end method

.method public onScrollToShutdown()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$5;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # getter for: Lcom/android/server/policy/UcGlobalActions;->mIconScrollView:Lcom/android/server/policy/UcIconScrollView;
    invoke-static {v0}, Lcom/android/server/policy/UcGlobalActions;->access$700(Lcom/android/server/policy/UcGlobalActions;)Lcom/android/server/policy/UcIconScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/UcIconScrollView;->shutdown()V

    .line 327
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$5;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # invokes: Lcom/android/server/policy/UcGlobalActions;->onShutDown()V
    invoke-static {v0}, Lcom/android/server/policy/UcGlobalActions;->access$900(Lcom/android/server/policy/UcGlobalActions;)V

    .line 328
    return-void
.end method
