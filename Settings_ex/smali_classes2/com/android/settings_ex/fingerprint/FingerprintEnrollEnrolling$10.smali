.class Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->animateFlash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

.field final synthetic val$listener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;
    .param p2, "val$listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$10;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    iput-object p2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$10;->val$listener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 490
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$10;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->-get3(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 491
    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$10;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v2}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->-get4(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 490
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 492
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$10;->val$listener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 493
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 494
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling$10;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;->-get5(Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 495
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 489
    return-void
.end method
