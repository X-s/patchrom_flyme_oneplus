.class Lcom/oneplus/gallery/BurstViewer$10;
.super Lcom/oneplus/widget/FilmstripView$Adapter;
.source "BurstViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/BurstViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/BurstViewer;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/BurstViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/BurstViewer;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$10;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$10;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v0}, Lcom/oneplus/gallery/BurstViewer;->-get3(Lcom/oneplus/gallery/BurstViewer;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$10;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v0}, Lcom/oneplus/gallery/BurstViewer;->-get3(Lcom/oneplus/gallery/BurstViewer;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareItemView(ILandroid/view/ViewGroup;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$10;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery/BurstViewer;->-wrap12(Lcom/oneplus/gallery/BurstViewer;ILandroid/view/ViewGroup;)V

    .line 249
    return-void
.end method

.method public releaseItemView(ILandroid/view/ViewGroup;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$10;->this$0:Lcom/oneplus/gallery/BurstViewer;

    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery/BurstViewer;->-wrap14(Lcom/oneplus/gallery/BurstViewer;ILandroid/view/ViewGroup;)V

    .line 254
    return-void
.end method
