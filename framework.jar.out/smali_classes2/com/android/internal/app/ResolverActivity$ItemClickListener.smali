.class Lcom/android/internal/app/ResolverActivity$ItemClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1722
    instance-of v5, p1, Landroid/widget/ListView;

    if-eqz v5, :cond_1

    check-cast p1, Landroid/widget/ListView;

    .end local p1    # "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v2, p1

    .line 1723
    .local v2, "listView":Landroid/widget/ListView;
    :goto_0
    if-eqz v2, :cond_0

    .line 1724
    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int/2addr p3, v5

    .line 1726
    :cond_0
    if-gez p3, :cond_2

    .line 1742
    :goto_1
    return-void

    .line 1722
    .end local v2    # "listView":Landroid/widget/ListView;
    .restart local p1    # "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1730
    .end local p1    # "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .restart local v2    # "listView":Landroid/widget/ListView;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    .line 1731
    .local v0, "checkedPos":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_5

    move v1, v3

    .line 1732
    .local v1, "hasValidSelection":Z
    :goto_2
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mLastSelected:I
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$800(Lcom/android/internal/app/ResolverActivity;)I

    move-result v5

    if-eq v5, v0, :cond_6

    .line 1733
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V
    invoke-static {v4, v1, v0, v3}, Lcom/android/internal/app/ResolverActivity;->access$900(Lcom/android/internal/app/ResolverActivity;ZIZ)V

    .line 1734
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1000(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1735
    if-eqz v1, :cond_4

    .line 1736
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 1738
    :cond_4
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # setter for: Lcom/android/internal/app/ResolverActivity;->mLastSelected:I
    invoke-static {v3, v0}, Lcom/android/internal/app/ResolverActivity;->access$802(Lcom/android/internal/app/ResolverActivity;I)I

    goto :goto_1

    .end local v1    # "hasValidSelection":Z
    :cond_5
    move v1, v4

    .line 1731
    goto :goto_2

    .line 1740
    .restart local v1    # "hasValidSelection":Z
    :cond_6
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5, p3, v4, v3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    goto :goto_1
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    .line 1746
    instance-of v3, p1, Landroid/widget/ListView;

    if-eqz v3, :cond_1

    check-cast p1, Landroid/widget/ListView;

    .end local p1    # "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    .line 1747
    .local v0, "listView":Landroid/widget/ListView;
    :goto_0
    if-eqz v0, :cond_0

    .line 1748
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr p3, v3

    .line 1750
    :cond_0
    if-gez p3, :cond_2

    .line 1752
    const/4 v2, 0x0

    .line 1756
    :goto_1
    return v2

    .line 1746
    .end local v0    # "listView":Landroid/widget/ListView;
    .restart local p1    # "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1754
    .end local p1    # "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .restart local v0    # "listView":Landroid/widget/ListView;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1755
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity;->showAppDetails(Landroid/content/pm/ResolveInfo;)V

    goto :goto_1
.end method
