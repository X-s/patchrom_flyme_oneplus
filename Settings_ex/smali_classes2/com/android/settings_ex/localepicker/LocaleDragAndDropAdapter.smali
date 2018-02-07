.class Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;,
        Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;,
        Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final CFGKEY_SELECTED_LOCALES:Ljava/lang/String; = "selectedLocales"

.field private static final TAG:Ljava/lang/String; = "LocaleDragAndDropAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDragEnabled:Z

.field private final mFeedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mLocalesSetLast:Landroid/os/LocaleList;

.field private mLocalesToSetNext:Landroid/os/LocaleList;

.field private mNumberFormatter:Ljava/text/NumberFormat;

.field private mParentView:Landroid/support/v7/widget/RecyclerView;

.field private mRemoveMode:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;)Landroid/support/v7/widget/helper/ItemTouchHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;Landroid/os/LocaleList;)Landroid/os/LocaleList;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;Landroid/os/LocaleList;)Landroid/os/LocaleList;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;Ljava/text/NumberFormat;)Ljava/text/NumberFormat;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "feedItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 56
    iput-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroid/support/v7/widget/RecyclerView;

    .line 57
    iput-boolean v4, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    .line 58
    iput-boolean v3, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    .line 59
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    .line 351
    iput-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    .line 352
    iput-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    .line 107
    iput-object p2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    .line 109
    iput-object p1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    .line 111
    iput-object p3, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mListener:Landroid/view/View$OnClickListener;

    .line 113
    const/high16 v1, 0x41000000    # 8.0f

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 113
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 116
    .local v0, "dragElevation":F
    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    new-instance v2, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$1;

    .line 117
    const/4 v3, 0x3

    .line 116
    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$1;-><init>(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;IIF)V

    invoke-direct {v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 106
    return-void
.end method

.method private setDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 383
    iput-boolean p1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    .line 382
    return-void
.end method


# virtual methods
.method addLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 2
    .param p1, "li"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "zh-CN"

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->notifyItemInserted(I)V

    .line 335
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    .line 328
    return-void
.end method

.method public doTheUpdate()V
    .locals 6

    .prologue
    .line 339
    iget-object v5, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 340
    .local v0, "count":I
    new-array v4, v0, [Ljava/util/Locale;

    .line 342
    .local v4, "newList":[Ljava/util/Locale;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 343
    iget-object v5, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 344
    .local v2, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v4, v1

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    .end local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_0
    new-instance v3, Landroid/os/LocaleList;

    invoke-direct {v3, v4}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 348
    .local v3, "ll":Landroid/os/LocaleList;
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->updateLocalesWhenAnimationStops(Landroid/os/LocaleList;)V

    .line 338
    return-void
.end method

.method getCheckedCount()I
    .locals 4

    .prologue
    .line 310
    const/4 v2, 0x0

    .line 311
    .local v2, "result":I
    iget-object v3, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "li$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 312
    .local v0, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1
    return v2
.end method

.method getFirstChecked()Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .locals 3

    .prologue
    .line 320
    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "li$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 321
    .local v0, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    return-object v0

    .line 325
    .end local v0    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getItemCount()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 236
    iget-boolean v2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v2, :cond_3

    .line 237
    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 238
    .local v0, "itemCount":I
    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v2, :cond_2

    .line 239
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->setDragEnabled(Z)V

    .line 243
    :goto_1
    return v0

    .end local v0    # "itemCount":I
    :cond_1
    move v0, v1

    .line 237
    goto :goto_0

    .line 241
    .restart local v0    # "itemCount":I
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->setDragEnabled(Z)V

    goto :goto_1

    .line 245
    .end local v0    # "itemCount":I
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 246
    .restart local v0    # "itemCount":I
    :goto_2
    const/4 v2, 0x3

    if-lt v0, v2, :cond_4

    iget-boolean v2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v2, :cond_6

    .line 247
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->setDragEnabled(Z)V

    .line 251
    :goto_3
    return v0

    .end local v0    # "itemCount":I
    :cond_5
    move v0, v1

    .line 245
    goto :goto_2

    .line 249
    .restart local v0    # "itemCount":I
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->setDragEnabled(Z)V

    goto :goto_3
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 228
    sget-object v0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;->ITEM2:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;

    invoke-virtual {v0}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;->ordinal()I

    move-result v0

    return v0

    .line 230
    :cond_0
    sget-object v0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;->ITEM1:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;

    invoke-virtual {v0}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;->ordinal()I

    move-result v0

    return v0
.end method

.method isRemoveMode()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 196
    instance-of v4, p1, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    if-eqz v4, :cond_4

    .line 197
    iget-object v4, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 198
    .local v2, "feedItem":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    check-cast p1, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p1}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->getLocaleDragCell()Lcom/android/settings_ex/localepicker/LocaleDragCell;

    move-result-object v1

    .line 199
    .local v1, "dragCell":Lcom/android/settings_ex/localepicker/LocaleDragCell;
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "label":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {v1, v3, v0}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->setLabelAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->setLocalized(Z)V

    .line 203
    iget-object v4, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    add-int/lit8 v6, p2, 0x1

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->setMiniLabel(Ljava/lang/String;)V

    .line 204
    iget-boolean v4, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->setShowCheckbox(Z)V

    .line 205
    iget-boolean v4, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->setShowMiniLabel(Z)V

    .line 206
    iget-boolean v4, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->setShowHandle(Z)V

    .line 207
    iget-boolean v4, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v5

    :cond_0
    invoke-virtual {v1, v5}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->setChecked(Z)V

    .line 208
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->setTag(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {v1}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object v4

    .line 210
    new-instance v5, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$2;

    invoke-direct {v5, p0, v1}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$2;-><init>(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings_ex/localepicker/LocaleDragCell;)V

    .line 209
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 193
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "dragCell":Lcom/android/settings_ex/localepicker/LocaleDragCell;
    .end local v2    # "feedItem":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v3    # "label":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 205
    .restart local v0    # "description":Ljava/lang/String;
    .restart local v1    # "dragCell":Lcom/android/settings_ex/localepicker/LocaleDragCell;
    .restart local v2    # "feedItem":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .restart local v3    # "label":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    move v4, v5

    .line 206
    goto :goto_1

    .line 218
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "dragCell":Lcom/android/settings_ex/localepicker/LocaleDragCell;
    .end local v2    # "feedItem":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v3    # "label":Ljava/lang/String;
    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_4
    instance-of v4, p1, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;

    if-eqz v4, :cond_1

    .line 219
    check-cast p1, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-static {p1}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;->-get0(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v4, 0x0

    .line 182
    sget-object v1, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;->ITEM1:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;

    invoke-virtual {v1}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ITEM_TYPE;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 184
    const v2, 0x7f0400a4

    .line 183
    invoke-virtual {v1, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/localepicker/LocaleDragCell;

    .line 185
    .local v0, "item":Lcom/android/settings_ex/localepicker/LocaleDragCell;
    new-instance v1, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;-><init>(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings_ex/localepicker/LocaleDragCell;)V

    return-object v1

    .line 187
    .end local v0    # "item":Lcom/android/settings_ex/localepicker/LocaleDragCell;
    :cond_0
    new-instance v1, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;

    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 188
    const v3, 0x7f0400ed

    .line 187
    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;-><init>(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;Landroid/view/View;Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$ButtonViewHolder;)V

    return-object v1
.end method

.method onItemMove(II)V
    .locals 7
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    const/4 v6, 0x0

    .line 256
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 258
    .local v0, "saved":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 259
    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 266
    .end local v0    # "saved":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->notifyItemChanged(I)V

    .line 267
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->notifyItemChanged(I)V

    .line 268
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->notifyItemMoved(II)V

    .line 255
    return-void

    .line 263
    :cond_0
    const-string/jumbo v1, "LocaleDragAndDropAdapter"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 264
    const-string/jumbo v3, "Negative position in onItemMove %d -> %d"

    .line 263
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 264
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 263
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method removeChecked()V
    .locals 3

    .prologue
    .line 299
    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 300
    .local v1, "itemCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 301
    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 300
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    .line 306
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    .line 298
    return-void
.end method

.method removeItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 288
    .local v0, "itemCount":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 289
    return-void

    .line 291
    :cond_0
    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_2

    .line 292
    :cond_1
    return-void

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    .line 286
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 409
    if-eqz p1, :cond_3

    iget-boolean v3, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v3, :cond_3

    .line 411
    const-string/jumbo v3, "selectedLocales"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 412
    .local v2, "selectedLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    :cond_0
    return-void

    .line 415
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "li$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 416
    .local v0, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    goto :goto_0

    .line 418
    .end local v0    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->notifyItemRangeChanged(II)V

    .line 408
    .end local v1    # "li$iterator":Ljava/util/Iterator;
    .end local v2    # "selectedLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 392
    if-eqz p1, :cond_2

    .line 393
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v2, "selectedLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "li$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 395
    .local v0, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 399
    .end local v0    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1
    const-string/jumbo v3, "selectedLocales"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 391
    .end local v1    # "li$iterator":Ljava/util/Iterator;
    .end local v2    # "selectedLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "rv"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroid/support/v7/widget/RecyclerView;

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 174
    return-void
.end method

.method setRemoveMode(Z)V
    .locals 4
    .param p1, "removeMode"    # Z

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    .line 275
    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 276
    .local v1, "itemCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 277
    iget-object v2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    .line 273
    return-void
.end method

.method public updateLocalesWhenAnimationStops(Landroid/os/LocaleList;)V
    .locals 2
    .param p1, "localeList"    # Landroid/os/LocaleList;

    .prologue
    .line 355
    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    return-void

    .line 361
    :cond_0
    invoke-static {p1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 363
    iput-object p1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    .line 364
    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 365
    .local v0, "itemAnimator":Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    new-instance v1, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$3;-><init>(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    .line 354
    return-void
.end method
