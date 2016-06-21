.class Lcom/android/systemui_ex/plugin/PreventModeCtrl$3;
.super Ljava/lang/Object;
.source "PreventModeCtrl.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 253
    iput-object p1, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl$3;->this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 267
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 262
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 272
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl$3;->this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    iget-object v0, v0, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui_ex/plugin/PreventModeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/plugin/PreventModeView;->setVisibility(I)V

    .line 257
    return-void
.end method
