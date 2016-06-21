.class Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardChargeAnimationView.java"


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

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;Z)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$2;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    iput-boolean p2, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$2;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x4

    .line 173
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$2;->val$visible:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$2;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mTextView:Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$2;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    # getter for: Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mBatteryLevelView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->access$000(Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView$2;->this$0:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mChargingTextAnimation:Z

    .line 178
    return-void
.end method
