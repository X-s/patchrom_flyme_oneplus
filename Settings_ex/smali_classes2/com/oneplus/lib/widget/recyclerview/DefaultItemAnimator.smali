.class public Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;,
        Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;,
        Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ViewPropertyAnimatorListener;,
        Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$VpaListenerAdapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->animateAddImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V
    .locals 0
    .param p1, "changeInfo"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->animateChangeImpl(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->animateMoveImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method private animateAddImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 229
    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 230
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 231
    .local v0, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getAddDuration()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 233
    new-instance v3, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$5;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$5;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 232
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 228
    return-void
.end method

.method private animateChangeImpl(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V
    .locals 11
    .param p1, "changeInfo"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    .prologue
    const/4 v10, 0x0

    .line 339
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 340
    .local v0, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-nez v0, :cond_2

    const/4 v5, 0x0

    .line 341
    :goto_0
    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 342
    .local v1, "newHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 343
    :goto_1
    if-eqz v5, :cond_0

    .line 344
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 345
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    .line 344
    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 346
    .local v4, "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    iget v6, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->toX:I

    iget v7, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 348
    iget v6, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->toY:I

    iget v7, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 349
    invoke-virtual {v4, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;

    invoke-direct {v7, p0, p1, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$7;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 367
    .end local v4    # "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    :cond_0
    if-eqz v2, :cond_1

    .line 368
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 369
    .local v3, "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 371
    const/high16 v7, 0x3f800000    # 1.0f

    .line 370
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 371
    new-instance v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;

    invoke-direct {v7, p0, p1, v3, v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$8;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 370
    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 338
    .end local v3    # "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    :cond_1
    return-void

    .line 340
    .end local v1    # "newHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_2
    iget-object v5, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .local v5, "view":Landroid/view/View;
    goto :goto_0

    .line 342
    .end local v5    # "view":Landroid/view/View;
    .restart local v1    # "newHolder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_3
    const/4 v2, 0x0

    .local v2, "newView":Landroid/view/View;
    goto :goto_1
.end method

.method private animateMoveImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V
    .locals 8
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    const/4 v1, 0x0

    .line 276
    iget-object v4, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 277
    .local v4, "view":Landroid/view/View;
    sub-int v3, p4, p2

    .line 278
    .local v3, "deltaX":I
    sub-int v5, p5, p3

    .line 279
    .local v5, "deltaY":I
    if-eqz v3, :cond_0

    .line 280
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 282
    :cond_0
    if-eqz v5, :cond_1

    .line 283
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 288
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 289
    .local v6, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$6;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;ILandroid/view/View;I)V

    invoke-virtual {v7, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 275
    return-void
.end method

.method private animateRemoveImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 200
    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 201
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 202
    .local v0, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 204
    const/4 v3, 0x0

    .line 203
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 204
    new-instance v3, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;

    invoke-direct {v3, p0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Landroid/view/View;)V

    .line 203
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 199
    return-void
.end method

.method private dispatchFinishedWhenDone()V
    .locals 1

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 538
    :cond_0
    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 3
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;",
            ">;",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 392
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    .line 393
    .local v0, "changeInfo":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;
    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    .line 395
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 391
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 390
    .end local v0    # "changeInfo":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V
    .locals 1
    .param p1, "changeInfo"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    .prologue
    .line 402
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    .line 405
    :cond_0
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    .line 401
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1, "changeInfo"    # Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;
    .param p2, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "oldItem":Z
    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v1, p2, :cond_0

    .line 412
    iput-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 419
    :goto_0
    iget-object v1, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 420
    iget-object v1, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 421
    iget-object v1, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 422
    invoke-virtual {p0, p2, v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchChangeFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Z)V

    .line 423
    const/4 v1, 0x1

    return v1

    .line 413
    :cond_0
    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v1, p2, :cond_1

    .line 414
    iput-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 415
    const/4 v0, 0x1

    goto :goto_0

    .line 417
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private resetAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 514
    :cond_0
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 515
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 509
    return-void
.end method


# virtual methods
.method public animateAdd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->resetAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 223
    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 224
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public animateChange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z
    .locals 15
    .param p1, "oldHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .prologue
    .line 317
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v12

    .line 318
    .local v12, "prevTranslationX":F
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v13

    .line 319
    .local v13, "prevTranslationY":F
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v11

    .line 320
    .local v11, "prevAlpha":F
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->resetAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 321
    sub-int v1, p5, p3

    int-to-float v1, v1

    sub-float/2addr v1, v12

    float-to-int v9, v1

    .line 322
    .local v9, "deltaX":I
    sub-int v1, p6, p4

    int-to-float v1, v1

    sub-float/2addr v1, v13

    float-to-int v10, v1

    .line 324
    .local v10, "deltaY":I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setTranslationX(F)V

    .line 325
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setTranslationY(F)V

    .line 326
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->setAlpha(F)V

    .line 327
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 329
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->resetAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 330
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v9

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 331
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v10

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 332
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 334
    :cond_0
    iget-object v14, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIIILcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    const/4 v1, 0x1

    return v1
.end method

.method public animateMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z
    .locals 11
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    .line 255
    iget-object v9, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 256
    .local v9, "view":Landroid/view/View;
    int-to-float v0, p2

    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 257
    int-to-float v0, p3

    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p3, v0

    .line 258
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->resetAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 259
    sub-int v7, p4, p2

    .line 260
    .local v7, "deltaX":I
    sub-int v8, p5, p3

    .line 261
    .local v8, "deltaY":I
    if-nez v7, :cond_0

    if-nez v8, :cond_0

    .line 262
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 263
    const/4 v0, 0x0

    return v0

    .line 265
    :cond_0
    if-eqz v7, :cond_1

    .line 266
    neg-int v0, v7

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 268
    :cond_1
    if-eqz v8, :cond_2

    .line 269
    neg-int v0, v8

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 271
    :cond_2
    iget-object v10, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIIILcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public animateRemove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->resetAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 195
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 631
    .local p1, "viewHolders":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 632
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 631
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 630
    :cond_0
    return-void
.end method

.method public endAnimation(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 428
    iget-object v6, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 430
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 432
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 433
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    .line 434
    .local v4, "moveInfo":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    iget-object v7, v4, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v7, p1, :cond_0

    .line 435
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 436
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 437
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 438
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 432
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 441
    .end local v4    # "moveInfo":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    :cond_1
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v7, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 442
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 443
    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 444
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 446
    :cond_2
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 447
    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 448
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 451
    :cond_3
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_1
    if-ltz v2, :cond_5

    .line 452
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 453
    .local v1, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;>;"
    invoke-direct {p0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 454
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 455
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 451
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 458
    .end local v1    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;>;"
    :cond_5
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_2
    if-ltz v2, :cond_8

    .line 459
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 460
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "j":I
    :goto_3
    if-ltz v3, :cond_6

    .line 461
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    .line 462
    .restart local v4    # "moveInfo":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    iget-object v7, v4, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-ne v7, p1, :cond_7

    .line 463
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 464
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 465
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 466
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 467
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 468
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 458
    .end local v4    # "moveInfo":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 460
    .restart local v4    # "moveInfo":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 474
    .end local v3    # "j":I
    .end local v4    # "moveInfo":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;>;"
    :cond_8
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_4
    if-ltz v2, :cond_a

    .line 475
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 476
    .local v0, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 477
    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 478
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 479
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 480
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 474
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 486
    .end local v0    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    :cond_a
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 487
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "after animation is cancelled, item should not be in mRemoveAnimations list"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 491
    :cond_b
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 492
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "after animation is cancelled, item should not be in mAddAnimations list"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 496
    :cond_c
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 497
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "after animation is cancelled, item should not be in mChangeAnimations list"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 501
    :cond_d
    iget-object v7, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 502
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "after animation is cancelled, item should not be in mMoveAnimations list"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 505
    :cond_e
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 427
    return-void
.end method

.method public endAnimations()V
    .locals 14

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 546
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 547
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 548
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    .line 549
    .local v4, "item":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    iget-object v11, v4, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v10, v11, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 550
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v10, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 551
    invoke-virtual {v10, v12}, Landroid/view/View;->setTranslationX(F)V

    .line 552
    iget-object v11, v4, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, v11}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 553
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 547
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 555
    .end local v4    # "item":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    .end local v10    # "view":Landroid/view/View;
    :cond_0
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 556
    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-ltz v3, :cond_1

    .line 557
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 558
    .local v5, "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 559
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 556
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 561
    .end local v5    # "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_1
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 562
    add-int/lit8 v3, v2, -0x1

    :goto_2
    if-ltz v3, :cond_2

    .line 563
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 564
    .restart local v5    # "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v10, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 565
    .restart local v10    # "view":Landroid/view/View;
    invoke-virtual {v10, v13}, Landroid/view/View;->setAlpha(F)V

    .line 566
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 567
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 562
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 569
    .end local v5    # "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v10    # "view":Landroid/view/View;
    :cond_2
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 570
    add-int/lit8 v3, v2, -0x1

    :goto_3
    if-ltz v3, :cond_3

    .line 571
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v11}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V

    .line 570
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 573
    :cond_3
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 574
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->isRunning()Z

    move-result v11

    if-nez v11, :cond_4

    .line 575
    return-void

    .line 578
    :cond_4
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 579
    .local v7, "listCount":I
    add-int/lit8 v3, v7, -0x1

    :goto_4
    if-ltz v3, :cond_7

    .line 580
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 581
    .local v9, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 582
    add-int/lit8 v6, v2, -0x1

    .local v6, "j":I
    :goto_5
    if-ltz v6, :cond_6

    .line 583
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    .line 584
    .local v8, "moveInfo":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    iget-object v5, v8, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 585
    .restart local v5    # "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v10, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 586
    .restart local v10    # "view":Landroid/view/View;
    invoke-virtual {v10, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 587
    invoke-virtual {v10, v12}, Landroid/view/View;->setTranslationX(F)V

    .line 588
    iget-object v11, v8, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p0, v11}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 589
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 590
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 591
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 582
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 579
    .end local v5    # "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v8    # "moveInfo":Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;
    .end local v10    # "view":Landroid/view/View;
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 595
    .end local v6    # "j":I
    .end local v9    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;>;"
    :cond_7
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 596
    add-int/lit8 v3, v7, -0x1

    :goto_6
    if-ltz v3, :cond_a

    .line 597
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 598
    .local v0, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 599
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "j":I
    :goto_7
    if-ltz v6, :cond_9

    .line 600
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 601
    .restart local v5    # "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v10, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 602
    .restart local v10    # "view":Landroid/view/View;
    invoke-virtual {v10, v13}, Landroid/view/View;->setAlpha(F)V

    .line 603
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAddFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 604
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 605
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 606
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 599
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 596
    .end local v5    # "item":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v10    # "view":Landroid/view/View;
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 610
    .end local v0    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    .end local v6    # "j":I
    :cond_a
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 611
    add-int/lit8 v3, v7, -0x1

    :goto_8
    if-ltz v3, :cond_d

    .line 612
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 613
    .local v1, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 614
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "j":I
    :goto_9
    if-ltz v6, :cond_c

    .line 615
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v11}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;)V

    .line 616
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 617
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 614
    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 611
    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 622
    .end local v1    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;>;"
    .end local v6    # "j":I
    :cond_d
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 623
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 624
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 625
    iget-object v11, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 627
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 545
    return-void
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 520
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 520
    :cond_0
    return v0
.end method

.method public runPendingAnimations()V
    .locals 28

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_1

    const/16 v19, 0x0

    .line 105
    .local v19, "removalsPending":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_2

    const/16 v18, 0x0

    .line 106
    .local v18, "movesPending":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_3

    const/4 v11, 0x0

    .line 107
    .local v11, "changesPending":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_4

    const/4 v6, 0x0

    .line 108
    .local v6, "additionsPending":Z
    :goto_3
    if-nez v19, :cond_0

    if-eqz v18, :cond_5

    .line 113
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "holder$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 114
    .local v12, "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->animateRemoveImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    goto :goto_4

    .line 104
    .end local v6    # "additionsPending":Z
    .end local v11    # "changesPending":Z
    .end local v12    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .end local v13    # "holder$iterator":Ljava/util/Iterator;
    .end local v18    # "movesPending":Z
    .end local v19    # "removalsPending":Z
    :cond_1
    const/16 v19, 0x1

    .restart local v19    # "removalsPending":Z
    goto :goto_0

    .line 105
    :cond_2
    const/16 v18, 0x1

    .restart local v18    # "movesPending":Z
    goto :goto_1

    .line 106
    :cond_3
    const/4 v11, 0x1

    .restart local v11    # "changesPending":Z
    goto :goto_2

    .line 107
    :cond_4
    const/4 v6, 0x1

    .restart local v6    # "additionsPending":Z
    goto :goto_3

    .line 108
    :cond_5
    if-nez v6, :cond_0

    if-nez v11, :cond_0

    .line 110
    return-void

    .line 116
    .restart local v13    # "holder$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 118
    if-eqz v18, :cond_7

    .line 119
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v17, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 123
    new-instance v16, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 134
    .local v16, "mover":Ljava/lang/Runnable;
    if-eqz v19, :cond_b

    .line 135
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 136
    .local v24, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 142
    .end local v16    # "mover":Ljava/lang/Runnable;
    .end local v17    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;>;"
    .end local v24    # "view":Landroid/view/View;
    :cond_7
    :goto_5
    if-eqz v11, :cond_8

    .line 143
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v10, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 147
    new-instance v7, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v10}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$2;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 157
    .local v7, "changer":Ljava/lang/Runnable;
    if-eqz v19, :cond_c

    .line 158
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .line 159
    .restart local v12    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    iget-object v0, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v26

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-virtual {v0, v7, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 165
    .end local v7    # "changer":Ljava/lang/Runnable;
    .end local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;>;"
    .end local v12    # "holder":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    :cond_8
    :goto_6
    if-eqz v6, :cond_a

    .line 166
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v5, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 170
    new-instance v4, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$3;-><init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 179
    .local v4, "adder":Ljava/lang/Runnable;
    if-nez v19, :cond_9

    if-nez v18, :cond_9

    if-eqz v11, :cond_10

    .line 180
    :cond_9
    if-eqz v19, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v20

    .line 181
    .local v20, "removeDuration":J
    :goto_7
    if-eqz v18, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v14

    .line 182
    .local v14, "moveDuration":J
    :goto_8
    if-eqz v11, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    .line 183
    .local v8, "changeDuration":J
    :goto_9
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v26

    add-long v22, v20, v26

    .line 184
    .local v22, "totalDelay":J
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 185
    .restart local v24    # "view":Landroid/view/View;
    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-virtual {v0, v4, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 103
    .end local v4    # "adder":Ljava/lang/Runnable;
    .end local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    .end local v8    # "changeDuration":J
    .end local v14    # "moveDuration":J
    .end local v20    # "removeDuration":J
    .end local v22    # "totalDelay":J
    .end local v24    # "view":Landroid/view/View;
    :cond_a
    :goto_a
    return-void

    .line 138
    .restart local v16    # "mover":Ljava/lang/Runnable;
    .restart local v17    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;>;"
    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_5

    .line 161
    .end local v16    # "mover":Ljava/lang/Runnable;
    .end local v17    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$MoveInfo;>;"
    .restart local v7    # "changer":Ljava/lang/Runnable;
    .restart local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;>;"
    :cond_c
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    .line 180
    .end local v7    # "changer":Ljava/lang/Runnable;
    .end local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$ChangeInfo;>;"
    .restart local v4    # "adder":Ljava/lang/Runnable;
    .restart local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;>;"
    :cond_d
    const-wide/16 v20, 0x0

    .restart local v20    # "removeDuration":J
    goto :goto_7

    .line 181
    :cond_e
    const-wide/16 v14, 0x0

    .restart local v14    # "moveDuration":J
    goto :goto_8

    .line 182
    :cond_f
    const-wide/16 v8, 0x0

    goto :goto_9

    .line 187
    .end local v14    # "moveDuration":J
    .end local v20    # "removeDuration":J
    :cond_10
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_a
.end method
