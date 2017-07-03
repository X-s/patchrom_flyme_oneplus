.class Lcom/oneplus/screenshot/GlobalScreenshot$2;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$2;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 550
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$2;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$000(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$2;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$000(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$2;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;
    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$000(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 553
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$2;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$100(Lcom/oneplus/screenshot/GlobalScreenshot;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$2;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # invokes: Lcom/oneplus/screenshot/GlobalScreenshot;->endScreenshotAnim()V
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$200(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$2;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$2;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0
.end method
