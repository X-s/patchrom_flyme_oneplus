.class Lcom/android/systemui_ex/statusbar/phone/PanelView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PanelView;->runPeekAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$2;->mCancelled:Z

    .line 191
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->access$202(Lcom/android/systemui_ex/statusbar/phone/PanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 196
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PanelView;->mCollapseAfterPeek:Z
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->access$300(Lcom/android/systemui_ex/statusbar/phone/PanelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$2;->mCancelled:Z

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/PanelView$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/PanelView$2$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/PanelView$2;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$2;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PanelView;->mCollapseAfterPeek:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->access$302(Lcom/android/systemui_ex/statusbar/phone/PanelView;Z)Z

    .line 205
    return-void
.end method
