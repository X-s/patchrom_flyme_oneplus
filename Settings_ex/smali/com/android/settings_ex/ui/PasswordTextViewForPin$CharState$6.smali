.class Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$6;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$6;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->emptyCircleAnimator:Landroid/animation/ValueAnimator;

    .line 502
    return-void
.end method
