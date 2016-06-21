.class Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->setCircleRadius(FZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView$7;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView$7;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->mPreviewView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->access$500(Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    return-void
.end method
