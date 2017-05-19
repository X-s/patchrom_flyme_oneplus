.class public Landroid/widget/TableLayout;
.super Landroid/widget/LinearLayout;
.source "TableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TableLayout$1;,
        Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;,
        Landroid/widget/TableLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mCollapsedColumns:Landroid/util/SparseBooleanArray;

.field private mInitialized:Z

.field private mMaxWidths:[I

.field private mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

.field private mShrinkAllColumns:Z

.field private mShrinkableColumns:Landroid/util/SparseBooleanArray;

.field private mStretchAllColumns:Z

.field private mStretchableColumns:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v7, 0x2a

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    sget-object v4, Lcom/android/internal/R$styleable;->TableLayout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "stretchedColumns":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_3

    .line 109
    iput-boolean v6, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "shrinkedColumns":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 117
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_4

    .line 118
    iput-boolean v6, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    .line 124
    :cond_1
    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "collapsedColumns":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 126
    invoke-static {v1}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 129
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    .line 131
    return-void

    .line 111
    .end local v1    # "collapsedColumns":Ljava/lang/String;
    .end local v2    # "shrinkedColumns":Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    goto :goto_0

    .line 120
    .restart local v2    # "shrinkedColumns":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    goto :goto_1
.end method

.method static synthetic access$200(Landroid/widget/TableLayout;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TableLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->trackCollapsedColumns(Landroid/view/View;)V

    return-void
.end method

.method private findLargestCells(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 483
    const/4 v7, 0x1

    .line 492
    .local v7, "firstRow":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v5

    .line 493
    .local v5, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v5, :cond_6

    .line 494
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 495
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 493
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 499
    :cond_1
    instance-of v0, v4, Landroid/widget/TableRow;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object v15, v4

    .line 500
    check-cast v15, Landroid/widget/TableRow;

    .line 502
    .local v15, "row":Landroid/widget/TableRow;
    invoke-virtual {v15}, Landroid/widget/TableRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 503
    .local v10, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/16 v17, -0x2

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 505
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Landroid/widget/TableRow;->getColumnsWidths(II)[I

    move-result-object v16

    .line 506
    .local v16, "widths":[I
    move-object/from16 v0, v16

    array-length v13, v0

    .line 508
    .local v13, "newLength":I
    if-eqz v7, :cond_4

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v13, :cond_3

    .line 510
    :cond_2
    new-array v0, v13, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 512
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3, v13}, Ljava/lang/System;->arraycopy([II[III)V

    .line 513
    const/4 v7, 0x0

    goto :goto_1

    .line 515
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v11, v0

    .line 516
    .local v11, "length":I
    sub-int v6, v13, v11

    .line 519
    .local v6, "difference":I
    if-lez v6, :cond_5

    .line 520
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 521
    .local v14, "oldMaxWidths":[I
    new-array v0, v13, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 522
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v14, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 524
    array-length v0, v14

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    move-object/from16 v18, v0

    array-length v0, v14

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 532
    .end local v14    # "oldMaxWidths":[I
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 533
    .local v12, "maxWidths":[I
    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 534
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-ge v9, v11, :cond_0

    .line 535
    aget v17, v12, v9

    aget v18, v16, v9

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    aput v17, v12, v9

    .line 534
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 540
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "difference":I
    .end local v9    # "j":I
    .end local v10    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "length":I
    .end local v12    # "maxWidths":[I
    .end local v13    # "newLength":I
    .end local v15    # "row":Landroid/widget/TableRow;
    .end local v16    # "widths":[I
    :cond_6
    return-void
.end method

.method private initTableLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 174
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 177
    :cond_0
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    .line 180
    :cond_1
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_2

    .line 181
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    .line 186
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/TableLayout;->setOrientation(I)V

    .line 188
    new-instance v0, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/TableLayout;Landroid/widget/TableLayout$1;)V

    iput-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    .line 191
    iget-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 193
    iput-boolean v2, p0, Landroid/widget/TableLayout;->mInitialized:Z

    .line 194
    return-void
.end method

.method private mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V
    .locals 12
    .param p1, "columns"    # Landroid/util/SparseBooleanArray;
    .param p2, "allColumns"    # Z
    .param p3, "size"    # I
    .param p4, "totalWidth"    # I

    .prologue
    .line 579
    const/4 v8, 0x0

    .line 580
    .local v8, "skipped":I
    iget-object v6, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 581
    .local v6, "maxWidths":[I
    array-length v5, v6

    .line 582
    .local v5, "length":I
    if-eqz p2, :cond_1

    move v2, v5

    .line 583
    .local v2, "count":I
    :goto_0
    sub-int v9, p3, p4

    .line 584
    .local v9, "totalExtraSpace":I
    div-int v3, v9, v2

    .line 588
    .local v3, "extraSpace":I
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v7

    .line 589
    .local v7, "nbChildren":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 590
    invoke-virtual {p0, v4}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 591
    .local v0, "child":Landroid/view/View;
    instance-of v10, v0, Landroid/widget/TableRow;

    if-eqz v10, :cond_0

    .line 592
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 589
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 582
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "count":I
    .end local v3    # "extraSpace":I
    .end local v4    # "i":I
    .end local v7    # "nbChildren":I
    .end local v9    # "totalExtraSpace":I
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    goto :goto_0

    .line 596
    .restart local v2    # "count":I
    .restart local v3    # "extraSpace":I
    .restart local v4    # "i":I
    .restart local v7    # "nbChildren":I
    .restart local v9    # "totalExtraSpace":I
    :cond_2
    if-nez p2, :cond_5

    .line 597
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_6

    .line 598
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 599
    .local v1, "column":I
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 600
    if-ge v1, v5, :cond_4

    .line 601
    aget v10, v6, v1

    add-int/2addr v10, v3

    aput v10, v6, v1

    .line 597
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 603
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 608
    .end local v1    # "column":I
    :cond_5
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_9

    .line 609
    aget v10, v6, v4

    add-int/2addr v10, v3

    aput v10, v6, v4

    .line 608
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 616
    :cond_6
    if-lez v8, :cond_9

    if-ge v8, v2, :cond_9

    .line 618
    mul-int v10, v8, v3

    sub-int v11, v2, v8

    div-int v3, v10, v11

    .line 619
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_9

    .line 620
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 621
    .restart local v1    # "column":I
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    if-eqz v10, :cond_7

    if-ge v1, v5, :cond_7

    .line 622
    aget v10, v6, v1

    if-le v3, v10, :cond_8

    .line 623
    const/4 v10, 0x0

    aput v10, v6, v1

    .line 619
    :cond_7
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 625
    :cond_8
    aget v10, v6, v1

    add-int/2addr v10, v3

    aput v10, v6, v1

    goto :goto_6

    .line 630
    .end local v1    # "column":I
    :cond_9
    return-void
.end method

.method private static parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 9
    .param p0, "sequence"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 149
    .local v4, "columns":Landroid/util/SparseBooleanArray;
    const-string v8, "\\s*,\\s*"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 150
    .local v7, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "columnDefs":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v0, v5

    .line 154
    .local v2, "columnIdentifier":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 156
    .local v3, "columnIndex":I
    if-ltz v3, :cond_0

    .line 159
    const/4 v8, 0x1

    invoke-virtual {v4, v3, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v3    # "columnIndex":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 166
    .end local v2    # "columnIdentifier":Ljava/lang/String;
    :cond_1
    return-object v4

    .line 161
    .restart local v2    # "columnIdentifier":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private requestRowsLayout()V
    .locals 3

    .prologue
    .line 207
    iget-boolean v2, p0, Landroid/widget/TableLayout;->mInitialized:Z

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 209
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 210
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private shrinkAndStretchColumns(I)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 554
    iget-object v6, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    if-nez v6, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    const/4 v4, 0x0

    .line 560
    .local v4, "totalWidth":I
    iget-object v0, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget v5, v0, v1

    .line 561
    .local v5, "width":I
    add-int/2addr v4, v5

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 564
    .end local v5    # "width":I
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iget v7, p0, Landroid/widget/TableLayout;->mPaddingLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/TableLayout;->mPaddingRight:I

    sub-int v3, v6, v7

    .line 566
    .local v3, "size":I
    if-le v4, v3, :cond_4

    iget-boolean v6, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 569
    :cond_3
    iget-object v6, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    iget-boolean v7, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    invoke-direct {p0, v6, v7, v3, v4}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    goto :goto_0

    .line 570
    :cond_4
    if-ge v4, v3, :cond_0

    iget-boolean v6, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 573
    :cond_5
    iget-object v6, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    iget-boolean v7, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    invoke-direct {p0, v6, v7, v3, v4}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    goto :goto_0
.end method

.method private trackCollapsedColumns(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 377
    instance-of v6, p1, Landroid/widget/TableRow;

    if-eqz v6, :cond_1

    move-object v5, p1

    .line 378
    check-cast v5, Landroid/widget/TableRow;

    .line 379
    .local v5, "row":Landroid/widget/TableRow;
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 380
    .local v0, "collapsedColumns":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 381
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 382
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 383
    .local v1, "columnIndex":I
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 387
    .local v4, "isCollapsed":Z
    if-eqz v4, :cond_0

    .line 388
    invoke-virtual {v5, v1, v4}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    .line 381
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 392
    .end local v0    # "collapsedColumns":Landroid/util/SparseBooleanArray;
    .end local v1    # "columnIndex":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "isCollapsed":Z
    .end local v5    # "row":Landroid/widget/TableRow;
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 399
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 400
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 401
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 408
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 409
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 410
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 426
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 427
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 428
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 417
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 419
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 655
    instance-of v0, p1, Landroid/widget/TableLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/widget/TableLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 647
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 663
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 637
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 668
    const-class v0, Landroid/widget/TableLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isColumnCollapsed(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 309
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isColumnShrinkable(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 363
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isColumnStretchable(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 336
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShrinkAllColumns()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    return v0
.end method

.method public isStretchAllColumns()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .prologue
    .line 457
    instance-of v0, p1, Landroid/widget/TableRow;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 458
    check-cast v0, Landroid/widget/TableRow;

    iget-object v1, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setColumnsWidthConstraints([I)V

    .line 461
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 463
    return-void
.end method

.method measureVertical(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 470
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;->findLargestCells(II)V

    .line 471
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->shrinkAndStretchColumns(I)V

    .line 473
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    .line 474
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 445
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/TableLayout;->layoutVertical(IIII)V

    .line 446
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 436
    invoke-virtual {p0, p1, p2}, Landroid/widget/TableLayout;->measureVertical(II)V

    .line 437
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    .line 220
    iget-boolean v2, p0, Landroid/widget/TableLayout;->mInitialized:Z

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 222
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 223
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 228
    return-void
.end method

.method public setColumnCollapsed(IZ)V
    .locals 4
    .param p1, "columnIndex"    # I
    .param p2, "isCollapsed"    # Z

    .prologue
    .line 289
    iget-object v3, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 291
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 292
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 293
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 294
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TableRow;

    if-eqz v3, :cond_0

    .line 295
    check-cast v2, Landroid/widget/TableRow;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, p1, p2}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    .line 292
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_1
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 300
    return-void
.end method

.method public setColumnShrinkable(IZ)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "isShrinkable"    # Z

    .prologue
    .line 352
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 353
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 354
    return-void
.end method

.method public setColumnStretchable(IZ)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "isStretchable"    # Z

    .prologue
    .line 325
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 326
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 327
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 203
    iget-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    # setter for: Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-static {v0, p1}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->access$102(Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 204
    return-void
.end method

.method public setShrinkAllColumns(Z)V
    .locals 0
    .param p1, "shrinkAllColumns"    # Z

    .prologue
    .line 249
    iput-boolean p1, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    .line 250
    return-void
.end method

.method public setStretchAllColumns(Z)V
    .locals 0
    .param p1, "stretchAllColumns"    # Z

    .prologue
    .line 271
    iput-boolean p1, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    .line 272
    return-void
.end method
