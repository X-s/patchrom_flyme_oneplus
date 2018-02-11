.class public Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field private mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedInvisibleItemCountSincePreviousLayout:I

.field final mDisappearingViewsInLayoutPass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInPreLayout:Z

.field mItemCount:I

.field mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/widget/recyclerview/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/widget/recyclerview/ArrayMap",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/widget/recyclerview/ArrayMap",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousLayoutItemCount:I

.field private mRunPredictiveAnimations:Z

.field private mRunSimpleAnimations:Z

.field private mStructureChanged:Z

.field private mTargetPosition:I


# direct methods
.method static synthetic -get0(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return v0
.end method

.method static synthetic -get1(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method static synthetic -get2(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method static synthetic -get3(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method

.method static synthetic -get4(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method static synthetic -set0(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mInPreLayout:Z

    return p1
.end method

.method static synthetic -set2(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreviousLayoutItemCount:I

    return p1
.end method

.method static synthetic -set3(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunPredictiveAnimations:Z

    return p1
.end method

.method static synthetic -set4(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunSimpleAnimations:Z

    return p1
.end method

.method static synthetic -set5(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mStructureChanged:Z

    return p1
.end method

.method static synthetic -set6(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mTargetPosition:I

    return p1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9448
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mTargetPosition:I

    .line 9450
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;-><init>()V

    .line 9449
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    .line 9452
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;-><init>()V

    .line 9451
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    .line 9454
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    .line 9457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    .line 9464
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    .line 9469
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 9475
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 9477
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mStructureChanged:Z

    .line 9479
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mInPreLayout:Z

    .line 9481
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 9483
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 9446
    return-void
.end method

.method private removeFrom(Lcom/oneplus/lib/widget/recyclerview/ArrayMap;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .param p2, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/widget/recyclerview/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 9636
    .local p1, "holderMap":Lcom/oneplus/lib/widget/recyclerview/ArrayMap;, "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<Ljava/lang/Long;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 9637
    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_0

    .line 9638
    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 9639
    return-void

    .line 9636
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9635
    :cond_1
    return-void
.end method


# virtual methods
.method addToDisappearingList(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 9649
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9650
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9648
    :cond_0
    return-void
.end method

.method public didStructureChange()Z
    .locals 1

    .prologue
    .line 9588
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mStructureChanged:Z

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 9542
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 9543
    return-object v1

    .line 9545
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 9616
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mInPreLayout:Z

    if-eqz v0, :cond_0

    .line 9617
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreviousLayoutItemCount:I

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v0, v1

    .line 9616
    :goto_0
    return v0

    .line 9618
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    goto :goto_0
.end method

.method public getTargetScrollPosition()I
    .locals 1

    .prologue
    .line 9571
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mTargetPosition:I

    return v0
.end method

.method public hasTargetScrollPosition()Z
    .locals 2

    .prologue
    .line 9580
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreLayout()Z
    .locals 1

    .prologue
    .line 9496
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method public onViewIgnored(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 9632
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 9631
    return-void
.end method

.method onViewRecycled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 9622
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9623
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9624
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    if-eqz v0, :cond_0

    .line 9625
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->removeFrom(Lcom/oneplus/lib/widget/recyclerview/ArrayMap;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 9627
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9621
    return-void
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1
    .param p1, "resourceId"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 9557
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 9558
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 9560
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9556
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 9527
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 9528
    return-void

    .line 9530
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 9526
    return-void
.end method

.method removeFromDisappearingList(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 9645
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9644
    return-void
.end method

.method reset()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9486
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mTargetPosition:I

    .line 9487
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 9488
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 9490
    :cond_0
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    .line 9491
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mStructureChanged:Z

    .line 9492
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9657
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mTargetPosition:I

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9658
    const-string/jumbo v1, ", mPreLayoutHolderMap="

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9658
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9659
    const-string/jumbo v1, ", mPostLayoutHolderMap="

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9659
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9660
    const-string/jumbo v1, ", mData="

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9660
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9661
    const-string/jumbo v1, ", mItemCount="

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9661
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9662
    const-string/jumbo v1, ", mPreviousLayoutItemCount="

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9662
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9663
    const-string/jumbo v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9664
    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9665
    const-string/jumbo v1, ", mStructureChanged="

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9665
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mStructureChanged:Z

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9666
    const-string/jumbo v1, ", mInPreLayout="

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9666
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mInPreLayout:Z

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9667
    const-string/jumbo v1, ", mRunSimpleAnimations="

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9667
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9668
    const-string/jumbo v1, ", mRunPredictiveAnimations="

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9668
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9669
    const/16 v1, 0x7d

    .line 9656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willRunPredictiveAnimations()Z
    .locals 1

    .prologue
    .line 9507
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method public willRunSimpleAnimations()Z
    .locals 1

    .prologue
    .line 9518
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method
