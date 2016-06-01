.class Lcom/oneplus/widget/ScaleImageView$7;
.super Ljava/lang/Object;
.source "ScaleImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/widget/ScaleImageView;->setImageScaleBy(FFFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/widget/ScaleImageView;

.field final synthetic val$pivotX:F

.field final synthetic val$pivotY:F


# direct methods
.method constructor <init>(Lcom/oneplus/widget/ScaleImageView;FF)V
    .locals 0

    .prologue
    .line 978
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    iput p2, p0, Lcom/oneplus/widget/ScaleImageView$7;->val$pivotX:F

    iput p3, p0, Lcom/oneplus/widget/ScaleImageView$7;->val$pivotY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 983
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 986
    .local v2, "value":F
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_TempScaleBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/oneplus/widget/ScaleImageView;->access$1500(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 987
    .local v1, "scaledWidth":I
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_TempScaleBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/oneplus/widget/ScaleImageView;->access$1500(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 988
    .local v0, "scaledHeight":I
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledWidth:I
    invoke-static {v3}, Lcom/oneplus/widget/ScaleImageView;->access$1600(Lcom/oneplus/widget/ScaleImageView;)I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledHeight:I
    invoke-static {v3}, Lcom/oneplus/widget/ScaleImageView;->access$1700(Lcom/oneplus/widget/ScaleImageView;)I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 990
    :cond_0
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledWidth:I
    invoke-static {v3}, Lcom/oneplus/widget/ScaleImageView;->access$1600(Lcom/oneplus/widget/ScaleImageView;)I

    move-result v3

    div-int/2addr v3, v1

    int-to-float v2, v3

    .line 991
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledWidth:I
    invoke-static {v3}, Lcom/oneplus/widget/ScaleImageView;->access$1600(Lcom/oneplus/widget/ScaleImageView;)I

    move-result v1

    .line 992
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_MaxImageScaledHeight:I
    invoke-static {v3}, Lcom/oneplus/widget/ScaleImageView;->access$1700(Lcom/oneplus/widget/ScaleImageView;)I

    move-result v0

    .line 1002
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/oneplus/widget/ScaleImageView;->access$800(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/widget/ScaleImageView$7;->val$pivotX:F

    iget v5, p0, Lcom/oneplus/widget/ScaleImageView$7;->val$pivotX:F

    iget-object v6, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_TempScaleBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/oneplus/widget/ScaleImageView;->access$1500(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1003
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/oneplus/widget/ScaleImageView;->access$800(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/widget/ScaleImageView$7;->val$pivotY:F

    iget v5, p0, Lcom/oneplus/widget/ScaleImageView$7;->val$pivotY:F

    iget-object v6, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_TempScaleBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/oneplus/widget/ScaleImageView;->access$1500(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1004
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/oneplus/widget/ScaleImageView;->access$800(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oneplus/widget/ScaleImageView;->access$800(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1005
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/oneplus/widget/ScaleImageView;->access$800(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_ImageBounds:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/oneplus/widget/ScaleImageView;->access$800(Lcom/oneplus/widget/ScaleImageView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1006
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # invokes: Lcom/oneplus/widget/ScaleImageView;->updateImageBounds()V
    invoke-static {v3}, Lcom/oneplus/widget/ScaleImageView;->access$1300(Lcom/oneplus/widget/ScaleImageView;)V

    .line 1007
    return-void

    .line 994
    :cond_2
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaledWidth:I
    invoke-static {v3}, Lcom/oneplus/widget/ScaleImageView;->access$1800(Lcom/oneplus/widget/ScaleImageView;)I

    move-result v3

    if-le v1, v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaledHeight:I
    invoke-static {v3}, Lcom/oneplus/widget/ScaleImageView;->access$1900(Lcom/oneplus/widget/ScaleImageView;)I

    move-result v3

    if-gt v0, v3, :cond_1

    .line 996
    :cond_3
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaledWidth:I
    invoke-static {v3}, Lcom/oneplus/widget/ScaleImageView;->access$1800(Lcom/oneplus/widget/ScaleImageView;)I

    move-result v3

    div-int/2addr v3, v1

    int-to-float v2, v3

    .line 997
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaledWidth:I
    invoke-static {v3}, Lcom/oneplus/widget/ScaleImageView;->access$1800(Lcom/oneplus/widget/ScaleImageView;)I

    move-result v1

    .line 998
    iget-object v3, p0, Lcom/oneplus/widget/ScaleImageView$7;->this$0:Lcom/oneplus/widget/ScaleImageView;

    # getter for: Lcom/oneplus/widget/ScaleImageView;->m_MinImageScaledWidth:I
    invoke-static {v3}, Lcom/oneplus/widget/ScaleImageView;->access$1800(Lcom/oneplus/widget/ScaleImageView;)I

    move-result v0

    goto/16 :goto_0
.end method
