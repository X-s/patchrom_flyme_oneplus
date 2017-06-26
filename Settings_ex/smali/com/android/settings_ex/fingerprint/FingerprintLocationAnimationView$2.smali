.class Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FingerprintLocationAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->startRadiusAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCancelled:Z

.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$2;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$2;->mCancelled:Z

    .line 133
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$2;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mRadiusAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->access$102(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 138
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$2;->mCancelled:Z

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$2;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView$2;->this$0:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->mStartPhaseRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->access$200(Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    :cond_0
    return-void
.end method
