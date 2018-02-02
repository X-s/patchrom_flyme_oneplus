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
    .param p1, "this$0"    # Lcom/oneplus/widget/ScaleImageViewOverlay;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/oneplus/widget/ScaleImageViewOverlay$1;->this$0:Lcom/oneplus/widget/ScaleImageViewOverlay;

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

    .line 22
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

    invoke-static/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageViewOverlay;->-wrap0(Lcom/oneplus/widget/ScaleImageViewOverlay;Lcom/oneplus/widget/ScaleImageView;IIII)V

    .line 28
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

    invoke-static/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageViewOverlay;->-wrap2(Lcom/oneplus/widget/ScaleImageViewOverlay;Lcom/oneplus/widget/ScaleImageView;IIII)V

    .line 34
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

    invoke-static/range {v0 .. v5}, Lcom/oneplus/widget/ScaleImageViewOverlay;->-wrap1(Lcom/oneplus/widget/ScaleImageViewOverlay;Lcom/oneplus/widget/ScaleImageView;IIII)V

    .line 40
    return-void
.end method
