.class Lcom/android/settings_ex/dashboard/DashboardSummary$SuggestionLoader;
.super Landroid/os/AsyncTask;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings_exlib/drawer/Tile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/dashboard/DashboardSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/dashboard/DashboardSummary;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/dashboard/DashboardSummary;Lcom/android/settings_ex/dashboard/DashboardSummary$SuggestionLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/dashboard/DashboardSummary;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/DashboardSummary$SuggestionLoader;-><init>(Lcom/android/settings_ex/dashboard/DashboardSummary;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 516
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/dashboard/DashboardSummary$SuggestionLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/drawer/Tile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    iget-object v3, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;

    invoke-static {v3}, Lcom/android/settings_ex/dashboard/DashboardSummary;->-get3(Lcom/android/settings_ex/dashboard/DashboardSummary;)Lcom/android/settings_exlib/SuggestionParser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_exlib/SuggestionParser;->getSuggestions()Ljava/util/List;

    move-result-object v2

    .line 518
    .local v2, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/drawer/Tile;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 519
    iget-object v3, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;

    invoke-static {v3}, Lcom/android/settings_ex/dashboard/DashboardSummary;->-get4(Lcom/android/settings_ex/dashboard/DashboardSummary;)Lcom/android/settings_ex/dashboard/SuggestionsChecks;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_exlib/drawer/Tile;

    invoke-virtual {v4, v3}, Lcom/android/settings_ex/dashboard/SuggestionsChecks;->isSuggestionComplete(Lcom/android/settings_exlib/drawer/Tile;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 520
    iget-object v3, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;

    invoke-static {v3}, Lcom/android/settings_ex/dashboard/DashboardSummary;->-get1(Lcom/android/settings_ex/dashboard/DashboardSummary;)Lcom/android/settings_ex/dashboard/DashboardAdapter;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_exlib/drawer/Tile;

    invoke-virtual {v4, v3}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->disableSuggestion(Lcom/android/settings_exlib/drawer/Tile;)V

    .line 521
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    .line 518
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    :cond_1
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tiles"    # Ljava/lang/Object;

    .prologue
    .line 528
    check-cast p1, Ljava/util/List;

    .end local p1    # "tiles":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/dashboard/DashboardSummary$SuggestionLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_exlib/drawer/Tile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 529
    .local p1, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_exlib/drawer/Tile;>;"
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary$SuggestionLoader;->this$0:Lcom/android/settings_ex/dashboard/DashboardSummary;

    invoke-static {v0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->-get1(Lcom/android/settings_ex/dashboard/DashboardSummary;)Lcom/android/settings_ex/dashboard/DashboardAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/dashboard/DashboardAdapter;->setSuggestions(Ljava/util/List;)V

    .line 528
    return-void
.end method
