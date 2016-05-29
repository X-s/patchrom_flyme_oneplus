.class Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$13;
.super Ljava/lang/Object;
.source "PasswordTextViewForPin.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 567
    iput-object p1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$13;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 570
    iget-object v1, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$13;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    .line 571
    iget-object v0, p0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState$13;->this$1:Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;

    iget-object v0, v0, Lcom/android/settings_ex/ui/PasswordTextViewForPin$CharState;->this$0:Lcom/android/settings_ex/ui/PasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/android/settings_ex/ui/PasswordTextViewForPin;->invalidate()V

    .line 572
    return-void
.end method
