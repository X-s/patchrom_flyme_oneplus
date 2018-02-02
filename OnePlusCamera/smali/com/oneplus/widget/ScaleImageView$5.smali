.class Lcom/oneplus/widget/ScaleImageView$5;
.super Ljava/lang/Object;
.source "ScaleImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/widget/ScaleImageView;->setImageBounds(IIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/widget/ScaleImageView;

.field final synthetic val$bottomDistance:F

.field final synthetic val$leftDistance:F

.field final synthetic val$rightDistance:F

.field final synthetic val$topDistance:F


# direct methods
.method constructor <init>(Lcom/oneplus/widget/ScaleImageView;FFFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "val$leftDistance"    # F
    .param p3, "val$topDistance"    # F
    .param p4, "val$rightDistance"    # F
    .param p5, "val$bottomDistance"    # F

    .prologue
    .line 1743
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView$5;->this$0:Lcom/oneplus/widget/ScaleImageView;

    iput p2, p0, Lcom/oneplus/widget/ScaleImageView$5;->val$leftDistance:F

    iput p3, p0, Lcom/oneplus/widget/ScaleImageView$5;->val$topDistance:F

    iput p4, p0, Lcom/oneplus/widget/ScaleImageView$5;->val$rightDistance:F

    iput p5, p0, Lcom/oneplus/widget/ScaleImageView$5;->val$bottomDistance:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1749
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1752
    .local v0, "value":F
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$5;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->-get2(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView$5;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v2}, Lcom/oneplus/widget/ScaleImageView;->-get4(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/widget/ScaleImageView$5;->val$leftDistance:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1753
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$5;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->-get2(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView$5;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v2}, Lcom/oneplus/widget/ScaleImageView;->-get4(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/widget/ScaleImageView$5;->val$topDistance:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1754
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$5;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->-get2(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView$5;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v2}, Lcom/oneplus/widget/ScaleImageView;->-get4(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/widget/ScaleImageView$5;->val$rightDistance:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1755
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$5;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->-get2(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/widget/ScaleImageView$5;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v2}, Lcom/oneplus/widget/ScaleImageView;->-get4(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/widget/ScaleImageView$5;->val$bottomDistance:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1756
    iget-object v1, p0, Lcom/oneplus/widget/ScaleImageView$5;->this$0:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v1}, Lcom/oneplus/widget/ScaleImageView;->-wrap7(Lcom/oneplus/widget/ScaleImageView;)V

    .line 1746
    return-void
.end method
