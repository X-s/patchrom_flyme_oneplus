.class public Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyEventCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1163
    if-nez p1, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$100(Lcom/oneplus/screenshot/GlobalScreenshot;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 1169
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # invokes: Lcom/oneplus/screenshot/GlobalScreenshot;->endScreenshotAnim()V
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$200(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    goto :goto_0

    .line 1170
    :cond_2
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0
.end method
