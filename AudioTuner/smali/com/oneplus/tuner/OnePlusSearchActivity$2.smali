.class Lcom/oneplus/tuner/OnePlusSearchActivity$2;
.super Ljava/lang/Object;
.source "OnePlusSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OnePlusSearchActivity;->findViewsAndRegisteListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OnePlusSearchActivity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 134
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->mAdapter:Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;
    invoke-static {v1}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$400(Lcom/oneplus/tuner/OnePlusSearchActivity;)Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    .local v0, "keywords":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$000(Lcom/oneplus/tuner/OnePlusSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 137
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$000(Lcom/oneplus/tuner/OnePlusSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 138
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->isAddedFooterView:Z
    invoke-static {v1}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$300(Lcom/oneplus/tuner/OnePlusSearchActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchHistoryList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$200(Lcom/oneplus/tuner/OnePlusSearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->mFooterView:Landroid/view/View;
    invoke-static {v2}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$100(Lcom/oneplus/tuner/OnePlusSearchActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 140
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    const/4 v2, 0x1

    # setter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->isAddedFooterView:Z
    invoke-static {v1, v2}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$302(Lcom/oneplus/tuner/OnePlusSearchActivity;Z)Z

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->mAdapter:Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;
    invoke-static {v1}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$400(Lcom/oneplus/tuner/OnePlusSearchActivity;)Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;->notifyDataSetChanged()V

    .line 144
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$500(Lcom/oneplus/tuner/OnePlusSearchActivity;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 145
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    # setter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchQuery:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$602(Lcom/oneplus/tuner/OnePlusSearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;
    invoke-static {v1}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$700(Lcom/oneplus/tuner/OnePlusSearchActivity;)Lcom/oppo/tribune/square/SquareTopLineControl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->startSearch(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    # invokes: Lcom/oneplus/tuner/OnePlusSearchActivity;->showResult()V
    invoke-static {v1}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$800(Lcom/oneplus/tuner/OnePlusSearchActivity;)V

    .line 149
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$2;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$500(Lcom/oneplus/tuner/OnePlusSearchActivity;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 152
    return-void
.end method
