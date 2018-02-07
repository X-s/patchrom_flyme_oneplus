.class public abstract Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;
    }
.end annotation


# instance fields
.field private mAddDuration:J

.field private mChangeDuration:J

.field private mFinishedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mMoveDuration:J

.field private mRemoveDuration:J

.field private mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 9768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 9772
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9771
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    .line 9774
    iput-wide v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 9775
    iput-wide v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 9776
    iput-wide v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 9777
    iput-wide v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 9779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mSupportsChangeAnimations:Z

    .line 9768
    return-void
.end method


# virtual methods
.method public abstract animateAdd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
.end method

.method public abstract animateChange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z
.end method

.method public abstract animateMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z
.end method

.method public abstract animateRemove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
.end method

.method public final dispatchAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 10036
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->onAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 10037
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 10038
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;->onAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 10035
    :cond_0
    return-void
.end method

.method public final dispatchAddStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 10083
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->onAddStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 10082
    return-void
.end method

.method public final dispatchAnimationsFinished()V
    .locals 3

    .prologue
    .line 10179
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10180
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10181
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-interface {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 10180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10183
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 10178
    return-void
.end method

.method public final dispatchChangeFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 10053
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->onChangeFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V

    .line 10054
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 10055
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;->onChangeFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 10052
    :cond_0
    return-void
.end method

.method public final dispatchChangeStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 10096
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->onChangeStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V

    .line 10095
    return-void
.end method

.method public final dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 10024
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->onMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 10025
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 10026
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;->onMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 10023
    :cond_0
    return-void
.end method

.method public final dispatchMoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 10074
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->onMoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 10073
    return-void
.end method

.method public final dispatchRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 10012
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->onRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 10013
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    if-eqz v0, :cond_0

    .line 10014
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;->onRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 10011
    :cond_0
    return-void
.end method

.method public final dispatchRemoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 10065
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->onRemoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 10064
    return-void
.end method

.method public abstract endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
.end method

.method public abstract endAnimations()V
.end method

.method public getAddDuration()J
    .locals 2

    .prologue
    .line 9805
    iget-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mAddDuration:J

    return-wide v0
.end method

.method public getChangeDuration()J
    .locals 2

    .prologue
    .line 9841
    iget-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mChangeDuration:J

    return-wide v0
.end method

.method public getMoveDuration()J
    .locals 2

    .prologue
    .line 9787
    iget-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mMoveDuration:J

    return-wide v0
.end method

.method public getRemoveDuration()J
    .locals 2

    .prologue
    .line 9823
    iget-wide v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mRemoveDuration:J

    return-wide v0
.end method

.method public getSupportsChangeAnimations()Z
    .locals 1

    .prologue
    .line 9859
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mSupportsChangeAnimations:Z

    return v0
.end method

.method public abstract isRunning()Z
.end method

.method public final isRunning(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    .prologue
    .line 10151
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    .line 10152
    .local v0, "running":Z
    if-eqz p1, :cond_0

    .line 10153
    if-nez v0, :cond_1

    .line 10154
    invoke-interface {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->onAnimationsFinished()V

    .line 10159
    :cond_0
    :goto_0
    return v0

    .line 10156
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mFinishedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 10235
    return-void
.end method

.method public onAddStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 10225
    return-void
.end method

.method public onChangeFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 10279
    return-void
.end method

.method public onChangeStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .prologue
    .line 10267
    return-void
.end method

.method public onMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 10255
    return-void
.end method

.method public onMoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 10245
    return-void
.end method

.method public onRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 10215
    return-void
.end method

.method public onRemoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 10205
    return-void
.end method

.method public abstract runPendingAnimations()V
.end method

.method public setAddDuration(J)V
    .locals 1
    .param p1, "addDuration"    # J

    .prologue
    .line 9814
    iput-wide p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mAddDuration:J

    .line 9813
    return-void
.end method

.method public setChangeDuration(J)V
    .locals 1
    .param p1, "changeDuration"    # J

    .prologue
    .line 9850
    iput-wide p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 9849
    return-void
.end method

.method setListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .prologue
    .line 9891
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 9890
    return-void
.end method

.method public setMoveDuration(J)V
    .locals 1
    .param p1, "moveDuration"    # J

    .prologue
    .line 9796
    iput-wide p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mMoveDuration:J

    .line 9795
    return-void
.end method

.method public setRemoveDuration(J)V
    .locals 1
    .param p1, "removeDuration"    # J

    .prologue
    .line 9832
    iput-wide p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mRemoveDuration:J

    .line 9831
    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .locals 0
    .param p1, "supportsChangeAnimations"    # Z

    .prologue
    .line 9879
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->mSupportsChangeAnimations:Z

    .line 9878
    return-void
.end method
