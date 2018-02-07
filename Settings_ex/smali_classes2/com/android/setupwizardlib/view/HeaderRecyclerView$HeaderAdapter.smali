.class public Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HeaderRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/view/HeaderRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;
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
.field private static final HEADER_VIEW_TYPE:I = 0x7fffffff


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mHeader:Landroid/view/View;

.field private final mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 69
    new-instance v0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter$1;-><init>(Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 99
    iput-object p1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 100
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 101
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->setHasStableIds(Z)V

    .line 98
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 158
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 159
    add-int/lit8 v0, v0, 0x1

    .line 161
    :cond_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 167
    add-int/lit8 p1, p1, -0x1

    .line 169
    :cond_0
    if-gez p1, :cond_1

    .line 170
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 147
    add-int/lit8 p1, p1, -0x1

    .line 149
    :cond_0
    if-gez p1, :cond_1

    .line 150
    const v0, 0x7fffffff

    return v0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 130
    add-int/lit8 p2, p2, -0x1

    .line 133
    :cond_0
    instance-of v1, p1, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderViewHolder;

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 137
    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 138
    .local v0, "mHeaderParent":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 128
    .end local v0    # "mHeaderParent":Landroid/widget/FrameLayout;
    :goto_0
    return-void

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 113
    const v2, 0x7fffffff

    if-ne p2, v2, :cond_0

    .line 114
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 116
    const/4 v2, -0x1

    .line 117
    const/4 v3, -0x2

    .line 115
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 119
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v2, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderViewHolder;

    invoke-direct {v2, v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v2

    .line 122
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    return-object v2
.end method

.method public setHeader(Landroid/view/View;)V
    .locals 0
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->mHeader:Landroid/view/View;

    .line 175
    return-void
.end method
