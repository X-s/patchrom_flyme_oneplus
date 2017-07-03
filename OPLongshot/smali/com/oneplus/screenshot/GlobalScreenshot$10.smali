.class Lcom/oneplus/screenshot/GlobalScreenshot$10;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

.field final synthetic val$flashAlphaInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic val$scaleInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$10;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$10;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$10;->val$flashAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 954
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 955
    .local v1, "t":F
    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$10;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPaddingScale:F
    invoke-static {v3}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1700(Lcom/oneplus/screenshot/GlobalScreenshot;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$10;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    const v4, 0x3e8ccccc    # 0.27499998f

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 958
    .local v0, "scaleT":F
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$10;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1600(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$10;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 959
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$10;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 960
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$10;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 961
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$10;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 962
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$10;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$10;->val$flashAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 963
    return-void
.end method
