.class abstract Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;
.super Ljava/lang/Object;
.source "BurstViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/BurstViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "FilmstripItem"
.end annotation


# instance fields
.field private final m_Container:Landroid/view/View;

.field private m_ImageDecodeState:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

.field private m_Position:I

.field final synthetic this$0:Lcom/oneplus/gallery2/BurstViewerFragment;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery2/BurstViewerFragment;I)V
    .locals 2
    .param p2, "layoutID"    # I

    .prologue
    .line 740
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    invoke-virtual {p1}, Lcom/oneplus/gallery2/BurstViewerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->m_Container:Landroid/view/View;

    .line 742
    return-void
.end method


# virtual methods
.method public getContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->m_Container:Landroid/view/View;

    return-object v0
.end method

.method public getImageDecodeState()Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->m_ImageDecodeState:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 759
    iget v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->m_Position:I

    return v0
.end method

.method public setImageDecodeState(Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;)V
    .locals 0
    .param p1, "state"    # Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    .prologue
    .line 765
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->m_ImageDecodeState:Lcom/oneplus/gallery2/FilmstripFragment$ImageDecodeState;

    .line 766
    return-void
.end method

.method public abstract setImageDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setLowResThumb(Landroid/graphics/Bitmap;)V
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 778
    iput p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripItem;->m_Position:I

    .line 779
    return-void
.end method

.method public abstract setSelected(Z)V
.end method

.method public abstract updateMedia(Lcom/oneplus/gallery2/media/Media;)V
.end method

.method public abstract updateViewWhenDecoded(Landroid/graphics/Bitmap;)V
.end method
