.class Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$3;
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
    .line 476
    iput-object p1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$3;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$3;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    iget-object v0, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->reset(Z)V

    .line 480
    return-void
.end method
