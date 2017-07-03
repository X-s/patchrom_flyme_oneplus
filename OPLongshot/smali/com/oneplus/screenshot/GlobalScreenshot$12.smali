.class Lcom/oneplus/screenshot/GlobalScreenshot$12;
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


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0

    .prologue
    .line 983
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$12;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 986
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 987
    .local v1, "t":F
    const v2, 0x3f39999a    # 0.725f

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$12;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPaddingScale:F
    invoke-static {v3}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1700(Lcom/oneplus/screenshot/GlobalScreenshot;)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3e000000    # 0.125f

    mul-float/2addr v3, v1

    sub-float v0, v2, v3

    .line 989
    .local v0, "scaleT":F
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$12;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1600(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    sub-float v3, v5, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 990
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$12;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    sub-float v3, v5, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 991
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$12;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 992
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$12;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 993
    return-void
.end method
