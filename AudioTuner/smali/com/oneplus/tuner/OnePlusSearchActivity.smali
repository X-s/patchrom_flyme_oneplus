.class public Lcom/oneplus/tuner/OnePlusSearchActivity;
.super Lcom/oneplus/tuner/base/BaseActivity;
.source "OnePlusSearchActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/OnePlusSearchActivity$ViewHolder;,
        Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;
    }
.end annotation


# static fields
.field private static final MAX_HISTORY_NUM:I = 0x8


# instance fields
.field private isAddedFooterView:Z

.field private mAdapter:Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;

.field private mBackView:Landroid/widget/ImageView;

.field private mClearSearchHistoryBtn:Landroid/widget/Button;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mEmptyViewContainer:Landroid/widget/LinearLayout;

.field private mFooterView:Landroid/view/View;

.field private mHistoryContainer:Landroid/widget/LinearLayout;

.field private mHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHistorySp:Landroid/content/SharedPreferences;

.field private mIMM:Landroid/view/inputmethod/InputMethodManager;

.field private mResultContainer:Landroid/widget/LinearLayout;

.field private mSearchHistoryList:Landroid/widget/ListView;

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultList:Lcom/oppo/tribune/square/SquareTopLineView;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSearchViewLayout:Landroid/widget/RelativeLayout;

.field private mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/oneplus/tuner/base/BaseActivity;-><init>()V

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/OnePlusSearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusSearchActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/OnePlusSearchActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusSearchActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/tuner/OnePlusSearchActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusSearchActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchHistoryList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/tuner/OnePlusSearchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusSearchActivity;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->isAddedFooterView:Z

    return v0
.end method

