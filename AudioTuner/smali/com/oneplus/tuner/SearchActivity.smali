.class public Lcom/oneplus/tuner/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/SearchActivity$HistoryAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchActivity"


# instance fields
.field private mCurrentEarphone:Landroid/widget/TextView;

.field private mHistoryList:Landroid/widget/ListView;

.field private mKeyword:Ljava/lang/String;

.field private mRefreshRunnable:Ljava/lang/Runnable;

.field private mSearchEdit:Landroid/widget/EditText;

.field private mSelection:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/tuner/SearchActivity;->mSelection:Ljava/lang/String;

    .line 174
    new-instance v0, Lcom/oneplus/tuner/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/SearchActivity$2;-><init>(Lcom/oneplus/tuner/SearchActivity;)V

    iput-object v0, p0, Lcom/oneplus/tuner/SearchActivity;->mRefreshRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/SearchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/SearchActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oneplus/tuner/SearchActivity;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/SearchActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/SearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/SearchActivity;->refreshListView(Ljava/lang/String;)V

    return-void
.end method

.method private refreshListView(Ljava/lang/String;)V
    .locals 8
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_keyword LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/SearchActivity;->mSelection:Ljava/lang/String;

    .line 58
    :goto_0
    sget-object v1, Lcom/oneplus/tuner/providers/Tables$SearchHistory;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/oneplus/tuner/SearchActivity;->mSelection:Ljava/lang/String;

    const-string v5, "_lasttime DESC"

    move-object v0, p0

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/tuner/SearchActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 60
    .local v7, "cursor":Landroid/database/Cursor;
    new-instance v6, Lcom/oneplus/tuner/SearchActivity$HistoryAdapter;

    invoke-direct {v6, p0, p0, v7}, Lcom/oneplus/tuner/SearchActivity$HistoryAdapter;-><init>(Lcom/oneplus/tuner/SearchActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 61
    .local v6, "adapter":Lcom/oneplus/tuner/SearchActivity$HistoryAdapter;
    iget-object v0, p0, Lcom/oneplus/tuner/SearchActivity;->mHistoryList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    iget-object v0, p0, Lcom/oneplus/tuner/SearchActivity;->mHistoryList:Landroid/widget/ListView;

    new-instance v1, Lcom/oneplus/tuner/SearchActivity$1;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/SearchActivity$1;-><init>(Lcom/oneplus/tuner/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    return-void

    .line 56
    .end local v6    # "adapter":Lcom/oneplus/tuner/SearchActivity$HistoryAdapter;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    iput-object v2, p0, Lcom/oneplus/tuner/SearchActivity;->mSelection:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/SearchActivity;->mKeyword:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/oneplus/tuner/SearchActivity;->mSearchEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/oneplus/tuner/SearchActivity;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 79
    iget-object v0, p0, Lcom/oneplus/tuner/SearchActivity;->mSearchEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/oneplus/tuner/SearchActivity;->mRefreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v1, 0x7f030064

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/SearchActivity;->setContentView(I)V

    .line 41
    const v1, 0x7f0b01cf

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/oneplus/tuner/SearchActivity;->mSearchEdit:Landroid/widget/EditText;

    .line 42
    iget-object v1, p0, Lcom/oneplus/tuner/SearchActivity;->mSearchEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 43
    iget-object v1, p0, Lcom/oneplus/tuner/SearchActivity;->mSearchEdit:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 44
    const v1, 0x7f0b0087

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/tuner/SearchActivity;->mCurrentEarphone:Landroid/widget/TextView;

    .line 45
    const v1, 0x7f0b008a

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/oneplus/tuner/SearchActivity;->mHistoryList:Landroid/widget/ListView;

    .line 46
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "emptyView":Landroid/view/View;
    iget-object v1, p0, Lcom/oneplus/tuner/SearchActivity;->mHistoryList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 48
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/tuner/SearchActivity;->refreshListView(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 98
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    const v1, 0x7f0b01cf

    if-ne v0, v1, :cond_3

    .line 99
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 100
    const/4 v6, 0x1

    .line 101
    .local v6, "count":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/oneplus/tuner/SearchActivity;->mSearchEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/oneplus/tuner/SearchActivity;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 103
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/SearchActivity;->mKeyword:Ljava/lang/String;

    .line 104
    const-string v3, "_keyword=?"

    .line 105
    .local v3, "seletion":Ljava/lang/String;
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_count"

    aput-object v0, v2, v9

    .line 106
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oneplus/tuner/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/tuner/providers/Tables$SearchHistory;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/tuner/SearchActivity;->mKeyword:Ljava/lang/String;

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 109
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    .line 112
    :cond_0
    if-eqz v7, :cond_1

    .line 113
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v8, "values":Landroid/content/ContentValues;
    const-string v0, "_keyword"

    iget-object v1, p0, Lcom/oneplus/tuner/SearchActivity;->mKeyword:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "_lasttime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    const-string v0, "_count"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    invoke-virtual {p0}, Lcom/oneplus/tuner/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/tuner/providers/Tables$SearchHistory;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 123
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "seletion":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_2
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/oneplus/tuner/SearchActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 129
    .end local v6    # "count":I
    :cond_3
    return v9
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 93
    return-void
.end method
