.class Lcom/android/systemui_ex/statusbar/phone/PanelView$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PanelView;->startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

.field final synthetic val$onAnimationFinished:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$12;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$12;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$12;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PanelView;->access$502(Lcom/android/systemui_ex/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1192
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$12;->val$onAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1193
    return-void
.end method