.method static synthetic access$302(Lcom/oneplus/tuner/OnePlusSearchActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusSearchActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->isAddedFooterView:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/tuner/OnePlusSearchActivity;)Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusSearchActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mAdapter:Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/tuner/OnePlusSearchActivity;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusSearchActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/oneplus/tuner/OnePlusSearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oneplus/tuner/OnePlusSearchActivity;)Lcom/oppo/tribune/square/SquareTopLineControl;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusSearchActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/tuner/OnePlusSearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusSearchActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->showResult()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/tuner/OnePlusSearchActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OnePlusSearchActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private findViewsAndRegisteListener()V
    .locals 3

    .prologue
    .line 109
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mFooterView:Landroid/view/View;

    .line 110
    const v0, 0x7f0b017e

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryContainer:Landroid/widget/LinearLayout;

    .line 111
    const v0, 0x7f0b0180

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mResultContainer:Landroid/widget/LinearLayout;

    .line 112
    const v0, 0x7f0b0182

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mEmptyViewContainer:Landroid/widget/LinearLayout;

    .line 113
    const v0, 0x7f0b017f

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchHistoryList:Landroid/widget/ListView;

    .line 114
    const v0, 0x7f0b0181

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/tribune/square/SquareTopLineView;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchResultList:Lcom/oppo/tribune/square/SquareTopLineView;

    .line 115
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mFooterView:Landroid/view/View;

    const v1, 0x7f0b017d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mClearSearchHistoryBtn:Landroid/widget/Button;

    .line 117
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mClearSearchHistoryBtn:Landroid/widget/Button;

    new-instance v1, Lcom/oneplus/tuner/OnePlusSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/OnePlusSearchActivity$1;-><init>(Lcom/oneplus/tuner/OnePlusSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchHistoryList:Landroid/widget/ListView;

    new-instance v1, Lcom/oneplus/tuner/OnePlusSearchActivity$2;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/OnePlusSearchActivity$2;-><init>(Lcom/oneplus/tuner/OnePlusSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchHistoryList:Landroid/widget/ListView;

    new-instance v1, Lcom/oneplus/tuner/OnePlusSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/OnePlusSearchActivity$3;-><init>(Lcom/oneplus/tuner/OnePlusSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    return-void
.end method

.method private putHistoryToSp()V
    .locals 4

    .prologue
    .line 385
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 387
    iget-object v2, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 390
    return-void
.end method

.method private readSearchHistory()V
    .locals 6

    .prologue
    .line 168
    iget-object v2, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistorySp:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 170
    const-string v2, "history"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/tuner/OnePlusSearchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistorySp:Landroid/content/SharedPreferences;

    .line 171
    iget-object v2, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistorySp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 174
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    .line 178
    :goto_0
    iget-object v2, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistorySp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    .line 179
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 180
    iget-object v2, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistorySp:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    iget-object v2, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 182
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_2
    return-void
.end method

.method private showHistory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mResultContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    invoke-virtual {p0, v2}, Lcom/oneplus/tuner/OnePlusSearchActivity;->showEmptyView(Z)V

    .line 234
    return-void
.end method

.method private showResult()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mResultContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 239
    invoke-virtual {p0, v2}, Lcom/oneplus/tuner/OnePlusSearchActivity;->showEmptyView(Z)V

    .line 240
    return-void
.end method


# virtual methods
.method protected configCurrentSelectedSlideMenuIndex()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method protected configIsSlideMenuEnable()V
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mIsSlideMenuEnable:Z

    .line 395
    iput-object p0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mActivity:Landroid/app/Activity;

    .line 396
    return-void
.end method

.method protected configIsTitlebarMenuEnable()V
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mIsTitlebarMenuEnable:Z

    .line 401
    return-void
.end method

.method protected configIsTitlebarOnlyOneMenuItem()V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->showHistory()V

    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 76
    invoke-super {p0, p1}, Lcom/oneplus/tuner/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v1, 0x7f030052

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/OnePlusSearchActivity;->setContent(I)V

    .line 78
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, "editTextId":I
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/OnePlusSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 81
    invoke-direct {p0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->findViewsAndRegisteListener()V

    .line 82
    invoke-direct {p0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->readSearchHistory()V

    .line 83
    new-instance v1, Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;

    iget-object v2, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2}, Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;-><init>(Lcom/oneplus/tuner/OnePlusSearchActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mAdapter:Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;

    .line 84
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchHistoryList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mAdapter:Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchHistoryList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 87
    iput-boolean v5, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->isAddedFooterView:Z

    .line 88
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/OnePlusSearchActivity;->showEmptyView(Z)V

    .line 92
    :goto_0
    new-instance v1, Lcom/oppo/tribune/square/SquareTopLineControl;

    iget-object v2, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchResultList:Lcom/oppo/tribune/square/SquareTopLineView;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/oppo/tribune/square/SquareTopLineControl;-><init>(Landroid/content/Context;Lcom/oppo/tribune/square/SquareTopLineView;I)V

    iput-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    .line 100
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0, v5}, Lcom/oneplus/tuner/OnePlusSearchActivity;->showEmptyView(Z)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v8, 0x1

    .line 244
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 245
    .local v2, "infalter":Landroid/view/MenuInflater;
    const v4, 0x7f0f0001

    invoke-virtual {v2, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 309
    const v4, 0x7f0b01fb

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchViewLayout:Landroid/widget/RelativeLayout;

    .line 310
    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchViewLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f0b0168

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mBackView:Landroid/widget/ImageView;

    .line 311
    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchViewLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f0b0183

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SearchView;

    iput-object v4, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchView:Landroid/widget/SearchView;

    .line 312
    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 314
    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v8}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 315
    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v8}, Landroid/widget/SearchView;->setFocusableInTouchMode(Z)V

    .line 316
    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->requestFocus()Z

    .line 318
    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 319
    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 321
    iget-object v3, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchQuery:Ljava/lang/String;

    .line 322
    .local v3, "query":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v3, v8}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 324
    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mBackView:Landroid/widget/ImageView;

    new-instance v5, Lcom/oneplus/tuner/OnePlusSearchActivity$4;

    invoke-direct {v5, p0}, Lcom/oneplus/tuner/OnePlusSearchActivity$4;-><init>(Lcom/oneplus/tuner/OnePlusSearchActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "search_src_text"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 333
    .local v1, "editTextid":I
    iget-object v4, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 335
    .local v0, "editText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c06c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 336
    invoke-virtual {p0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 338
    new-instance v4, Lcom/oneplus/tuner/OnePlusSearchActivity$5;

    invoke-direct {v4, p0}, Lcom/oneplus/tuner/OnePlusSearchActivity$5;-><init>(Lcom/oneplus/tuner/OnePlusSearchActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 365
    return v8
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 380
    invoke-super {p0}, Lcom/oneplus/tuner/base/BaseActivity;->onDestroy()V

    .line 381
    invoke-direct {p0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->putHistoryToSp()V

    .line 382
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 424
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchQuery:Ljava/lang/String;

    .line 426
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 428
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 438
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->isAddedFooterView:Z

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchHistoryList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->isAddedFooterView:Z

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mAdapter:Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;

    invoke-virtual {v0}, Lcom/oneplus/tuner/OnePlusSearchActivity$HistoryAdapter;->notifyDataSetChanged()V

    .line 444
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineControl;->startSearch(Ljava/lang/String;)V

    .line 445
    invoke-direct {p0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->showResult()V

    .line 446
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 448
    return v2

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 431
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 435
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/oneplus/tuner/base/BaseActivity;->onResume()V

    .line 105
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineControl;->onResume(Z)V

    .line 106
    return-void
.end method

.method public showEmptyView(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    const/16 v2, 0x8

    .line 369
    if-eqz p1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mEmptyViewContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mHistoryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mResultContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity;->mEmptyViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
