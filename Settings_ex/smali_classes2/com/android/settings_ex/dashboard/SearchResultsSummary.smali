.class public Lcom/android/settings_ex/dashboard/SearchResultsSummary;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;,
        Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;,
        Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionItem;,
        Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;,
        Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;,
        Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;
    }
.end annotation


# static fields
.field private static ELLIPSIS:C = '\u0000'

.field private static final EMPTY_QUERY:Ljava/lang/String; = ""

.field private static final LOG_TAG:Ljava/lang/String; = "SearchResultsSummary"

.field private static final SAVE_KEY_SHOW_RESULTS:Ljava/lang/String; = ":settings:show_results"


# instance fields
.field private mLayoutResults:Landroid/view/ViewGroup;

.field private mLayoutSuggestions:Landroid/view/ViewGroup;

.field private mQuery:Ljava/lang/String;

.field private mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

.field private mResultsListView:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowResults:Z

.field private mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

.field private mSuggestionsListView:Landroid/widget/ListView;

.field private mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

.field private mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->saveQueryToDatabase()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x2026

    sput-char v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->ELLIPSIS:C

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private clearAllTasks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 375
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 377
    iput-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 381
    iput-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 374
    :cond_1
    return-void
.end method

.method private clearResults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->cancel(Z)Z

    .line 344
    iput-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 346
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 341
    return-void
.end method

.method private clearSuggestions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->cancel(Z)Z

    .line 326
    iput-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 328
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 323
    return-void
.end method

.method private getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 360
    if-nez p1, :cond_0

    .line 361
    return-object v3

    .line 363
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v1, "filtered":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 365
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 366
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 369
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private saveQueryToDatabase()V
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/search/Index;->addSavedQuery(Ljava/lang/String;)J

    .line 285
    return-void
.end method

.method private setResultsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 350
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    if-nez v1, :cond_0

    .line 351
    return-void

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 354
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 355
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 349
    :cond_1
    return-void
.end method

.method private setResultsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 279
    :cond_0
    return-void

    .line 281
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    if-nez v1, :cond_0

    .line 333
    return-void

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 336
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 337
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 331
    :cond_1
    return-void
.end method

.method private setSuggestionsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 273
    :cond_0
    return-void

    .line 275
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateSearchResults()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 396
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->clearAllTasks()V

    .line 397
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-direct {p0, v3}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 399
    invoke-direct {p0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsCursor(Landroid/database/Cursor;)V

    .line 395
    :goto_0
    return-void

    .line 401
    :cond_0
    new-instance v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;-><init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 402
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 386
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->clearAllTasks()V

    .line 387
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 388
    invoke-direct {p0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 385
    :goto_0
    return-void

    .line 390
    :cond_0
    new-instance v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;-><init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 391
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 257
    const/16 v0, 0x22

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    new-instance v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    .line 126
    new-instance v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    .line 128
    if-eqz p1, :cond_0

    .line 129
    const-string/jumbo v0, ":settings:show_results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 122
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 167
    const v1, 0x7f040185

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1102db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutSuggestions:Landroid/view/ViewGroup;

    .line 170
    const v1, 0x7f1102dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mLayoutResults:Landroid/view/ViewGroup;

    .line 172
    const v1, 0x7f1102de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 173
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$1;-><init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 222
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 223
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 224
    iget-object v3, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    const v4, 0x7f040186

    .line 223
    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 222
    invoke-virtual {v1, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 227
    const v1, 0x7f1102dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 228
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 229
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$2;-><init>(Lcom/android/settings_ex/dashboard/SearchResultsSummary;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 247
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 248
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 249
    iget-object v3, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    const v4, 0x7f040187

    .line 248
    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 247
    invoke-virtual {v1, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 252
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsListView:Landroid/widget/ListView;

    .line 151
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mResultsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    .line 152
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSearchResultsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSearchResultsTask;

    .line 154
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsListView:Landroid/widget/ListView;

    .line 155
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSuggestionsAdapter:Lcom/android/settings_ex/dashboard/SearchResultsSummary$SuggestionsAdapter;

    .line 156
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mUpdateSuggestionsTask:Lcom/android/settings_ex/dashboard/SearchResultsSummary$UpdateSuggestionsTask;

    .line 158
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 160
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onDestroy()V

    .line 149
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 300
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "newQuery":Ljava/lang/String;
    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 304
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    iput-boolean v2, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 306
    invoke-direct {p0, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 307
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->updateSuggestions()V

    .line 314
    :goto_0
    return v3

    .line 309
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 310
    invoke-direct {p0, v2}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 311
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->updateSearchResults()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 290
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->getFilteredQueryString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    .line 292
    invoke-direct {p0, v1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setSuggestionsVisibility(Z)V

    .line 293
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->updateSearchResults()V

    .line 294
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->saveQueryToDatabase()V

    .line 296
    return v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 264
    iget-boolean v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->showSomeSuggestions()V

    .line 261
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 137
    const-string/jumbo v0, ":settings:show_results"

    iget-boolean v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mShowResults:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onStop()V

    .line 144
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->clearSuggestions()V

    .line 145
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->clearResults()V

    .line 141
    return-void
.end method

.method public setSearchView(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mSearchView:Landroid/widget/SearchView;

    .line 269
    return-void
.end method

.method public showSomeSuggestions()V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->setResultsVisibility(Z)V

    .line 319
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->mQuery:Ljava/lang/String;

    .line 320
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary;->updateSuggestions()V

    .line 317
    return-void
.end method
