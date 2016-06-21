.class Lcom/android/systemui_ex/screenshot/GlobalScreenshot$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 639
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 625
    iget-object v0, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$800(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 626
    iget-object v0, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$800(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 628
    iget-object v0, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 629
    iget-object v0, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 630
    iget-object v0, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mBgPaddingScale:F
    invoke-static {v1}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$900(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)F

    move-result v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 631
    iget-object v0, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mBgPaddingScale:F
    invoke-static {v1}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$900(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)F

    move-result v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 632
    iget-object v0, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 634
    iget-object v0, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 635
    return-void
.end method
