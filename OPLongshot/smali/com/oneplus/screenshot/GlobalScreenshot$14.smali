.class Lcom/oneplus/screenshot/GlobalScreenshot$14;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

.field final synthetic val$finalPos:Landroid/graphics/PointF;

.field final synthetic val$scaleInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/graphics/PointF;)V
    .locals 0

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$finalPos:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1023
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1024
    .local v1, "t":F
    const v2, 0x3f39999a    # 0.725f

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPaddingScale:F
    invoke-static {v3}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1700(Lcom/oneplus/screenshot/GlobalScreenshot;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    const v4, 0x3e8cccce    # 0.27500004f

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 1027
    .local v0, "scaleT":F
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1600(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    sub-float v3, v5, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1028
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1029
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1030
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1031
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$finalPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1032
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$14;->val$finalPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1033
    return-void
.end method
