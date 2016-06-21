.class Lcom/android/systemui_ex/screenshot/GlobalScreenshot$3;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V
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
    .line 584
    iput-object p1, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;
    invoke-static {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$600(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/media/MediaActionSound;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 590
    iget-object v0, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 591
    iget-object v0, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->buildLayer()V

    .line 592
    iget-object v0, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$700(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 593
    return-void
.end method
