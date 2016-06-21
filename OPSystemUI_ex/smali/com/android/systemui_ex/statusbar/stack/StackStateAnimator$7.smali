.class Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;->startZTranslationAnimation(Lcom/android/systemui_ex/statusbar/ExpandableView;Lcom/android/systemui_ex/statusbar/stack/StackScrollState$ViewState;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

.field final synthetic val$child:Lcom/android/systemui_ex/statusbar/ExpandableView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;Lcom/android/systemui_ex/statusbar/ExpandableView;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$7;->this$0:Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator;

    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$7;->val$child:Lcom/android/systemui_ex/statusbar/ExpandableView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 611
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$7;->val$child:Lcom/android/systemui_ex/statusbar/ExpandableView;

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 612
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$7;->val$child:Lcom/android/systemui_ex/statusbar/ExpandableView;

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 613
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/stack/StackStateAnimator$7;->val$child:Lcom/android/systemui_ex/statusbar/ExpandableView;

    const v1, 0x7f0f0007

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 614
    return-void
.end method
