.class Lcom/android/systemui_ex/plugin/PreventModeCtrl$2;
.super Ljava/lang/Object;
.source "PreventModeCtrl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/plugin/PreventModeCtrl;->startRootAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl$2;->this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 249
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl$2;->this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    iget-object v1, v1, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui_ex/plugin/PreventModeView;

    invoke-virtual {v1, v0}, Lcom/android/systemui_ex/plugin/PreventModeView;->setAlpha(F)V

    .line 250
    return-void
.end method
