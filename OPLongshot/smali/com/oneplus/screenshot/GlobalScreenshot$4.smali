.class Lcom/oneplus/screenshot/GlobalScreenshot$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

.field final synthetic val$finisher:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 785
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->val$finisher:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 790
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1000(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;
    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$000(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 793
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$700(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;
    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1100(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 797
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$000(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$000(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->unregisterKeyEventCallBack()V

    .line 803
    :cond_0
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-nez v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->val$finisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1200(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 809
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1200(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 812
    :cond_2
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # setter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v3}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1202(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 813
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 814
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 815
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 816
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$600(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 817
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$500(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 819
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$4;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # setter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z
    invoke-static {v0, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1402(Lcom/oneplus/screenshot/GlobalScreenshot;Z)Z

    .line 820
    return-void
.end method
