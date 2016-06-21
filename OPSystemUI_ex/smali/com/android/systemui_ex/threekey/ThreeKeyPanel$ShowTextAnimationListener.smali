.class Lcom/android/systemui_ex/threekey/ThreeKeyPanel$ShowTextAnimationListener;
.super Ljava/lang/Object;
.source "ThreeKeyPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/threekey/ThreeKeyPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowTextAnimationListener"
.end annotation


# instance fields
.field private mAnimatedView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;Landroid/widget/TextView;)V
    .locals 0
    .param p2, "animatedView"    # Landroid/widget/TextView;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$ShowTextAnimationListener;->this$0:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    iput-object p2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$ShowTextAnimationListener;->mAnimatedView:Landroid/widget/TextView;

    .line 591
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 602
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 599
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$ShowTextAnimationListener;->mAnimatedView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    return-void
.end method
