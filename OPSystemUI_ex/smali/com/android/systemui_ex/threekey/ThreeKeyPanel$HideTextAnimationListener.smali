.class Lcom/android/systemui_ex/threekey/ThreeKeyPanel$HideTextAnimationListener;
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
    name = "HideTextAnimationListener"
.end annotation


# instance fields
.field private mAnimatedView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/threekey/ThreeKeyPanel;Landroid/widget/TextView;)V
    .locals 0
    .param p2, "animatedView"    # Landroid/widget/TextView;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$HideTextAnimationListener;->this$0:Lcom/android/systemui_ex/threekey/ThreeKeyPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    iput-object p2, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$HideTextAnimationListener;->mAnimatedView:Landroid/widget/TextView;

    .line 610
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/systemui_ex/threekey/ThreeKeyPanel$HideTextAnimationListener;->mAnimatedView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 621
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 616
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 613
    return-void
.end method
