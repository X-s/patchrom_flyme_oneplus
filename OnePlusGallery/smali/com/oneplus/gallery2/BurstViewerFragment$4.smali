.class Lcom/oneplus/gallery2/BurstViewerFragment$4;
.super Lcom/oneplus/widget/FilmstripView$Adapter;
.source "BurstViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/BurstViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/BurstViewerFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$4;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$4;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->onGetCount()I
    invoke-static {v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$300(Lcom/oneplus/gallery2/BurstViewerFragment;)I

    move-result v0

    return v0
.end method

.method public getItemWidth(II)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "filmstripWidth"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$4;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_FooterItemWidthAndHeight:I
    invoke-static {v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$600(Lcom/oneplus/gallery2/BurstViewerFragment;)I

    move-result v0

    return v0
.end method

.method public prepareItemView(ILandroid/view/ViewGroup;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$4;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->FOOTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->onPrepareItemView(Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;ILandroid/view/ViewGroup;)V
    invoke-static {v0, v1, p1, p2}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$400(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;ILandroid/view/ViewGroup;)V

    .line 210
    return-void
.end method

.method public releaseItemView(ILandroid/view/ViewGroup;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/oneplus/gallery2/BurstViewerFragment$4;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;->FOOTER:Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;

    # invokes: Lcom/oneplus/gallery2/BurstViewerFragment;->onReleaseItemView(Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;ILandroid/view/ViewGroup;)V
    invoke-static {v0, v1, p1, p2}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$500(Lcom/oneplus/gallery2/BurstViewerFragment;Lcom/oneplus/gallery2/BurstViewerFragment$FilmstripViewType;ILandroid/view/ViewGroup;)V

    .line 216
    return-void
.end method
