.class Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/dashboard/SearchResultsSummary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 243
    add-int/lit8 p3, p3, -0x1

    .line 246
    if-gez p3, :cond_0

    .line 255
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    # getter for: Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->access$700(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    move-result-object v1

    # getter for: Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;->access$800(Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;)Landroid/database/Cursor;

    move-result-object v0

    .line 250
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 252
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->access$902(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Z)Z

    .line 253
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->access$1002(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    # getter for: Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->access$1100(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    # getter for: Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->access$1000(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method
