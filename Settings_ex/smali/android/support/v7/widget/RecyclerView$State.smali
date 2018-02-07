.class public Landroid/support/v7/widget/RecyclerView$State;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$State$LayoutState;
    }
.end annotation


# static fields
.field static final STEP_ANIMATIONS:I = 0x4

.field static final STEP_LAYOUT:I = 0x2

.field static final STEP_START:I = 0x1


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

.field mDeletedInvisibleItemCountSincePreviousLayout:I

.field mFocusedItemId:J

.field mFocusedItemPosition:I

.field mFocusedSubChildId:I

.field mInPreLayout:Z

.field mIsMeasuring:Z

.field mItemCount:I

.field mLayoutStep:I

.field mPreviousLayoutItemCount:I

.field mRunPredictiveAnimations:Z

.field mRunSimpleAnimations:Z

.field mStructureChanged:Z

.field private mTargetPosition:I

.field mTrackOldChangeHolders:Z


# direct methods
.method static synthetic -set0(Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    return p1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10981
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    .line 10984
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 10991
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 10996
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 11002
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 11004
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 11006
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 11008
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 11010
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 11012
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 11014
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 10962
    return-void
.end method


# virtual methods
.method assertLayoutStep(I)V
    .locals 3
    .param p1, "accepted"    # I

    .prologue
    .line 10968
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 10969
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10970
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    .line 10969
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10970
    const-string/jumbo v2, " but it is "

    .line 10969
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10971
    iget v2, p0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    .line 10969
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10967
    :cond_0
    return-void
.end method

.method public didStructureChange()Z
    .locals 1

    .prologue
    .line 11153
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

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

    .line 11107
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 11108
    return-object v1

    .line 11110
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 11181
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v0, :cond_0

    .line 11182
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v0, v1

    .line 11181
    :goto_0
    return v0

    .line 11183
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    goto :goto_0
.end method

.method public getTargetScrollPosition()I
    .locals 1

    .prologue
    .line 11136
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    return v0
.end method

.method public hasTargetScrollPosition()Z
    .locals 2

    .prologue
    .line 11145
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMeasuring()Z
    .locals 1

    .prologue
    .line 11053
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    return v0
.end method

.method public isPreLayout()Z
    .locals 1

    .prologue
    .line 11061
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1
    .param p1, "resourceId"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 11122
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 11123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 11125
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11121
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 11092
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 11093
    return-void

    .line 11095
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 11091
    return-void
.end method

.method reset()Landroid/support/v7/widget/RecyclerView$State;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11028
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    .line 11029
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 11030
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 11032
    :cond_0
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 11033
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 11034
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 11035
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11189
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    .line 11188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11190
    const-string/jumbo v1, ", mData="

    .line 11188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11190
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    .line 11188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11191
    const-string/jumbo v1, ", mItemCount="

    .line 11188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11191
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 11188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11192
    const-string/jumbo v1, ", mPreviousLayoutItemCount="

    .line 11188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11192
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 11188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11193
    const-string/jumbo v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    .line 11188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11194
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 11188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11195
    const-string/jumbo v1, ", mStructureChanged="

    .line 11188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11195
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 11188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11196
    const-string/jumbo v1, ", mInPreLayout="

    .line 11188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11196
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 11188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11197
    const-string/jumbo v1, ", mRunSimpleAnimations="

    .line 11188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11197
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 11188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11198
    const-string/jumbo v1, ", mRunPredictiveAnimations="

    .line 11188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11198
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 11188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11199
    const/16 v1, 0x7d

    .line 11188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willRunPredictiveAnimations()Z
    .locals 1

    .prologue
    .line 11072
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return v0
.end method

.method public willRunSimpleAnimations()Z
    .locals 1

    .prologue
    .line 11083
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    return v0
.end method
