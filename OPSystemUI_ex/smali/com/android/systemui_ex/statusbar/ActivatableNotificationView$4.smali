.class Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$4;
.super Ljava/lang/Object;
.source "ActivatableNotificationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$4;->this$0:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 604
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$4;->this$0:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F
    invoke-static {v1, v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->access$102(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;F)F

    .line 605
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$4;->this$0:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    # invokes: Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->updateAppearAnimationAlpha()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->access$200(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V

    .line 606
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$4;->this$0:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    # invokes: Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->updateAppearRect()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->access$300(Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;)V

    .line 607
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView$4;->this$0:Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/ActivatableNotificationView;->invalidate()V

    .line 608
    return-void
.end method
