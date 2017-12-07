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
    .param p1, "this$0"    # Lcom/android/server/policy/ScreenshotGuider;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/server/policy/ScreenshotGuider$1;->this$0:Lcom/android/server/policy/ScreenshotGuider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v1, p0, Lcom/android/server/policy/ScreenshotGuider$1;->this$0:Lcom/android/server/policy/ScreenshotGuider;

    invoke-static {v1}, Lcom/android/server/policy/ScreenshotGuider;->-get0(Lcom/android/server/policy/ScreenshotGuider;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/ScreenshotGuider$1;->this$0:Lcom/android/server/policy/ScreenshotGuider;

    invoke-static {v1}, Lcom/android/server/policy/ScreenshotGuider;->-get1(Lcom/android/server/policy/ScreenshotGuider;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/ScreenshotGuider$1;->this$0:Lcom/android/server/policy/ScreenshotGuider;

    invoke-static {v2}, Lcom/android/server/policy/ScreenshotGuider;->-get0(Lcom/android/server/policy/ScreenshotGuider;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/ScreenshotGuider$1;->this$0:Lcom/android/server/policy/ScreenshotGuider;

    invoke-static {v1, v3}, Lcom/android/server/policy/ScreenshotGuider;->-set0(Lcom/android/server/policy/ScreenshotGuider;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 83
    :cond_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
