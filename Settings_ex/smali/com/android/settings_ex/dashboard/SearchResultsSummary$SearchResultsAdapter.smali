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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 521
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 516
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    .line 522
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    .line 523
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    .line 525
    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 546
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 14
    .param p1, "position"    # I

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 552
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 554
    .local v3, "summaryOn":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 555
    .local v4, "summaryOff":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x4

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 556
    .local v5, "entries":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x8

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 557
    .local v10, "iconResStr":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x6

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 559
    .local v8, "className":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xa

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 561
    .local v11, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xd

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 565
    .local v7, "key":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 567
    .local v1, "packageContext":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 574
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_0
    :goto_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v6, 0x7f020026

    .line 583
    .local v6, "iconResId":I
    :goto_1
    new-instance v0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 586
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
    :goto_2
    return-object v0

    .line 570
    .restart local v1    # "packageContext":Landroid/content/Context;
    .restart local v2    # "title":Ljava/lang/String;
    .restart local v3    # "summaryOn":Ljava/lang/String;
    .restart local v4    # "summaryOff":Ljava/lang/String;
    .restart local v5    # "entries":Ljava/lang/String;
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "className":Ljava/lang/String;
    .restart local v10    # "iconResStr":Ljava/lang/String;
    .restart local v11    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 571
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "SearchResultsSummary"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot create Context for package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v0, 0x0

    goto :goto_2

    .line 577
    .end local v1    # "packageContext":Landroid/content/Context;
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    .restart local v1    # "packageContext":Landroid/content/Context;
    goto :goto_0

    .line 580
    :cond_2
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 586
    .end local v1    # "packageContext":Landroid/content/Context;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "summaryOn":Ljava/lang/String;
    .end local v4    # "summaryOff":Ljava/lang/String;
    .end local v5    # "entries":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "className":Ljava/lang/String;
    .end local v10    # "iconResStr":Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 591
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f020026

    .line 596
    iget-boolean v7, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-nez v7, :cond_0

    if-nez p2, :cond_0

    .line 597
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "this should only be called when the cursor is valid"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 600
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 601
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t move cursor to position "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 608
    :cond_1
    if-nez p2, :cond_2

    .line 609
    iget-object v7, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040101

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 614
    .local v6, "view":Landroid/view/View;
    :goto_0
    const v7, 0x7f120036

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 615
    .local v5, "textTitle":Landroid/widget/TextView;
    const v7, 0x7f120035

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 617
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;

    .line 618
    .local v4, "result":Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;
    iget-object v7, v4, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget v7, v4, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;->iconResId:I

    if-eq v7, v10, :cond_3

    .line 621
    iget-object v3, v4, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;->context:Landroid/content/Context;

    .line 624
    .local v3, "packageContext":Landroid/content/Context;
    :try_start_0
    iget v7, v4, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;->iconResId:I

    invoke-virtual {v3, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 625
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "packageContext":Landroid/content/Context;
    :goto_1
    return-object v6

    .line 611
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v4    # "result":Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;
    .end local v5    # "textTitle":Landroid/widget/TextView;
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    move-object v6, p2

    .restart local v6    # "view":Landroid/view/View;
    goto :goto_0

    .line 626
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    .restart local v3    # "packageContext":Landroid/content/Context;
    .restart local v4    # "result":Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;
    .restart local v5    # "textTitle":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 628
    .local v2, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v7, "SearchResultsSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot load Drawable for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 631
    .end local v2    # "nfe":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "packageContext":Landroid/content/Context;
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 632
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 528
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 529
    const/4 v0, 0x0

    .line 540
    :goto_0
    return-object v0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 532
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 533
    if-eqz p1, :cond_1

    .line 534
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    .line 535
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 537
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    .line 538
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/SearchResultsSummary$SearchResultsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
