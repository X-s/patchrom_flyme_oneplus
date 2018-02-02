.class final Lcom/oneplus/widget/ViewUtils$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/widget/ViewUtils;->setVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;Landroid/view/View;)V
    .locals 0
    .param p1, "val$callback"    # Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;
    .param p2, "val$view"    # Landroid/view/View;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/oneplus/widget/ViewUtils$1;->val$callback:Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;

    iput-object p2, p0, Lcom/oneplus/widget/ViewUtils$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/oneplus/widget/ViewUtils$1;->val$callback:Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;

    iget-object v1, p0, Lcom/oneplus/widget/ViewUtils$1;->val$view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;->onAnimationCompleted(Landroid/view/View;Z)V

    .line 251
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 247
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 243
    return-void
.end method
