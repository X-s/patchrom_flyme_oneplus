.class Lcom/android/systemui_ex/statusbar/phone/ScrimController$1;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/ScrimController;->startScrimAnimation(Lcom/android/systemui_ex/statusbar/ScrimView;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

.field final synthetic val$scrim:Lcom/android/systemui_ex/statusbar/ScrimView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/ScrimController;Lcom/android/systemui_ex/statusbar/ScrimView;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController$1;->val$scrim:Lcom/android/systemui_ex/statusbar/ScrimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 268
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 269
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController$1;->val$scrim:Lcom/android/systemui_ex/statusbar/ScrimView;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setCurrentScrimAlpha(Landroid/view/View;F)V
    invoke-static {v1, v2, v0}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->access$000(Lcom/android/systemui_ex/statusbar/phone/ScrimController;Landroid/view/View;F)V

    .line 270
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/ScrimController$1;->val$scrim:Lcom/android/systemui_ex/statusbar/ScrimView;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/ScrimController;->updateScrimColor(Lcom/android/systemui_ex/statusbar/ScrimView;)V
    invoke-static {v1, v2}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->access$100(Lcom/android/systemui_ex/statusbar/phone/ScrimController;Lcom/android/systemui_ex/statusbar/ScrimView;)V

    .line 271
    return-void
.end method
