.class public Lcom/oneplus/gallery2/GridViewHeaderAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GridViewHeaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/GridViewHeaderAdapter$HeaderViewHolder;
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
.field private m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

.field private m_IsCameraRoll:Z

.field private m_IsGrouping:Z

.field private m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

.field private m_MediaList:Lcom/oneplus/gallery2/media/MediaList;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/GridViewItemAdapter;)V
    .locals 2
    .param p1, "gridViewFragment"    # Lcom/oneplus/gallery2/GridViewFragment;
    .param p2, "itemAdapter"    # Lcom/oneplus/gallery2/GridViewItemAdapter;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    .line 42
    iput-object p2, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    .line 43
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaList;

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 44
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_IsCameraRoll:Z

    .line 45
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_IsGrouping:Z

    .line 46
    return-void
.end method

.method private UIPositionToItemPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 118
    move v1, p1

    .line 119
    .local v1, "itemPosition":I
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v2, p1}, Lcom/oneplus/gallery2/GridViewFragment;->findItemGroupIndex(I)I

    move-result v0

    .line 121
    .local v0, "groupIndex":I
    sub-int/2addr v1, v0

    .line 122
    return v1
.end method


# virtual methods
.method public getItemCount()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v2, :cond_0

    .line 55
    const-string v2, "GridViewHeaderAdapter"

    const-string v3, "getItemCount() - m_MediaList is null"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return v1

    .line 58
    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_IsCameraRoll:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    const-string v2, "GridViewHeaderAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getItemCount() - m_MediaList is empty hashCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    .line 65
    .local v0, "headerCounts":I
    iget-boolean v1, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_IsGrouping:Z

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/GridViewFragment;->getHeaderSize()I

    move-result v0

    .line 69
    :cond_2
    iget-boolean v1, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_IsCameraRoll:Z

    if-eqz v1, :cond_3

    .line 70
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_IsGrouping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/GridViewFragment;->isHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 81
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
    .line 100
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 112
    .end local p1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local p2    # "position":I
    :goto_0
    return-void

    .line 102
    .restart local p1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local p2    # "position":I
    :cond_0
    instance-of v1, p1, Lcom/oneplus/gallery2/GridViewHeaderAdapter$HeaderViewHolder;

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1, p2}, Lcom/oneplus/gallery2/GridViewFragment;->getHeaderTitleText(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "headerText":Ljava/lang/String;
    move-object v1, p1

    .line 106
    check-cast v1, Lcom/oneplus/gallery2/GridViewHeaderAdapter$HeaderViewHolder;

    iget-object v1, v1, Lcom/oneplus/gallery2/GridViewHeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    check-cast p1, Lcom/oneplus/gallery2/GridViewHeaderAdapter$HeaderViewHolder;

    .end local p1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v1, p1, Lcom/oneplus/gallery2/GridViewHeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/GridViewFragment;->getGalleryActivity()Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v2

    const-string v3, "gridview_header_text"

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/GalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 110
    .end local v0    # "headerText":Ljava/lang/String;
    .restart local p1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    check-cast p1, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    .end local p1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-boolean v2, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_IsGrouping:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->UIPositionToItemPosition(I)I

    move-result p2

    .end local p2    # "position":I
    :cond_2
    invoke-virtual {v1, p1, p2}, Lcom/oneplus/gallery2/GridViewItemAdapter;->onBindViewHolder(Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewtype"    # I

    .prologue
    .line 88
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030010

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/oneplus/gallery2/GridViewHeaderAdapter$HeaderViewHolder;

    invoke-direct {v1, v0}, Lcom/oneplus/gallery2/GridViewHeaderAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    .line 92
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_ItemAdapter:Lcom/oneplus/gallery2/GridViewItemAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/gallery2/GridViewItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    move-result-object v1

    goto :goto_0
.end method

.method public updateMediaList(Lcom/oneplus/gallery2/media/MediaList;)V
    .locals 0
    .param p1, "medialist"    # Lcom/oneplus/gallery2/media/MediaList;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewHeaderAdapter;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 128
    return-void
.end method
