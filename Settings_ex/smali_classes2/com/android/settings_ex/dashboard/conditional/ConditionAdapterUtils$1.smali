.class final Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$1;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;
.source "ConditionAdapterUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils;->addDismiss(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(IILandroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "$anonymous0"    # I
    .param p2, "$anonymous1"    # I
    .param p3, "val$recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 38
    iput-object p3, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;-><init>(II)V

    .line 39
    return-void
.end method


# virtual methods
.method public getSwipeDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const v1, 0x7f040042

    if-ne v0, v1, :cond_0

    .line 49
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 48
    :goto_0
    return v0

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .prologue
    .line 54
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/dashboard/DashboardAdapter;

    .line 55
    .local v0, "adapter":Lcom/android/settings_ex/dashboard/DashboardAdapter;
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->getItem(J)Ljava/lang/Object;

    move-result-object v1

    .line 56
    .local v1, "item":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/settings_ex/dashboard/conditional/Condition;

    if-eqz v2, :cond_0

    .line 57
    check-cast v1, Lcom/android/settings_ex/dashboard/conditional/Condition;

    .end local v1    # "item":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/android/settings_ex/dashboard/conditional/Condition;->silence()V

    .line 53
    :cond_0
    return-void
.end method
