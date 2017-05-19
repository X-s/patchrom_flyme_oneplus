.class Lcom/android/server/policy/ScreenshotGuider$1;
.super Ljava/lang/Object;
.source "ScreenshotGuider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ScreenshotGuider;->initView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ScreenshotGuider;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ScreenshotGuider;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/server/policy/ScreenshotGuider$1;->this$0:Lcom/android/server/policy/ScreenshotGuider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/policy/ScreenshotGuider$1;->this$0:Lcom/android/server/policy/ScreenshotGuider;

    # getter for: Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/server/policy/ScreenshotGuider;->access$000(Lcom/android/server/policy/ScreenshotGuider;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/ScreenshotGuider$1;->this$0:Lcom/android/server/policy/ScreenshotGuider;

    # getter for: Lcom/android/server/policy/ScreenshotGuider;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/policy/ScreenshotGuider;->access$100(Lcom/android/server/policy/ScreenshotGuider;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/ScreenshotGuider$1;->this$0:Lcom/android/server/policy/ScreenshotGuider;

    # getter for: Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/server/policy/ScreenshotGuider;->access$000(Lcom/android/server/policy/ScreenshotGuider;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/ScreenshotGuider$1;->this$0:Lcom/android/server/policy/ScreenshotGuider;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/ScreenshotGuider;->mScreenshotGuideLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0, v1}, Lcom/android/server/policy/ScreenshotGuider;->access$002(Lcom/android/server/policy/ScreenshotGuider;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 92
    :cond_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method
