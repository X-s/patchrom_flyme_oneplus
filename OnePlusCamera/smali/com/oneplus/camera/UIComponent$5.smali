.class Lcom/oneplus/camera/UIComponent$5;
.super Ljava/lang/Object;
.source "UIComponent.java"

# interfaces
.implements Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/UIComponent;->rotateLayout(Lcom/oneplus/camera/widget/RotateRelativeLayout;JLcom/oneplus/camera/UIComponent$ViewRotationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/UIComponent;

.field final synthetic val$callback:Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

.field final synthetic val$halfDuration:J

.field final synthetic val$layout:Lcom/oneplus/camera/widget/RotateRelativeLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/UIComponent;Lcom/oneplus/camera/widget/RotateRelativeLayout;JLcom/oneplus/camera/UIComponent$ViewRotationCallback;)V
    .locals 1

    .prologue
    .line 426
    iput-object p1, p0, Lcom/oneplus/camera/UIComponent$5;->this$0:Lcom/oneplus/camera/UIComponent;

    iput-object p2, p0, Lcom/oneplus/camera/UIComponent$5;->val$layout:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iput-wide p3, p0, Lcom/oneplus/camera/UIComponent$5;->val$halfDuration:J

    iput-object p5, p0, Lcom/oneplus/camera/UIComponent$5;->val$callback:Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCompleted(Landroid/view/View;Z)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isCancelled"    # Z

    .prologue
    .line 429
    if-nez p2, :cond_0

    .line 430
    iget-object v1, p0, Lcom/oneplus/camera/UIComponent$5;->this$0:Lcom/oneplus/camera/UIComponent;

    invoke-virtual {v1}, Lcom/oneplus/camera/UIComponent;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    .line 431
    .local v0, "newRotation":Lcom/oneplus/base/Rotation;
    iget-object v1, p0, Lcom/oneplus/camera/UIComponent$5;->val$layout:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->setRotation(Lcom/oneplus/base/Rotation;)V

    .line 432
    iget-object v1, p0, Lcom/oneplus/camera/UIComponent$5;->this$0:Lcom/oneplus/camera/UIComponent;

    iget-object v2, p0, Lcom/oneplus/camera/UIComponent$5;->val$layout:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/oneplus/camera/UIComponent$5;->val$halfDuration:J

    sget-object v6, Lcom/oneplus/camera/UIComponent;->INTERPOLATOR_FADE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/UIComponent;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 433
    iget-object v1, p0, Lcom/oneplus/camera/UIComponent$5;->val$callback:Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/oneplus/camera/UIComponent$5;->val$callback:Lcom/oneplus/camera/UIComponent$ViewRotationCallback;

    iget-object v2, p0, Lcom/oneplus/camera/UIComponent$5;->val$layout:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-interface {v1, v2, v0}, Lcom/oneplus/camera/UIComponent$ViewRotationCallback;->onRotated(Landroid/view/View;Lcom/oneplus/base/Rotation;)V

    .line 437
    .end local v0    # "newRotation":Lcom/oneplus/base/Rotation;
    :cond_0
    return-void
.end method
