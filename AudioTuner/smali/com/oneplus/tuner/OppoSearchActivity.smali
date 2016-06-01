.class public Lcom/oneplus/tuner/OppoSearchActivity;
.super Lcom/oppo/tribune/BaseActivity;
.source "OppoSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;
    }
.end annotation


# static fields
.field private static final MAX_HISTORY_NUM:I = 0x8


# instance fields
.field private adapter:Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;

.field private mClearInput:Landroid/widget/ImageButton;

.field mContext:Landroid/content/Context;

.field private mCurrentHeadset:Landroid/widget/TextView;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mHistory:Landroid/content/SharedPreferences;

.field private mHistoryContent:Landroid/widget/ListView;

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

.field private mHistorySearch:Landroid/widget/LinearLayout;

.field private mIMM:Landroid/view/inputmethod/InputMethodManager;

.field private mSearchEditor:Landroid/widget/EditText;

.field private mSearchMenu:Landroid/widget/LinearLayout;

.field private mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

.field private topLineView:Lcom/oppo/tribune/square/SquareTopLineView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/oppo/tribune/BaseActivity;-><init>()V

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/OppoSearchActivity;)Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OppoSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->adapter:Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/tuner/OppoSearchActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OppoSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mSearchEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/tuner/OppoSearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OppoSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/tuner/OppoSearchActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OppoSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistorySearch:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/tuner/OppoSearchActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OppoSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryContent:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/tuner/OppoSearchActivity;)Lcom/oppo/tribune/square/SquareTopLineControl;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OppoSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/tuner/OppoSearchActivity;)Lcom/oppo/tribune/square/SquareTopLineView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OppoSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->topLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/tuner/OppoSearchActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OppoSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/tuner/OppoSearchActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/tuner/OppoSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/oneplus/tuner/OppoSearchActivity;->deleteHistoryItem(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/tuner/OppoSearchActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/OppoSearchActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mClearInput:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private deleteHistoryItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->adapter:Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;

    invoke-virtual {v0}, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;->notifyDataSetChanged()V

    .line 270
    return-void
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 112
    const v0, 0x7f0b0087

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OppoSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mCurrentHeadset:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0b0088

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OppoSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistorySearch:Landroid/widget/LinearLayout;

    .line 114
    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/OppoSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryContent:Landroid/widget/ListView;

    .line 115
    return-void
.end method

.method private getHistoryFromSp()V
    .locals 7

    .prologue
    .line 274
    iget-object v4, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 275
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    .line 277
    :cond_0
    iget-object v4, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistory:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_1

    .line 279
    iget-object v4, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistory:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    .line 280
    .local v2, "size":I
    const/16 v4, 0x8

    new-array v1, v4, [Ljava/lang/String;

    .line 282
    .local v1, "list":[Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistory:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "list":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 284
    .restart local v1    # "list":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 285
    aget-object v3, v1, v0

    .line 286
    .local v3, "spData":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistory:Landroid/content/SharedPreferences;

    const-string v6, ""

    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    .end local v0    # "i":I
    .end local v1    # "list":[Ljava/lang/String;
    .end local v2    # "size":I
    .end local v3    # "spData":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private putHistoryToSp()V
    .locals 4

    .prologue
    .line 293
    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 295
    iget-object v3, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 298
    return-void
.end method

.method private showCurrentHeadset()V
    .locals 6

    .prologue
    .line 119
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneType()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "type":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getEarphoneTypeId()J

    move-result-wide v2

    .line 121
    .local v2, "type_id":J
    const-string v1, ""

    if-eq v0, v1, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/OppoSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c05aa

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    const-wide/16 v2, 0x68

    .line 124
    invoke-static {v0}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneType(Ljava/lang/String;)V

    .line 125
    invoke-static {v2, v3}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->putEarphoneTypeId(J)V

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mCurrentHeadset:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mCurrentHeadset:Landroid/widget/TextView;

    new-instance v4, Lcom/oneplus/tuner/OppoSearchActivity$1;

    invoke-direct {v4, p0}, Lcom/oneplus/tuner/OppoSearchActivity$1;-><init>(Lcom/oneplus/tuner/OppoSearchActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method private showHistory()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistory:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mContext:Landroid/content/Context;

    const-string v1, "history"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistory:Landroid/content/SharedPreferences;

    .line 168
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistory:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/tuner/OppoSearchActivity;->getHistoryFromSp()V

    .line 173
    new-instance v0, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;

    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;-><init>(Lcom/oneplus/tuner/OppoSearchActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->adapter:Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;

    .line 174
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryContent:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->adapter:Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryContent:Landroid/widget/ListView;

    new-instance v1, Lcom/oneplus/tuner/OppoSearchActivity$2;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/OppoSearchActivity$2;-><init>(Lcom/oneplus/tuner/OppoSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mHistoryContent:Landroid/widget/ListView;

    new-instance v1, Lcom/oneplus/tuner/OppoSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/oneplus/tuner/OppoSearchActivity$3;-><init>(Lcom/oneplus/tuner/OppoSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 140
    if-nez p3, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 146
    :pswitch_0
    const-string v4, "earphone_type"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "type":Ljava/lang/String;
    const-string v4, "earphone_type_id"

    const-wide/16 v6, 0x1

    invoke-virtual {p3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 149
    .local v2, "type_id":J
    if-eqz v1, :cond_0

    .line 150
    iget-object v4, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mCurrentHeadset:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v4, "earphone_type"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v4, "earphone_type_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 155
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/oneplus/tuner/OppoSearchActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/oppo/tribune/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    iput-object p0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mContext:Landroid/content/Context;

    .line 81
    const v2, 0x7f030019

    invoke-virtual {p0, v2}, Lcom/oneplus/tuner/OppoSearchActivity;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/oneplus/tuner/OppoSearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 84
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-nez v0, :cond_0

    .line 85
    const-string v2, "diaodiao"

    const-string v3, "NULL NULL NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/OppoSearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/oneplus/tuner/OppoSearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/oneplus/tuner/OppoSearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 98
    invoke-direct {p0}, Lcom/oneplus/tuner/OppoSearchActivity;->findView()V

    .line 99
    invoke-direct {p0}, Lcom/oneplus/tuner/OppoSearchActivity;->showCurrentHeadset()V

    .line 100
    invoke-direct {p0}, Lcom/oneplus/tuner/OppoSearchActivity;->showHistory()V

    .line 103
    const v2, 0x7f0b008b

    invoke-virtual {p0, v2}, Lcom/oneplus/tuner/OppoSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/tribune/square/SquareTopLineView;

    iput-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity;->topLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    .line 104
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oppo/tribune/util/PhoneInfo;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 105
    .local v1, "width":I
    iget-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity;->topLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/oppo/tribune/square/SquareTopLineView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v2, Lcom/oppo/tribune/square/SquareTopLineControl;

    iget-object v3, p0, Lcom/oneplus/tuner/OppoSearchActivity;->topLineView:Lcom/oppo/tribune/square/SquareTopLineView;

    const/4 v4, 0x2

    invoke-direct {v2, p0, v3, v4}, Lcom/oppo/tribune/square/SquareTopLineControl;-><init>(Landroid/content/Context;Lcom/oppo/tribune/square/SquareTopLineView;I)V

    iput-object v2, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    .line 109
    return-void

    .line 87
    .end local v1    # "width":I
    :cond_0
    const-string v2, "diaodiao"

    const-string v3, "NOT NULL..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 302
    invoke-virtual {p0}, Lcom/oneplus/tuner/OppoSearchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 303
    .local v0, "infalter":Landroid/view/MenuInflater;
    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 306
    const v1, 0x7f0b01fb

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mSearchMenu:Landroid/widget/LinearLayout;

    .line 308
    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mSearchMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0b01d0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mSearchEditor:Landroid/widget/EditText;

    .line 309
    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mSearchMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0b01d1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mClearInput:Landroid/widget/ImageButton;

    .line 312
    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mSearchEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 313
    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mSearchEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 314
    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mSearchEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 317
    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mSearchEditor:Landroid/widget/EditText;

    new-instance v2, Lcom/oneplus/tuner/OppoSearchActivity$4;

    invoke-direct {v2, p0}, Lcom/oneplus/tuner/OppoSearchActivity$4;-><init>(Lcom/oneplus/tuner/OppoSearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 357
    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mSearchEditor:Landroid/widget/EditText;

    new-instance v2, Lcom/oneplus/tuner/OppoSearchActivity$5;

    invoke-direct {v2, p0}, Lcom/oneplus/tuner/OppoSearchActivity$5;-><init>(Lcom/oneplus/tuner/OppoSearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 386
    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mClearInput:Landroid/widget/ImageButton;

    new-instance v2, Lcom/oneplus/tuner/OppoSearchActivity$6;

    invoke-direct {v2, p0}, Lcom/oneplus/tuner/OppoSearchActivity$6;-><init>(Lcom/oneplus/tuner/OppoSearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    return v3
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 411
    invoke-super {p0}, Lcom/oppo/tribune/BaseActivity;->onDestroy()V

    .line 413
    invoke-direct {p0}, Lcom/oneplus/tuner/OppoSearchActivity;->putHistoryToSp()V

    .line 414
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 399
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 406
    :goto_0
    invoke-super {p0, p1}, Lcom/oppo/tribune/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 401
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/OppoSearchActivity;->finish()V

    goto :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 418
    invoke-super {p0}, Lcom/oppo/tribune/BaseActivity;->onResume()V

    .line 419
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity;->mTopLineControl:Lcom/oppo/tribune/square/SquareTopLineControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SquareTopLineControl;->onResume(Z)V

    .line 420
    return-void
.end method
