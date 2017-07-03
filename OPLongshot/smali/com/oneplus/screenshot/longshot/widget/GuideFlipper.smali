.class public Lcom/oneplus/screenshot/longshot/widget/GuideFlipper;
.super Landroid/widget/ViewFlipper;
.source "GuideFlipper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/widget/GuideFlipper$AnimationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GuideFlipper"


# instance fields
.field private mListener:Lcom/oneplus/screenshot/longshot/widget/GuideFlipper$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/GuideFlipper;->mListener:Lcom/oneplus/screenshot/longshot/widget/GuideFlipper$AnimationListener;

    .line 23
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 60
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/screenshot/longshot/widget/GuideFlipper;->setVisibility(I)V

    .line 61
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/GuideFlipper;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 62
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/widget/GuideFlipper;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/GuideFlipper;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/GuideFlipper;->mListener:Lcom/oneplus/screenshot/longshot/widget/GuideFlipper$AnimationListener;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/GuideFlipper;->mListener:Lcom/oneplus/screenshot/longshot/widget/GuideFlipper$AnimationListener;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/widget/GuideFlipper$AnimationListener;->onAnimationShow()V

    .line 43
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 44
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/GuideFlipper;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 38
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/widget/GuideFlipper;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/GuideFlipper;->mListener:Lcom/oneplus/screenshot/longshot/widget/GuideFlipper$AnimationListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/widget/GuideFlipper;->mListener:Lcom/oneplus/screenshot/longshot/widget/GuideFlipper$AnimationListener;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/widget/GuideFlipper$AnimationListener;->onAnimationHide()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 47
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 29
    return-void
.end method

.method public setAnimationListener(Lcom/oneplus/screenshot/longshot/widget/GuideFlipper$AnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/screenshot/longshot/widget/GuideFlipper$AnimationListener;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/widget/GuideFlipper;->mListener:Lcom/oneplus/screenshot/longshot/widget/GuideFlipper$AnimationListener;

    .line 68
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 53
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/screenshot/longshot/widget/GuideFlipper;->setVisibility(I)V

    .line 54
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/widget/GuideFlipper;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 55
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/widget/GuideFlipper;->startAnimation(Landroid/view/animation/Animation;)V

    .line 57
    return-void
.end method
