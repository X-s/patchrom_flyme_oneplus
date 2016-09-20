.class public abstract Lcom/oneplus/widget/FilmstripView$Adapter;
.super Ljava/lang/Object;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation


# instance fields
.field private final m_FilmstripViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/widget/FilmstripView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final attach(Lcom/oneplus/widget/FilmstripView;)V
    .locals 1
    .param p1, "view"    # Lcom/oneplus/widget/FilmstripView;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method final detach(Lcom/oneplus/widget/FilmstripView;)V
    .locals 1
    .param p1, "view"    # Lcom/oneplus/widget/FilmstripView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public abstract getCount()I
.end method

.method public getItemWidth(II)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "filmstripWidth"    # I

    .prologue
    .line 142
    return p2
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/FilmstripView;

    # invokes: Lcom/oneplus/widget/FilmstripView;->onDataSetChanged()V
    invoke-static {v1}, Lcom/oneplus/widget/FilmstripView;->access$300(Lcom/oneplus/widget/FilmstripView;)V

    .line 150
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method public notifyItemSizeChanged()V
    .locals 2

    .prologue
    .line 159
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView$Adapter;->m_FilmstripViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/widget/FilmstripView;

    # invokes: Lcom/oneplus/widget/FilmstripView;->onItemSizeChanged()V
    invoke-static {v1}, Lcom/oneplus/widget/FilmstripView;->access$400(Lcom/oneplus/widget/FilmstripView;)V

    .line 159
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method

.method public abstract prepareItemView(ILandroid/view/ViewGroup;)V
.end method

.method public releaseItemView(ILandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 177
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 178
    return-void
.end method
