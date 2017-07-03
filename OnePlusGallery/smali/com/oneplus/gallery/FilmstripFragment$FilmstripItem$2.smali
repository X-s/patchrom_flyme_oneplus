.class Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem$2;
.super Lcom/oneplus/widget/ScaleImageView$StateCallback;
.source "FilmstripFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;-><init>(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/gallery/media/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

.field final synthetic val$this$0:Lcom/oneplus/gallery/FilmstripFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;Lcom/oneplus/gallery/FilmstripFragment;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem$2;->this$1:Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    iput-object p2, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem$2;->val$this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-direct {p0}, Lcom/oneplus/widget/ScaleImageView$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 6
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 453
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem$2;->this$1:Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    iget-object v0, v0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->onScaleImageBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V
    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery/FilmstripFragment;->access$2500(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/widget/ScaleImageView;IIII)V

    .line 454
    return-void
.end method

.method public onBoundsTypeChanged(Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 1
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "oldType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .param p3, "newType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem$2;->this$1:Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;

    iget-object v0, v0, Lcom/oneplus/gallery/FilmstripFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->onScaleImageBoundsTypeChanged(Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/gallery/FilmstripFragment;->access$2600(Lcom/oneplus/gallery/FilmstripFragment;Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 458
    return-void
.end method
