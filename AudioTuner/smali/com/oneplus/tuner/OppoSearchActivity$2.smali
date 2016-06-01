.class Lcom/oneplus/tuner/OppoSearchActivity$2;
.super Ljava/lang/Object;
.source "OppoSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OppoSearchActivity;->showHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OppoSearchActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OppoSearchActivity;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/oneplus/tuner/OppoSearchActivity$2;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/16 v4, 0x8

    .line 180
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$2;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->adapter:Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$000(Lcom/oneplus/tuner/OppoSearchActivity;)Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    .local v0, "history_text":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$2;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mSearchEditor:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$100(Lcom/oneplus/tuner/OppoSearchActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$2;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mSearchEditor:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$100(Lcom/oneplus/tuner/OppoSearchActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 187
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$2;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$200(Lcom/oneplus/tuner/OppoSearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 188
    .local v1, "size":I
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$2;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$200(Lcom/oneplus/tuner/OppoSearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    sub-int v3, v1, p3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 189
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$2;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$200(Lcom/oneplus/tuner/OppoSearchActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$2;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->adapter:Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$000(Lcom/oneplus/tuner/OppoSearchActivity;)Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;->notifyDataSetChanged()V

    .line 194
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$2;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mHistorySearch:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$300(Lcom/oneplus/tuner/OppoSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$2;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryContent:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$400(Lcom/oneplus/tuner/OppoSearchActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 197
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$2;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$500(Lcom/oneplus/tuner/OppoSearchActivity;)Lcom/oppo/tribune/square/SquareTopLineControl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oppo/tribune/square/SquareTopLineControl;->startSearch(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity$2;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    # getter for: Lcom/oneplus/tuner/OppoSearchActivity;->topLineView:Lcom/oppo/tribune/square/SquareTopLineView;
    invoke-static {v2}, Lcom/oneplus/tuner/OppoSearchActivity;->access$600(Lcom/oneplus/tuner/OppoSearchActivity;)Lcom/oppo/tribune/square/SquareTopLineView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oppo/tribune/square/SquareTopLineView;->setVisibility(I)V

    .line 200
    return-void
.end method
