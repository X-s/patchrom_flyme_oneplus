.class Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;
.super Landroid/os/AsyncTask;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSuggestionsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;
    .param p2, "x1"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;-><init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/search/Index;->getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 99
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->doInBackground([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    # invokes: Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->access$200(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V

    .line 109
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->access$300(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Z)V

    .line 113
    :cond_0
    :goto_1
    return-void

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :cond_2
    if-eqz p1, :cond_0

    .line 111
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 99
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
