.class Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationView$2;
.super Ljava/lang/Object;
.source "FingerprintLocationAnimationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationView;->startRadiusAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationView;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationView$2;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationView$2;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationView;->-set1(Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationView;F)F

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationView$2;->this$0:Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {v0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintLocationAnimationView;->invalidate()V

    .line 130
    return-void
.end method
