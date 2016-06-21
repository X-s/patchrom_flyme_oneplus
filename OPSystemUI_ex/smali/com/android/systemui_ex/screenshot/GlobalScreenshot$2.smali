.class Lcom/android/systemui_ex/screenshot/GlobalScreenshot$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


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

.field final synthetic val$finisher:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$2;->val$finisher:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 569
    const-string v1, "GlobalScreenshot"

    const-string v2, "screenshop onAnimationEnd"

    invoke-static {v1, v2}, Lcom/android/systemui_ex/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v1, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$100(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->sScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$002(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 572
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$200(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui_ex/screenshot/TakeScreenshotService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 573
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$200(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 576
    iget-object v1, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$300(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 579
    iget-object v1, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # setter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v3}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$102(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 580
    iget-object v1, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui_ex/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui_ex/screenshot/GlobalScreenshot;->access$500(Lcom/android/systemui_ex/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 581
    iget-object v1, p0, Lcom/android/systemui_ex/screenshot/GlobalScreenshot$2;->val$finisher:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 582
    return-void
.end method
