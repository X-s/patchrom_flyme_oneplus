.class Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$10;
.super Ljava/lang/Object;
.source "OPPasswordTextViewForPin.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$10;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 538
    iget-object v1, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$10;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->currentDotSizeFactor4:F

    .line 539
    iget-object v0, p0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState$10;->this$1:Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;

    iget-object v0, v0, Lcom/oneplus/settings/password/OPPasswordTextViewForPin$CharState;->this$0:Lcom/oneplus/settings/password/OPPasswordTextViewForPin;

    invoke-virtual {v0}, Lcom/oneplus/settings/password/OPPasswordTextViewForPin;->invalidate()V

    .line 540
    return-void
.end method
