.class Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$1;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final SELECTION_GAINED:I = 0x1

.field private static final SELECTION_LOST:I = 0x0

.field private static final SELECTION_UNCHANGED:I = -0x1


# instance fields
.field private mSelectionStatus:I

.field final synthetic this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

.field final synthetic val$dragElevation:F


# direct methods
.method constructor <init>(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;IIF)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I
    .param p4, "val$dragElevation"    # F

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    iput p4, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$1;->val$dragElevation:F

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;-><init>(II)V

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    .line 117
    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 121
    instance-of v0, p2, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    const/4 v3, -0x1

    .line 152
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 155
    iget v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    if-eq v0, v3, :cond_0

    .line 156
    iget-object v1, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 157
    iget v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$1;->val$dragElevation:F

    .line 156
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setElevation(F)V

    .line 158
    iput v3, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    .line 150
    :cond_0
    return-void

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "source"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 131
    instance-of v0, p2, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    if-eqz v0, :cond_0

    instance-of v0, p3, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    goto :goto_0
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 165
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 166
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    if-nez p2, :cond_0

    .line 168
    iput v1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    goto :goto_0
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 138
    return-void
.end method
