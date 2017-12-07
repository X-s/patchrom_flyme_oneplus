.class Lcom/android/server/policy/OemPhoneWindowManager$9$4;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemPhoneWindowManager$9;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/OemPhoneWindowManager$9;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/OemPhoneWindowManager$9;

    .prologue
    .line 2030
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$9$4;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$9$4;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$9;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$9;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$9$4;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$9;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$9;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$9$4;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$9;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$9;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2035
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$9$4;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$9;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager$9;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->-wrap0(Lcom/android/server/policy/OemPhoneWindowManager;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$9$4;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$9;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager$9;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayBtnView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$9$4;->this$1:Lcom/android/server/policy/OemPhoneWindowManager$9;

    iget-object v2, v2, Lcom/android/server/policy/OemPhoneWindowManager$9;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2032
    :cond_0
    return-void
.end method
