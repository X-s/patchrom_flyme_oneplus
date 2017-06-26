.class Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$1;
.super Ljava/lang/Object;
.source "FingerprintLocationAnimationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->startRadiusAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mPulseRadius:F
    invoke-static {v1, v0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->access$002(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;F)F

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$1;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->invalidate()V

    .line 124
    return-void
.end method
