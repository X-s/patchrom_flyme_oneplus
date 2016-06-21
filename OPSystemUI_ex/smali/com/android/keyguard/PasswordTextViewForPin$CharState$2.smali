.class Lcom/android/keyguard/PasswordTextViewForPin$CharState$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextViewForPin$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$2;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$2;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 450
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$2;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    # getter for: Lcom/android/keyguard/PasswordTextViewForPin;->isDelete:Z
    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1400(Lcom/android/keyguard/PasswordTextViewForPin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$2;->this$1:Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/PasswordTextViewForPin;->isDelete:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1402(Lcom/android/keyguard/PasswordTextViewForPin;Z)Z

    .line 454
    :cond_0
    return-void
.end method
