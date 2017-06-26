.class Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;
.super Landroid/os/AsyncTask;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSearchResultsTask"
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
    .line 77
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary;
    .param p2, "x1"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;-><init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/search/Index;->search(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 77
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->doInBackground([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    # invokes: Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->access$000(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V

    .line 89
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->this$0:Lcom/android/settings_ex/dashboard/SearchResultsSummary;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->access$100(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Z)V

    .line 93
    :cond_0
    :goto_1
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_2
    if-eqz p1, :cond_0

    .line 91
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 77
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
