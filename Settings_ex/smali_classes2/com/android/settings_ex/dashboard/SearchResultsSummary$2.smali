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
    .param p1, "this$0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    .prologue
    .line 229
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

    .line 233
    add-int/lit8 p3, p3, -0x1

    .line 236
    if-gez p3, :cond_0

    .line 237
    return-void

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-static {v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->-get3(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;->-get0(Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;)Landroid/database/Cursor;

    move-result-object v0

    .line 240
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 242
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->-set1(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Z)Z

    .line 243
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->-set0(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-static {v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->-get2(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-static {v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->-get0(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 231
    return-void
.end method
