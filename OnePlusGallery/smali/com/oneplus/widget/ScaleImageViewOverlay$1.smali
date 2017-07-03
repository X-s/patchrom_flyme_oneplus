.class Lcom/oneplus/widget/ScaleImageViewOverlay$1;
.super Lcom/oneplus/widget/ScaleImageView$StateCallback;
.source "ScaleImageViewOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/ScaleImageViewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/widget/ScaleImageViewOverlay;


# direct methods
.method constructor <init>(Lcom/oneplus/widget/ScaleImageViewOverlay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageViewOverlay$1;->this$0:Lcom/oneplus/widget/ScaleImageViewOverlay;

    .line 19
    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimatingStateChanged(Lcom/oneplus/widget/ScaleImageView;Z)V
    .locals 1
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "isAnimating"    # Z

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay$1;->this$0:Lcom/oneplus/widget/ScaleImageViewOverlay;

    invoke-virtual {v0, p2}, Lcom/oneplus/widget/ScaleImageViewOverlay;->onImageAnimatingStateChanged(Z)V

    .line 25
    return-void
.end method

.method public onBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 6
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay$1;->this$0:Lcom/oneplus/widget/ScaleImageViewOverlay;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/oneplus/widget/ScaleImageViewOverlay;->onScaleImageBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V
    invoke-static/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageViewOverlay;->access$0(Lcom/oneplus/widget/ScaleImageViewOverlay;Lcom/oneplus/widget/ScaleImageView;IIII)V

    .line 31
    return-void
.end method

.method public onLayoutChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 6
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay$1;->this$0:Lcom/oneplus/widget/ScaleImageViewOverlay;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/oneplus/widget/ScaleImageViewOverlay;->onScaleImageViewLayoutChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V
    invoke-static/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageViewOverlay;->access$1(Lcom/oneplus/widget/ScaleImageViewOverlay;Lcom/oneplus/widget/ScaleImageView;IIII)V

    .line 37
    return-void
.end method

.method public onTargetBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 6
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/widget/ScaleImageViewOverlay$1;->this$0:Lcom/oneplus/widget/ScaleImageViewOverlay;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/oneplus/widget/ScaleImageViewOverlay;->onScaleImageTargetImageBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V
    invoke-static/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageViewOverlay;->access$2(Lcom/oneplus/widget/ScaleImageViewOverlay;Lcom/oneplus/widget/ScaleImageView;IIII)V

    .line 43
    return-void
.end method
