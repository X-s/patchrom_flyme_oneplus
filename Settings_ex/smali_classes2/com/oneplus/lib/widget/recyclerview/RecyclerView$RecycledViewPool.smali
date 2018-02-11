.class public Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0x5


# instance fields
.field private mAttachCount:I

.field private mMaxScrap:Landroid/util/SparseIntArray;

.field private mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4174
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4173
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 4175
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    .line 4176
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 4172
    return-void
.end method

.method private getScrapHeapForType(I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4263
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4264
    .local v0, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    if-nez v0, :cond_0

    .line 4265
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4266
    .restart local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4267
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 4268
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4271
    :cond_0
    return-object v0
.end method


# virtual methods
.method attach(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    .prologue
    .line 4230
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 4229
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 4181
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4180
    return-void
.end method

.method detach()V
    .locals 1

    .prologue
    .line 4234
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 4233
    return-void
.end method

.method public getRecycledView(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 4195
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 4196
    .local v2, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4202
    :cond_0
    return-object v4

    .line 4197
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 4198
    .local v0, "index":I
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 4199
    .local v1, "scrap":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4200
    return-object v1
.end method

.method onAdapterChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "oldAdapter"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .prologue
    .line 4251
    if-eqz p1, :cond_0

    .line 4252
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->detach()V

    .line 4254
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez v0, :cond_1

    .line 4255
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->clear()V

    .line 4257
    :cond_1
    if-eqz p2, :cond_2

    .line 4258
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->attach(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    .line 4250
    :cond_2
    return-void
.end method

.method public putRecycledView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "scrap"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 4217
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    .line 4218
    .local v1, "viewType":I
    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->getScrapHeapForType(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 4219
    .local v0, "scrapHeap":Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 4220
    return-void

    .line 4225
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->resetInternal()V

    .line 4226
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4216
    return-void
.end method

.method public setMaxRecycledViews(II)V
    .locals 2
    .param p1, "viewType"    # I
    .param p2, "max"    # I

    .prologue
    .line 4185
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4186
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4187
    .local v0, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    if-eqz v0, :cond_0

    .line 4188
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 4189
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 4184
    :cond_0
    return-void
.end method

.method size()I
    .locals 4

    .prologue
    .line 4206
    const/4 v0, 0x0

    .line 4207
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 4208
    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 4209
    .local v2, "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    if-eqz v2, :cond_0

    .line 4210
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 4207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4213
    .end local v2    # "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    :cond_1
    return v0
.end method
