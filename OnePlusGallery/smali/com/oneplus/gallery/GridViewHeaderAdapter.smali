.class public Lcom/oneplus/gallery/GridViewHeaderAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GridViewHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/GridViewHeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GridViewHeaderAdapter"

.field public static final VIEW_TYPE_HEADER:I = 0x1

.field public static final VIEW_TYPE_ITEM:I = 0x2


# instance fields
.field private m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

.field private m_IsCameraRoll:Z

.field private m_IsGrouping:Z

.field private m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

.field private m_MediaList:Lcom/oneplus/gallery/media/MediaList;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/GridViewFragment;Lcom/oneplus/gallery/GridViewItemAdapter;)V
    .locals 2
    .param p1, "gridViewFragment"    # Lcom/oneplus/gallery/GridViewFragment;
    .param p2, "itemAdapter"    # Lcom/oneplus/gallery/GridViewItemAdapter;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    .line 41
    iput-object p2, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    .line 42
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaList;

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 43
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_IsCameraRoll:Z

    .line 44
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_IsGrouping:Z

    .line 45
    return-void
.end method

.method private UIPositionToItemPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 117
    move v1, p1

    .line 118
    .local v1, "itemPosition":I
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v2, p1}, Lcom/oneplus/gallery/GridViewFragment;->findItemGroupIndex(I)I

    move-result v0

    .line 120
    .local v0, "groupIndex":I
    sub-int/2addr v1, v0

    .line 121
    return v1
.end method


# virtual methods
.method public getItemCount()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v2, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-nez v2, :cond_0

    .line 54
    const-string v2, "GridViewHeaderAdapter"

    const-string v3, "getItemCount() - m_MediaList is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return v1

    .line 57
    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_IsCameraRoll:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    const-string v2, "GridViewHeaderAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getItemCount() - m_MediaList is empty hashCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    .line 64
    .local v0, "headerCounts":I
    iget-boolean v1, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_IsGrouping:Z

    if-eqz v1, :cond_2

    .line 65
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GridViewFragment;->getHeaderSize()I

    move-result v0

    .line 68
    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_IsCameraRoll:Z

    if-eqz v1, :cond_3

    .line 69
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_IsGrouping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery/GridViewFragment;->isHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 99
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 111
    .end local p1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local p2    # "position":I
    :goto_0
    return-void

    .line 101
    .restart local p1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local p2    # "position":I
    :cond_0
    instance-of v1, p1, Lcom/oneplus/gallery/GridViewHeaderAdapter$HeaderViewHolder;

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1, p2}, Lcom/oneplus/gallery/GridViewFragment;->getHeaderTitleText(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "headerText":Ljava/lang/String;
    move-object v1, p1

    .line 105
    check-cast v1, Lcom/oneplus/gallery/GridViewHeaderAdapter$HeaderViewHolder;

    iget-object v1, v1, Lcom/oneplus/gallery/GridViewHeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    check-cast p1, Lcom/oneplus/gallery/GridViewHeaderAdapter$HeaderViewHolder;

    .end local p1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v1, p1, Lcom/oneplus/gallery/GridViewHeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v2}, Lcom/oneplus/gallery/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery/GalleryActivity;

    move-result-object v2

    const-string v3, "gridview_header_text"

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 109
    .end local v0    # "headerText":Ljava/lang/String;
    .restart local p1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    check-cast p1, Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    .end local p1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-boolean v2, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_IsGrouping:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p2}, Lcom/oneplus/gallery/GridViewHeaderAdapter;->UIPositionToItemPosition(I)I

    move-result p2

    .end local p2    # "position":I
    :cond_2
    invoke-virtual {v1, p1, p2}, Lcom/oneplus/gallery/GridViewItemAdapter;->onBindViewHolder(Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewtype"    # I

    .prologue
    .line 87
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030010

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/oneplus/gallery/GridViewHeaderAdapter$HeaderViewHolder;

    invoke-direct {v1, v0}, Lcom/oneplus/gallery/GridViewHeaderAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    .line 91
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_ItemAdapter:Lcom/oneplus/gallery/GridViewItemAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/gallery/GridViewItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/gallery/GridViewItemAdapter$ItemViewHolder;

    move-result-object v1

    goto :goto_0
.end method

.method public updateMediaList(Lcom/oneplus/gallery/media/MediaList;)V
    .locals 0
    .param p1, "medialist"    # Lcom/oneplus/gallery/media/MediaList;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewHeaderAdapter;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 127
    return-void
.end method
