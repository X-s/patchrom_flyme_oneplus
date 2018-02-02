.class Lcom/oneplus/camera/ui/CaptureBar$66;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureBar;->updateModeIndicator(Lcom/oneplus/camera/capturemode/CaptureMode;Lcom/oneplus/camera/capturemode/CaptureMode;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;

.field final synthetic val$indicatorContainerSize:I


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p2, "val$indicatorContainerSize"    # I

    .prologue
    .line 4777
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$66;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    iput p2, p0, Lcom/oneplus/camera/ui/CaptureBar$66;->val$indicatorContainerSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 4782
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 4783
    .local v0, "progress":F
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$66;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get6(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 4784
    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureBar$66;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v1}, Lcom/oneplus/camera/ui/CaptureBar;->-get6(Lcom/oneplus/camera/ui/CaptureBar;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/camera/ui/CaptureBar$66;->val$indicatorContainerSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Lcom/oneplus/widget/ViewUtils;->setWidth(Landroid/view/View;I)V

    .line 4780
    return-void
.end method
