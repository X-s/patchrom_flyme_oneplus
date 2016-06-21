.class Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startAlphaAnimation(Lcom/android/systemui_ex/statusbar/ExpandableView;Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

.field final synthetic val$child:Lcom/android/systemui_ex/statusbar/ExpandableView;

.field final synthetic val$newEndValue:F


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;Lcom/android/systemui_ex/statusbar/ExpandableView;F)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$6;->this$0:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$6;->val$child:Lcom/android/systemui_ex/statusbar/ExpandableView;

    iput p3, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$6;->val$newEndValue:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$6;->mWasCancelled:Z

    .line 550
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 537
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$6;->val$child:Lcom/android/systemui_ex/statusbar/ExpandableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 538
    iget v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$6;->val$newEndValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$6;->mWasCancelled:Z

    if-nez v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$6;->val$child:Lcom/android/systemui_ex/statusbar/ExpandableView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setVisibility(I)V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$6;->val$child:Lcom/android/systemui_ex/statusbar/ExpandableView;

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 543
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$6;->val$child:Lcom/android/systemui_ex/statusbar/ExpandableView;

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 544
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$6;->val$child:Lcom/android/systemui_ex/statusbar/ExpandableView;

    const v1, 0x7f0f0009

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 545
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$6;->mWasCancelled:Z

    .line 555
    return-void
.end method
