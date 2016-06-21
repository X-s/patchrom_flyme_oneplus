.class Lcom/android/systemui_ex/screenshot/GlobalScreenshot$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
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
    .line 661
    iput-object p1, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$8;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v1, 0x8

    .line 664
    iget-object v0, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$8;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$800(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 665
    iget-object v0, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$8;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$8;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 667
    return-void
.end method
