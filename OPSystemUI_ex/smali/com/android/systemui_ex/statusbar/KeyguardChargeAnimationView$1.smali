.class Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$1;
.super Ljava/lang/Object;
.source "KeyguardChargeAnimationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->doChargingTextAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

.field final synthetic val$textAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$1;->val$textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    iget-object v1, v0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mTextView:Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$1;->val$textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;->setAlpha(F)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$1;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mBatteryLevelView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->access$000(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$1;->val$textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 167
    return-void
.end method
