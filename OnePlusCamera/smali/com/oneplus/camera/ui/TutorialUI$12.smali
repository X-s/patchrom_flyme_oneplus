.class Lcom/oneplus/camera/ui/TutorialUI$12;
.super Ljava/lang/Object;
.source "TutorialUI.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/TutorialUI;->doEnterExitImmersiveModeAnimation(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/TutorialUI;

.field final synthetic val$distanceY:I

.field final synthetic val$focusImage:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/TutorialUI;Landroid/view/View;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/TutorialUI;
    .param p2, "val$focusImage"    # Landroid/view/View;
    .param p3, "val$distanceY"    # I

    .prologue
    .line 255
    iput-object p1, p0, Lcom/oneplus/camera/ui/TutorialUI$12;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    iput-object p2, p0, Lcom/oneplus/camera/ui/TutorialUI$12;->val$focusImage:Landroid/view/View;

    iput p3, p0, Lcom/oneplus/camera/ui/TutorialUI$12;->val$distanceY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 262
    .local v0, "value":F
    iget-object v1, p0, Lcom/oneplus/camera/ui/TutorialUI$12;->val$focusImage:Landroid/view/View;

    iget v2, p0, Lcom/oneplus/camera/ui/TutorialUI$12;->val$distanceY:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 258
    return-void
.end method
