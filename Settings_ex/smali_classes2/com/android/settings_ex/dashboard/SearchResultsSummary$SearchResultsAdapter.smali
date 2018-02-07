.class Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResultsAdapter"
.end annotation


# static fields
.field private static final DOLLAR_REPLACE:Ljava/lang/String; = "$s"

.field private static final PERCENT_RECLACE:Ljava/lang/String; = "%s"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 534
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 529
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    .line 535
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    .line 536
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 537
    const-string/jumbo v0, "SearchResultsSummary"

    const-string/jumbo v1, "SearchResultsAdapter mDataValid false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    .line 534
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 561
    const-string/jumbo v2, "SearchResultsSummary"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SearchResultsAdapter !mDataValid \uff1d "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "mCursor =  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 563
    const-string/jumbo v0, "SearchResultsSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SearchResultsAdapter mCursor.isClosed()\uff1d "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_3

    :cond_1
    return v1

    .line 561
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 566
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 14
    .param p1, "position"    # I

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 573
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, "summaryOn":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 576
    .local v4, "summaryOff":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x4

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 577
    .local v5, "entries":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x8

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 578
    .local v10, "iconResStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 579
    const/4 v12, 0x6

    .line 578
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 580
    .local v8, "className":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 581
    const/16 v12, 0xa

    .line 580
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 582
    .local v11, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 583
    const/16 v12, 0xd

    .line 582
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 586
    .local v7, "key":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    .line 601
    .local v1, "packageContext":Landroid/content/Context;
    :cond_1
    :goto_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 602
    const v6, 0x7f0200c0

    .line 604
    .local v6, "iconResId":I
    :goto_1
    new-instance v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 587
    .end local v1    # "packageContext":Landroid/content/Context;
    .end local v6    # "iconResId":I
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 588
    .restart local v1    # "packageContext":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 595
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 591
    :catch_0
    move-exception v9

    .line 592
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v0, "SearchResultsSummary"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Cannot create Context for package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const/4 v0, 0x0

    return-object v0

    .line 602
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .restart local v6    # "iconResId":I
    goto :goto_1

    .line 607
    .end local v1    # "packageContext":Landroid/content/Context;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "summaryOn":Ljava/lang/String;
    .end local v4    # "summaryOff":Ljava/lang/String;
    .end local v5    # "entries":Ljava/lang/String;
    .end local v6    # "iconResId":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v10    # "iconResStr":Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 612
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 617
    iget-boolean v9, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-nez v9, :cond_0

    if-nez p2, :cond_0

    .line 618
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 619
    const-string/jumbo v10, "this should only be called when the cursor is valid"

    .line 618
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 621
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 622
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "couldn\'t move cursor to position "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 629
    :cond_1
    if-nez p2, :cond_2

    .line 630
    iget-object v9, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040180

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 635
    .local v8, "view":Landroid/view/View;
    :goto_0
    const v9, 0x7f110063

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 636
    .local v6, "textTitle":Landroid/widget/TextView;
    const/high16 v9, 0x7f110000

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 638
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;

    .line 639
    .local v5, "result":Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;
    iget-object v9, v5, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget v9, v5, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;->iconResId:I

    const v10, 0x7f0200c0

    if-eq v9, v10, :cond_3

    .line 642
    iget-object v4, v5, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;->context:Landroid/content/Context;

    .line 645
    .local v4, "packageContext":Landroid/content/Context;
    :try_start_0
    iget v9, v5, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;->iconResId:I

    invoke-virtual {v4, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 647
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 648
    .local v7, "value":Landroid/util/TypedValue;
    iget-object v9, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x1010435

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v7, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 649
    iget-object v9, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    iget v10, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 650
    .local v0, "colorControl":I
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 652
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v0    # "colorControl":I
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "packageContext":Landroid/content/Context;
    .end local v7    # "value":Landroid/util/TypedValue;
    :goto_1
    return-object v8

    .line 632
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "result":Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;
    .end local v6    # "textTitle":Landroid/widget/TextView;
    .end local v8    # "view":Landroid/view/View;
    :cond_2
    move-object v8, p2

    .restart local v8    # "view":Landroid/view/View;
    goto :goto_0

    .line 653
    .restart local v2    # "imageView":Landroid/widget/ImageView;
    .restart local v4    # "packageContext":Landroid/content/Context;
    .restart local v5    # "result":Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;
    .restart local v6    # "textTitle":Landroid/widget/TextView;
    :catch_0
    move-exception v3

    .line 655
    .local v3, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v9, "SearchResultsSummary"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Cannot load Drawable for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 658
    .end local v3    # "nfe":Landroid/content/res/Resources$NotFoundException;
    .end local v4    # "packageContext":Landroid/content/Context;
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    const v9, 0x7f0200c0

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 542
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 543
    return-object v2

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 546
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 547
    if-eqz p1, :cond_1

    .line 548
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    .line 549
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->notifyDataSetChanged()V

    .line 555
    :goto_0
    return-object v0

    .line 551
    :cond_1
    const-string/jumbo v1, "SearchResultsSummary"

    const-string/jumbo v2, "SearchResultsAdapter swapCursor mDataValid false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    .line 553
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
