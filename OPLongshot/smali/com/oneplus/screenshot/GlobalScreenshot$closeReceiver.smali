.class Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "closeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;


# direct methods
.method private constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;Lcom/oneplus/screenshot/GlobalScreenshot$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;
    .param p2, "x1"    # Lcom/oneplus/screenshot/GlobalScreenshot$1;

    .prologue
    .line 610
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 612
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 616
    :cond_0
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F
    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$100(Lcom/oneplus/screenshot/GlobalScreenshot;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 617
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # invokes: Lcom/oneplus/screenshot/GlobalScreenshot;->endScreenshotAnim()V
    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$200(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 624
    :cond_1
    :goto_0
    return-void

    .line 618
    :cond_2
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 619
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0
.end method
