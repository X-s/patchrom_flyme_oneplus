.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$Builder;,
        Landroid/text/StaticLayout$LineBreaks;
    }
.end annotation


# static fields
.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final COLUMNS_ELLIPSIZE:I = 0x6

.field private static final COLUMNS_NORMAL:I = 0x4

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x5

.field private static final ELLIPSIS_START:I = 0x4

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final HYPHEN:I = 0x3

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mLeftIndents:[I

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mRightIndents:[I

.field private mTopPadding:I


# direct methods
.method static synthetic -wrap0(JJJIIZ)F
    .locals 2
    .param p0, "nativePtr"    # J
    .param p2, "nativePaint"    # J
    .param p4, "nativeTypeface"    # J
    .param p6, "start"    # I
    .param p7, "end"    # I
    .param p8, "isRtl"    # Z

    .prologue
    invoke-static/range {p0 .. p8}, Landroid/text/StaticLayout;->nAddStyleRun(JJJIIZ)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()J
    .locals 2

    invoke-static {}, Landroid/text/StaticLayout;->nNewBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(JII[F)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddMeasuredRun(JII[F)V

    return-void
.end method

.method static synthetic -wrap3(JIIF)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "width"    # F

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddReplacementRun(JIIF)V

    return-void
.end method

.method static synthetic -wrap4(J)V
    .locals 0
    .param p0, "nativePtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFinishBuilder(J)V

    return-void
.end method

.method static synthetic -wrap5(J)V
    .locals 0
    .param p0, "nativePtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFreeBuilder(J)V

    return-void
.end method

.method static synthetic -wrap6(J[I)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "indents"    # [I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    return-void
.end method

.method static synthetic -wrap7(JLjava/lang/String;J)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "nativeHyphenator"    # J

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nSetLocale(JLjava/lang/String;J)V

    return-void
.end method

.method private constructor <init>(Landroid/text/StaticLayout$Builder;)V
    .locals 8
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;

    .prologue
    .line 543
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 544
    iget-object v1, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 548
    :goto_0
    iget-object v2, p1, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iget v3, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    iget-object v4, p1, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    iget v5, p1, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    iget v6, p1, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move-object v0, p0

    .line 543
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1303
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 550
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_2

    .line 551
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Layout$Ellipsizer;

    .line 553
    .local v7, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v7, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 554
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    iput v0, v7, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 555
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, v7, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 556
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 558
    const/4 v0, 0x6

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 564
    .end local v7    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 565
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 566
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 568
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    .line 569
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    .line 571
    iget-boolean v0, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iget-boolean v1, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 542
    return-void

    .line 545
    :cond_0
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 546
    new-instance v1, Landroid/text/Layout$SpannedEllipsizer;

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 547
    :cond_1
    new-instance v1, Landroid/text/Layout$Ellipsizer;

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 560
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 561
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout;)V
    .locals 0
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;

    .prologue
    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 535
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1303
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 537
    const/4 v0, 0x6

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 538
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 539
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 534
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z

    .prologue
    .line 453
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 452
    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 451
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    .prologue
    .line 475
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 476
    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    .line 474
    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 473
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z

    .prologue
    .line 465
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 464
    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 463
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I

    .prologue
    .line 488
    if-nez p11, :cond_0

    move-object v3, p1

    :goto_0
    move-object v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1303
    const v2, 0x7fffffff

    iput v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 495
    invoke-static/range {p1 .. p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p9

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v10

    .line 511
    .local v10, "b":Landroid/text/StaticLayout$Builder;
    if-eqz p11, :cond_2

    .line 512
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Landroid/text/Layout$Ellipsizer;

    .line 514
    .local v11, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v11, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 515
    move/from16 v0, p12

    iput v0, v11, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 516
    move-object/from16 v0, p11

    iput-object v0, v11, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 517
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 519
    const/4 v2, 0x6

    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 525
    .end local v11    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    const-class v2, Landroid/text/Layout$Directions;

    iget v3, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/Layout$Directions;

    iput-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 526
    iget-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 527
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 529
    iget-boolean v2, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iget-boolean v3, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p0, v10, v2, v3}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 531
    invoke-static {v10}, Landroid/text/StaticLayout$Builder;->-wrap0(Landroid/text/StaticLayout$Builder;)V

    .line 487
    return-void

    .line 490
    .end local v10    # "b":Landroid/text/StaticLayout$Builder;
    :cond_0
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    .line 491
    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v3, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 492
    :cond_1
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v3, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 521
    .restart local v10    # "b":Landroid/text/StaticLayout$Builder;
    :cond_2
    const/4 v2, 0x4

    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 522
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 432
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 431
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 443
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 442
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 20
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "widths"    # [F
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z

    .prologue
    .line 1020
    cmpg-float v17, p8, p5

    if-gtz v17, :cond_0

    if-eqz p10, :cond_3

    .line 1028
    :cond_0
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 1029
    sget-object v17, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    :goto_0
    const/16 v18, 0x0

    const/16 v19, 0x1

    .line 1027
    move-object/from16 v0, p9

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 1030
    .local v6, "ellipsisWidth":F
    const/4 v5, 0x0

    .line 1031
    .local v5, "ellipsisStart":I
    const/4 v4, 0x0

    .line 1032
    .local v4, "ellipsisCount":I
    sub-int v10, p2, p1

    .line 1035
    .local v10, "len":I
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 1036
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 1037
    const/4 v15, 0x0

    .line 1040
    .local v15, "sum":F
    move v7, v10

    .local v7, "i":I
    :goto_1
    if-lez v7, :cond_1

    .line 1041
    add-int/lit8 v17, v7, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 1043
    .local v16, "w":F
    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_5

    .line 1050
    .end local v16    # "w":F
    :cond_1
    const/4 v5, 0x0

    .line 1051
    move v4, v7

    .line 1115
    .end local v7    # "i":I
    .end local v15    # "sum":F
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    aput v5, v17, v18

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x5

    aput v4, v17, v18

    .line 1019
    return-void

    .line 1022
    .end local v4    # "ellipsisCount":I
    .end local v5    # "ellipsisStart":I
    .end local v6    # "ellipsisWidth":F
    .end local v10    # "len":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x5

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 1024
    return-void

    .line 1029
    :cond_4
    sget-object v17, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    goto/16 :goto_0

    .line 1047
    .restart local v4    # "ellipsisCount":I
    .restart local v5    # "ellipsisStart":I
    .restart local v6    # "ellipsisWidth":F
    .restart local v7    # "i":I
    .restart local v10    # "len":I
    .restart local v15    # "sum":F
    .restart local v16    # "w":F
    :cond_5
    add-float v15, v15, v16

    .line 1040
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1053
    .end local v7    # "i":I
    .end local v15    # "sum":F
    .end local v16    # "w":F
    :cond_6
    const-string/jumbo v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1054
    const-string/jumbo v17, "StaticLayout"

    const-string/jumbo v18, "Start Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1057
    :cond_7
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_8

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 1059
    :cond_8
    const/4 v15, 0x0

    .line 1062
    .restart local v15    # "sum":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v10, :cond_9

    .line 1063
    add-int v17, v7, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 1065
    .restart local v16    # "w":F
    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_d

    .line 1072
    .end local v16    # "w":F
    :cond_9
    move v5, v7

    .line 1073
    sub-int v4, v10, v7

    .line 1074
    if-eqz p10, :cond_2

    if-nez v4, :cond_2

    if-lez v10, :cond_2

    .line 1075
    add-int/lit8 v5, v10, -0x1

    .line 1076
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 1058
    .end local v7    # "i":I
    .end local v15    # "sum":F
    :cond_a
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 1080
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 1081
    const/4 v11, 0x0

    .local v11, "lsum":F
    const/4 v14, 0x0

    .line 1082
    .local v14, "rsum":F
    const/4 v9, 0x0

    .local v9, "left":I
    move v13, v10

    .line 1084
    .local v13, "right":I
    sub-float v17, p5, v6

    const/high16 v18, 0x40000000    # 2.0f

    div-float v12, v17, v18

    .line 1085
    .local v12, "ravail":F
    move v13, v10

    :goto_4
    if-lez v13, :cond_b

    .line 1086
    add-int/lit8 v17, v13, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 1088
    .restart local v16    # "w":F
    add-float v17, v16, v14

    cmpl-float v17, v17, v12

    if-lez v17, :cond_e

    .line 1095
    .end local v16    # "w":F
    :cond_b
    sub-float v17, p5, v6

    sub-float v8, v17, v14

    .line 1096
    .local v8, "lavail":F
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v13, :cond_c

    .line 1097
    add-int v17, v9, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    .line 1099
    .restart local v16    # "w":F
    add-float v17, v16, v11

    cmpl-float v17, v17, v8

    if-lez v17, :cond_f

    .line 1106
    .end local v16    # "w":F
    :cond_c
    move v5, v9

    .line 1107
    sub-int v4, v13, v9

    goto/16 :goto_2

    .line 1069
    .end local v8    # "lavail":F
    .end local v9    # "left":I
    .end local v11    # "lsum":F
    .end local v12    # "ravail":F
    .end local v13    # "right":I
    .end local v14    # "rsum":F
    .restart local v7    # "i":I
    .restart local v15    # "sum":F
    .restart local v16    # "w":F
    :cond_d
    add-float v15, v15, v16

    .line 1062
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1092
    .end local v7    # "i":I
    .end local v15    # "sum":F
    .restart local v9    # "left":I
    .restart local v11    # "lsum":F
    .restart local v12    # "ravail":F
    .restart local v13    # "right":I
    .restart local v14    # "rsum":F
    :cond_e
    add-float v14, v14, v16

    .line 1085
    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    .line 1103
    .restart local v8    # "lavail":F
    :cond_f
    add-float v11, v11, v16

    .line 1096
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1109
    .end local v8    # "lavail":F
    .end local v9    # "left":I
    .end local v11    # "lsum":F
    .end local v12    # "ravail":F
    .end local v13    # "right":I
    .end local v14    # "rsum":F
    .end local v16    # "w":F
    :cond_10
    const-string/jumbo v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1110
    const-string/jumbo v17, "StaticLayout"

    const-string/jumbo v18, "Middle Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private static native nAddMeasuredRun(JII[F)V
.end method

.method private static native nAddReplacementRun(JIIF)V
.end method

.method private static native nAddStyleRun(JJJIIZ)F
.end method

.method private static native nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I
.end method

.method private static native nFinishBuilder(J)V
.end method

.method private static native nFreeBuilder(J)V
.end method

.method private static native nGetWidths(J[F)V
.end method

.method static native nLoadHyphenator(Ljava/nio/ByteBuffer;I)J
.end method

.method private static native nNewBuilder()J
.end method

.method private static native nSetIndents(J[I)V
.end method

.method private static native nSetLocale(JLjava/lang/String;J)V
.end method

.method private static native nSetupParagraph(J[CIFIF[IIII)V
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;ZZ)I
    .locals 28
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "flags"    # I
    .param p15, "needMultiply"    # Z
    .param p16, "chdirs"    # [B
    .param p17, "dir"    # I
    .param p18, "easy"    # Z
    .param p19, "bufEnd"    # I
    .param p20, "includePad"    # Z
    .param p21, "trackPad"    # Z
    .param p22, "chs"    # [C
    .param p23, "widths"    # [F
    .param p24, "widthStart"    # I
    .param p25, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p26, "ellipsisWidth"    # F
    .param p27, "textWidth"    # F
    .param p28, "paint"    # Landroid/text/TextPaint;
    .param p29, "moreChars"    # Z
    .param p30, "isLastLineSpacing"    # Z

    .prologue
    .line 892
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 893
    .local v22, "j":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v22, v2

    .line 894
    .local v26, "off":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 895
    .local v27, "want":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v25, v0

    .line 897
    .local v25, "lines":[I
    move-object/from16 v0, v25

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    .line 899
    const-class v2, Landroid/text/Layout$Directions;

    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    .line 898
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/Layout$Directions;

    .line 900
    .local v20, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 901
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v3, v3

    .line 900
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 902
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 904
    move-object/from16 v0, v20

    array-length v2, v0

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 905
    .local v19, "grow":[I
    move-object/from16 v0, v25

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 906
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 907
    move-object/from16 v25, v19

    .line 910
    .end local v19    # "grow":[I
    .end local v20    # "grow2":[Landroid/text/Layout$Directions;
    :cond_0
    if-eqz p11, :cond_3

    .line 911
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 912
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 913
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 914
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 916
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 917
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 918
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    .line 919
    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    .line 918
    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 916
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 922
    :cond_1
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 926
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 927
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 928
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 929
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 932
    .end local v21    # "i":I
    :cond_3
    if-nez v22, :cond_e

    const/16 v18, 0x1

    .line 933
    .local v18, "firstLine":Z
    :goto_2
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_f

    const/4 v13, 0x1

    .line 934
    .local v13, "currentLineIsTheLastVisibleOne":Z
    :goto_3
    if-nez v13, :cond_4

    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_10

    :cond_4
    const/16 v23, 0x1

    .line 936
    .local v23, "lastLine":Z
    :goto_4
    if-eqz v18, :cond_6

    .line 937
    if-eqz p21, :cond_5

    .line 938
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 941
    :cond_5
    if-eqz p20, :cond_6

    .line 942
    move/from16 p4, p6

    .line 948
    :cond_6
    if-eqz v23, :cond_8

    .line 949
    if-eqz p21, :cond_7

    .line 950
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 953
    :cond_7
    if-eqz p20, :cond_8

    .line 954
    move/from16 p5, p7

    .line 958
    :cond_8
    if-eqz p15, :cond_12

    if-eqz v23, :cond_9

    if-eqz p30, :cond_12

    .line 959
    :cond_9
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v0, v2

    move-wide/from16 v16, v0

    .line 960
    .local v16, "ex":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_11

    .line 961
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v16

    double-to-int v15, v2

    .line 969
    .end local v16    # "ex":D
    .local v15, "extra":I
    :goto_5
    add-int/lit8 v2, v26, 0x0

    aput p2, v25, v2

    .line 970
    add-int/lit8 v2, v26, 0x1

    aput p8, v25, v2

    .line 971
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v15

    aput v3, v25, v2

    .line 973
    sub-int v2, p5, p4

    add-int/2addr v2, v15

    add-int p8, p8, v2

    .line 974
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v25, v2

    .line 975
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v25, v2

    .line 979
    add-int/lit8 v2, v26, 0x0

    aget v3, v25, v2

    const/high16 v4, 0x20000000

    and-int v4, v4, p14

    or-int/2addr v3, v4

    aput v3, v25, v2

    .line 980
    add-int/lit8 v2, v26, 0x3

    aput p14, v25, v2

    .line 982
    add-int/lit8 v2, v26, 0x0

    aget v3, v25, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v25, v2

    .line 983
    sget-object v24, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 987
    .local v24, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_13

    .line 988
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v24, v2, v22

    .line 994
    :goto_6
    if-eqz p25, :cond_d

    .line 997
    if-eqz p29, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_14

    const/4 v12, 0x1

    .line 1000
    .local v12, "forceEllipsis":Z
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    if-nez p29, :cond_15

    :cond_a
    if-eqz v18, :cond_b

    if-eqz p29, :cond_15

    .line 1002
    :cond_b
    if-nez v18, :cond_c

    if-nez v13, :cond_16

    if-eqz p29, :cond_16

    :cond_c
    const/4 v14, 0x0

    .line 1004
    .local v14, "doEllipsis":Z
    :goto_8
    if-eqz v14, :cond_d

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 1005
    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 1011
    .end local v12    # "forceEllipsis":Z
    .end local v14    # "doEllipsis":Z
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1012
    return p8

    .line 932
    .end local v13    # "currentLineIsTheLastVisibleOne":Z
    .end local v15    # "extra":I
    .end local v18    # "firstLine":Z
    .end local v23    # "lastLine":Z
    .end local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_e
    const/16 v18, 0x0

    .restart local v18    # "firstLine":Z
    goto/16 :goto_2

    .line 933
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 934
    .restart local v13    # "currentLineIsTheLastVisibleOne":Z
    :cond_10
    const/16 v23, 0x0

    .restart local v23    # "lastLine":Z
    goto/16 :goto_4

    .line 963
    .restart local v16    # "ex":D
    :cond_11
    move-wide/from16 v0, v16

    neg-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v15, v2

    .restart local v15    # "extra":I
    goto/16 :goto_5

    .line 966
    .end local v15    # "extra":I
    .end local v16    # "ex":D
    :cond_12
    const/4 v15, 0x0

    .restart local v15    # "extra":I
    goto/16 :goto_5

    .line 990
    .restart local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_13
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    .line 991
    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    .line 990
    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto :goto_6

    .line 997
    :cond_14
    const/4 v12, 0x0

    .restart local v12    # "forceEllipsis":Z
    goto :goto_7

    .line 1001
    :cond_15
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-eq v0, v2, :cond_b

    .line 1000
    const/4 v14, 0x1

    goto :goto_8

    .line 1003
    :cond_16
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_17

    const/4 v2, 0x1

    :goto_9
    move v14, v2

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    goto :goto_9
.end method


# virtual methods
.method generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 120
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;
    .param p2, "includepad"    # Z
    .param p3, "trackpad"    # Z

    .prologue
    .line 575
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 576
    .local v5, "source":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    move/from16 v73, v0

    .line 577
    .local v73, "bufStart":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    move/from16 v37, v0

    .line 578
    .local v37, "bufEnd":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v46, v0

    .line 579
    .local v46, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    move/from16 v102, v0

    .line 580
    .local v102, "outerWidth":I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 581
    .local v8, "textDir":Landroid/text/TextDirectionHeuristic;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    move/from16 v27, v0

    .line 582
    .local v27, "spacingmult":F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move/from16 v28, v0

    .line 583
    .local v28, "spacingadd":F
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/text/StaticLayout$Builder;->mIsLastLineSpacing:Z

    move/from16 v48, v0

    .line 584
    .local v48, "isLastLineSpacing":Z
    move-object/from16 v0, p1

    iget v9, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    int-to-float v0, v9

    move/from16 v44, v0

    .line 585
    .local v44, "ellipsizedWidth":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v43, v0

    .line 586
    .local v43, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    new-instance v97, Landroid/text/StaticLayout$LineBreaks;

    invoke-direct/range {v97 .. v97}, Landroid/text/StaticLayout$LineBreaks;-><init>()V

    .line 588
    .local v97, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    const/4 v9, 0x4

    new-array v0, v9, [I

    move-object/from16 v109, v0

    .line 591
    .local v109, "spanEndCache":[I
    const/16 v9, 0x10

    new-array v0, v9, [I

    move-object/from16 v87, v0

    .line 592
    .local v87, "fmCache":[I
    invoke-virtual/range {v46 .. v46}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Landroid/text/StaticLayout$Builder;->-wrap1(Landroid/text/StaticLayout$Builder;Ljava/util/Locale;)V

    .line 594
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 596
    const/16 v26, 0x0

    .line 597
    .local v26, "v":I
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v27, v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    cmpl-float v9, v28, v9

    if-eqz v9, :cond_3

    :cond_0
    const/16 v33, 0x1

    .line 599
    .local v33, "needMultiply":Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v31, v0

    .line 600
    .local v31, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v30, 0x0

    .line 602
    .local v30, "chooseHtv":[I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    .line 604
    .local v4, "measured":Landroid/text/MeasuredText;
    const/16 v115, 0x0

    .line 605
    .local v115, "spanned":Landroid/text/Spanned;
    instance-of v9, v5, Landroid/text/Spanned;

    if-eqz v9, :cond_1

    move-object/from16 v115, v5

    .line 606
    check-cast v115, Landroid/text/Spanned;

    .line 609
    .end local v115    # "spanned":Landroid/text/Spanned;
    :cond_1
    move/from16 v6, v73

    .end local v30    # "chooseHtv":[I
    .local v6, "paraStart":I
    :goto_1
    move/from16 v0, v37

    if-gt v6, v0, :cond_2a

    .line 610
    const/16 v9, 0xa

    move/from16 v0, v37

    invoke-static {v5, v9, v6, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    .line 611
    .local v7, "paraEnd":I
    if-gez v7, :cond_4

    .line 612
    move/from16 v7, v37

    .line 616
    :goto_2
    const/4 v15, 0x1

    .line 617
    .local v15, "firstWidthLineCount":I
    move/from16 v84, v102

    .line 618
    .local v84, "firstWidth":I
    move/from16 v104, v102

    .line 620
    .local v104, "restWidth":I
    const/16 v29, 0x0

    .line 622
    .local v29, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v115, :cond_6

    .line 624
    const-class v9, Landroid/text/style/LeadingMarginSpan;

    .line 623
    move-object/from16 v0, v115

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v107

    check-cast v107, [Landroid/text/style/LeadingMarginSpan;

    .line 625
    .local v107, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v91, 0x0

    .local v91, "i":I
    :goto_3
    move-object/from16 v0, v107

    array-length v9, v0

    move/from16 v0, v91

    if-ge v0, v9, :cond_5

    .line 626
    aget-object v99, v107, v91

    .line 627
    .local v99, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v9, v107, v91

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v84, v84, v9

    .line 628
    aget-object v9, v107, v91

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v104, v104, v9

    .line 632
    move-object/from16 v0, v99

    instance-of v9, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v9, :cond_2

    move-object/from16 v100, v99

    .line 633
    check-cast v100, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 635
    .local v100, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    invoke-interface/range {v100 .. v100}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v9

    .line 634
    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 625
    .end local v100    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    :cond_2
    add-int/lit8 v91, v91, 0x1

    goto :goto_3

    .line 597
    .end local v4    # "measured":Landroid/text/MeasuredText;
    .end local v6    # "paraStart":I
    .end local v7    # "paraEnd":I
    .end local v15    # "firstWidthLineCount":I
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v31    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v33    # "needMultiply":Z
    .end local v84    # "firstWidth":I
    .end local v91    # "i":I
    .end local v99    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v104    # "restWidth":I
    .end local v107    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_3
    const/16 v33, 0x0

    .restart local v33    # "needMultiply":Z
    goto :goto_0

    .line 614
    .restart local v4    # "measured":Landroid/text/MeasuredText;
    .restart local v6    # "paraStart":I
    .restart local v7    # "paraEnd":I
    .restart local v31    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 639
    .restart local v15    # "firstWidthLineCount":I
    .restart local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v84    # "firstWidth":I
    .restart local v91    # "i":I
    .restart local v104    # "restWidth":I
    .restart local v107    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_5
    const-class v9, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v115

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v29, [Landroid/text/style/LineHeightSpan;

    .line 641
    .local v29, "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v29

    array-length v9, v0

    if-nez v9, :cond_7

    .line 642
    const/16 v29, 0x0

    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v91    # "i":I
    .end local v107    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_6
    move-object/from16 v9, p1

    .line 666
    invoke-virtual/range {v4 .. v9}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 667
    iget-object v12, v4, Landroid/text/MeasuredText;->mChars:[C

    .line 668
    .local v12, "chs":[C
    iget-object v0, v4, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v41, v0

    .line 669
    .local v41, "widths":[F
    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v34, v0

    .line 670
    .local v34, "chdirs":[B
    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v35, v0

    .line 671
    .local v35, "dir":I
    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v36, v0

    .line 674
    .local v36, "easy":Z
    const/16 v17, 0x0

    .line 675
    .local v17, "variableTabStops":[I
    if-eqz v115, :cond_c

    .line 677
    const-class v9, Landroid/text/style/TabStopSpan;

    .line 676
    move-object/from16 v0, v115

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v117

    check-cast v117, [Landroid/text/style/TabStopSpan;

    .line 678
    .local v117, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v117

    array-length v9, v0

    if-lez v9, :cond_c

    .line 679
    move-object/from16 v0, v117

    array-length v9, v0

    new-array v0, v9, [I

    move-object/from16 v118, v0

    .line 680
    .local v118, "stops":[I
    const/16 v91, 0x0

    .restart local v91    # "i":I
    :goto_4
    move-object/from16 v0, v117

    array-length v9, v0

    move/from16 v0, v91

    if-ge v0, v9, :cond_b

    .line 681
    aget-object v9, v117, v91

    invoke-interface {v9}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v9

    aput v9, v118, v91

    .line 680
    add-int/lit8 v91, v91, 0x1

    goto :goto_4

    .line 644
    .end local v12    # "chs":[C
    .end local v17    # "variableTabStops":[I
    .end local v34    # "chdirs":[B
    .end local v35    # "dir":I
    .end local v36    # "easy":Z
    .end local v41    # "widths":[F
    .end local v117    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v118    # "stops":[I
    .restart local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v107    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_7
    if-eqz v30, :cond_8

    .line 645
    move-object/from16 v0, v30

    array-length v9, v0

    move-object/from16 v0, v29

    array-length v10, v0

    if-ge v9, v10, :cond_9

    .line 646
    :cond_8
    move-object/from16 v0, v29

    array-length v9, v0

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v30

    .line 649
    :cond_9
    const/16 v91, 0x0

    :goto_5
    move-object/from16 v0, v29

    array-length v9, v0

    move/from16 v0, v91

    if-ge v0, v9, :cond_6

    .line 650
    aget-object v9, v29, v91

    move-object/from16 v0, v115

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v101

    .line 652
    .local v101, "o":I
    move/from16 v0, v101

    if-ge v0, v6, :cond_a

    .line 656
    move-object/from16 v0, p0

    move/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    aput v9, v30, v91

    .line 649
    :goto_6
    add-int/lit8 v91, v91, 0x1

    goto :goto_5

    .line 660
    :cond_a
    aput v26, v30, v91

    goto :goto_6

    .line 683
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v101    # "o":I
    .end local v107    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .restart local v12    # "chs":[C
    .restart local v17    # "variableTabStops":[I
    .restart local v34    # "chdirs":[B
    .restart local v35    # "dir":I
    .restart local v36    # "easy":Z
    .restart local v41    # "widths":[F
    .restart local v117    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v118    # "stops":[I
    :cond_b
    move-object/from16 v0, v118

    array-length v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, v118

    invoke-static {v0, v10, v9}, Ljava/util/Arrays;->sort([III)V

    .line 684
    move-object/from16 v17, v118

    .line 688
    .end local v17    # "variableTabStops":[I
    .end local v91    # "i":I
    .end local v117    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v118    # "stops":[I
    :cond_c
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    sub-int v13, v7, v6

    .line 689
    move/from16 v0, v84

    int-to-float v14, v0

    move/from16 v0, v104

    int-to-float v0, v0

    move/from16 v16, v0

    .line 690
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    move/from16 v20, v0

    const/16 v18, 0x14

    .line 688
    invoke-static/range {v10 .. v20}, Landroid/text/StaticLayout;->nSetupParagraph(J[CIFIF[IIII)V

    .line 691
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_d

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v9, :cond_13

    .line 695
    :cond_d
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_e

    const/16 v95, 0x0

    .line 696
    .local v95, "leftLen":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_f

    const/16 v105, 0x0

    .line 697
    .local v105, "rightLen":I
    :goto_8
    move/from16 v0, v95

    move/from16 v1, v105

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v93

    .line 698
    .local v93, "indentsLen":I
    move/from16 v0, v93

    new-array v0, v0, [I

    move-object/from16 v92, v0

    .line 699
    .local v92, "indents":[I
    const/16 v91, 0x0

    .restart local v91    # "i":I
    :goto_9
    move/from16 v0, v91

    move/from16 v1, v93

    if-ge v0, v1, :cond_12

    .line 700
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_10

    const/16 v96, 0x0

    .line 702
    .local v96, "leftMargin":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_11

    const/16 v106, 0x0

    .line 704
    .local v106, "rightMargin":I
    :goto_b
    add-int v9, v96, v106

    aput v9, v92, v91

    .line 699
    add-int/lit8 v91, v91, 0x1

    goto :goto_9

    .line 695
    .end local v91    # "i":I
    .end local v92    # "indents":[I
    .end local v93    # "indentsLen":I
    .end local v95    # "leftLen":I
    .end local v96    # "leftMargin":I
    .end local v105    # "rightLen":I
    .end local v106    # "rightMargin":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v0, v9

    move/from16 v95, v0

    .restart local v95    # "leftLen":I
    goto :goto_7

    .line 696
    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v0, v9

    move/from16 v105, v0

    goto :goto_8

    .line 701
    .restart local v91    # "i":I
    .restart local v92    # "indents":[I
    .restart local v93    # "indentsLen":I
    .restart local v105    # "rightLen":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v91

    add-int/lit8 v11, v95, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v96, v9, v10

    .restart local v96    # "leftMargin":I
    goto :goto_a

    .line 703
    :cond_11
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v91

    add-int/lit8 v11, v105, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v106, v9, v10

    goto :goto_b

    .line 706
    .end local v96    # "leftMargin":I
    :cond_12
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v92

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    .line 712
    .end local v91    # "i":I
    .end local v92    # "indents":[I
    .end local v93    # "indentsLen":I
    .end local v95    # "leftLen":I
    .end local v105    # "rightLen":I
    :cond_13
    const/16 v88, 0x0

    .line 713
    .local v88, "fmCacheCount":I
    const/16 v110, 0x0

    .line 714
    .local v110, "spanEndCacheCount":I
    move/from16 v114, v6

    .local v114, "spanStart":I
    :goto_c
    move/from16 v0, v114

    if-ge v0, v7, :cond_17

    .line 715
    mul-int/lit8 v9, v88, 0x4

    move-object/from16 v0, v87

    array-length v10, v0

    if-lt v9, v10, :cond_14

    .line 716
    mul-int/lit8 v9, v88, 0x4

    mul-int/lit8 v9, v9, 0x2

    new-array v0, v9, [I

    move-object/from16 v90, v0

    .line 717
    .local v90, "grow":[I
    mul-int/lit8 v9, v88, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v87

    move-object/from16 v1, v90

    invoke-static {v0, v10, v1, v11, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 718
    move-object/from16 v87, v90

    .line 721
    .end local v90    # "grow":[I
    :cond_14
    move-object/from16 v0, v109

    array-length v9, v0

    move/from16 v0, v110

    if-lt v0, v9, :cond_15

    .line 722
    mul-int/lit8 v9, v110, 0x2

    new-array v0, v9, [I

    move-object/from16 v90, v0

    .line 723
    .restart local v90    # "grow":[I
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v109

    move-object/from16 v1, v90

    move/from16 v2, v110

    invoke-static {v0, v9, v1, v10, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 724
    move-object/from16 v109, v90

    .line 727
    .end local v90    # "grow":[I
    :cond_15
    if-nez v115, :cond_16

    .line 728
    move/from16 v108, v7

    .line 729
    .local v108, "spanEnd":I
    sub-int v113, v7, v114

    .line 730
    .local v113, "spanLen":I
    move-object/from16 v0, v46

    move/from16 v1, v113

    move-object/from16 v2, v31

    invoke-virtual {v4, v0, v1, v2}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 743
    :goto_d
    mul-int/lit8 v9, v88, 0x4

    add-int/lit8 v9, v9, 0x0

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    aput v10, v87, v9

    .line 744
    mul-int/lit8 v9, v88, 0x4

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    aput v10, v87, v9

    .line 745
    mul-int/lit8 v9, v88, 0x4

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    aput v10, v87, v9

    .line 746
    mul-int/lit8 v9, v88, 0x4

    add-int/lit8 v9, v9, 0x3

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    aput v10, v87, v9

    .line 747
    add-int/lit8 v88, v88, 0x1

    .line 749
    aput v108, v109, v110

    .line 750
    add-int/lit8 v110, v110, 0x1

    .line 714
    move/from16 v114, v108

    goto :goto_c

    .line 733
    .end local v108    # "spanEnd":I
    .end local v113    # "spanLen":I
    :cond_16
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    .line 732
    move-object/from16 v0, v115

    move/from16 v1, v114

    invoke-interface {v0, v1, v7, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v108

    .line 734
    .restart local v108    # "spanEnd":I
    sub-int v113, v108, v114

    .line 736
    .restart local v113    # "spanLen":I
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v115

    move/from16 v1, v114

    move/from16 v2, v108

    invoke-interface {v0, v1, v2, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v116

    check-cast v116, [Landroid/text/style/MetricAffectingSpan;

    .line 737
    .local v116, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v116

    move-object/from16 v1, v115

    invoke-static {v0, v1, v9}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v116

    .end local v116    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v116, [Landroid/text/style/MetricAffectingSpan;

    .line 738
    .restart local v116    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v46

    move-object/from16 v1, v116

    move/from16 v2, v113

    move-object/from16 v3, v31

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto :goto_d

    .line 753
    .end local v108    # "spanEnd":I
    .end local v113    # "spanLen":I
    .end local v116    # "spans":[Landroid/text/style/MetricAffectingSpan;
    :cond_17
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v41

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nGetWidths(J[F)V

    .line 754
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v97

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v21, v0

    .line 755
    move-object/from16 v0, v97

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v97

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v97

    iget-object v9, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    array-length v0, v9

    move/from16 v24, v0

    move-object/from16 v20, v97

    .line 754
    invoke-static/range {v18 .. v24}, Landroid/text/StaticLayout;->nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I

    move-result v80

    .line 757
    .local v80, "breakCount":I
    move-object/from16 v0, v97

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v82, v0

    .line 758
    .local v82, "breaks":[I
    move-object/from16 v0, v97

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v98, v0

    .line 759
    .local v98, "lineWidths":[F
    move-object/from16 v0, v97

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v86, v0

    .line 761
    .local v86, "flags":[I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int v103, v9, v10

    .line 762
    .local v103, "remainingLineCount":I
    if-eqz v43, :cond_1c

    .line 763
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v43

    if-eq v0, v9, :cond_19

    .line 764
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1b

    .line 765
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v43

    if-eq v0, v9, :cond_1a

    const/16 v83, 0x1

    .line 766
    .local v83, "ellipsisMayBeApplied":Z
    :goto_e
    if-lez v103, :cond_20

    move/from16 v0, v103

    move/from16 v1, v80

    if-ge v0, v1, :cond_20

    if-eqz v83, :cond_20

    .line 769
    const/16 v119, 0x0

    .line 770
    .local v119, "width":F
    const/16 v85, 0x0

    .line 771
    .local v85, "flag":I
    add-int/lit8 v91, v103, -0x1

    .restart local v91    # "i":I
    :goto_f
    move/from16 v0, v91

    move/from16 v1, v80

    if-ge v0, v1, :cond_1f

    .line 772
    add-int/lit8 v9, v80, -0x1

    move/from16 v0, v91

    if-ne v0, v9, :cond_1d

    .line 773
    aget v9, v98, v91

    add-float v119, v119, v9

    .line 779
    :cond_18
    aget v9, v86, v91

    const/high16 v10, 0x20000000

    and-int/2addr v9, v10

    or-int v85, v85, v9

    .line 771
    add-int/lit8 v91, v91, 0x1

    goto :goto_f

    .line 763
    .end local v83    # "ellipsisMayBeApplied":Z
    .end local v85    # "flag":I
    .end local v91    # "i":I
    .end local v119    # "width":F
    :cond_19
    const/16 v83, 0x1

    .restart local v83    # "ellipsisMayBeApplied":Z
    goto :goto_e

    .line 765
    .end local v83    # "ellipsisMayBeApplied":Z
    :cond_1a
    const/16 v83, 0x0

    .restart local v83    # "ellipsisMayBeApplied":Z
    goto :goto_e

    .line 764
    .end local v83    # "ellipsisMayBeApplied":Z
    :cond_1b
    const/16 v83, 0x0

    .restart local v83    # "ellipsisMayBeApplied":Z
    goto :goto_e

    .line 762
    .end local v83    # "ellipsisMayBeApplied":Z
    :cond_1c
    const/16 v83, 0x0

    .restart local v83    # "ellipsisMayBeApplied":Z
    goto :goto_e

    .line 775
    .restart local v85    # "flag":I
    .restart local v91    # "i":I
    .restart local v119    # "width":F
    :cond_1d
    if-nez v91, :cond_1e

    const/16 v94, 0x0

    .local v94, "j":I
    :goto_10
    aget v9, v82, v91

    move/from16 v0, v94

    if-ge v0, v9, :cond_18

    .line 776
    aget v9, v41, v94

    add-float v119, v119, v9

    .line 775
    add-int/lit8 v94, v94, 0x1

    goto :goto_10

    .end local v94    # "j":I
    :cond_1e
    add-int/lit8 v9, v91, -0x1

    aget v94, v82, v9

    .restart local v94    # "j":I
    goto :goto_10

    .line 782
    .end local v94    # "j":I
    :cond_1f
    add-int/lit8 v9, v103, -0x1

    add-int/lit8 v10, v80, -0x1

    aget v10, v82, v10

    aput v10, v82, v9

    .line 783
    add-int/lit8 v9, v103, -0x1

    aput v119, v98, v9

    .line 784
    add-int/lit8 v9, v103, -0x1

    aput v85, v86, v9

    .line 786
    move/from16 v80, v103

    .line 790
    .end local v85    # "flag":I
    .end local v91    # "i":I
    .end local v119    # "width":F
    :cond_20
    move/from16 v20, v6

    .line 792
    .local v20, "here":I
    const/16 v24, 0x0

    .local v24, "fmTop":I
    const/16 v25, 0x0

    .local v25, "fmBottom":I
    const/16 v22, 0x0

    .local v22, "fmAscent":I
    const/16 v23, 0x0

    .line 793
    .local v23, "fmDescent":I
    const/16 v89, 0x0

    .line 794
    .local v89, "fmCacheIndex":I
    const/16 v111, 0x0

    .line 795
    .local v111, "spanEndCacheIndex":I
    const/16 v81, 0x0

    .line 796
    .local v81, "breakIndex":I
    move/from16 v114, v6

    move/from16 v112, v111

    .end local v111    # "spanEndCacheIndex":I
    .local v112, "spanEndCacheIndex":I
    :goto_11
    move/from16 v0, v114

    if-ge v0, v7, :cond_29

    .line 798
    add-int/lit8 v111, v112, 0x1

    .end local v112    # "spanEndCacheIndex":I
    .restart local v111    # "spanEndCacheIndex":I
    aget v108, v109, v112

    .line 801
    .restart local v108    # "spanEnd":I
    mul-int/lit8 v9, v89, 0x4

    add-int/lit8 v9, v9, 0x0

    aget v9, v87, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 802
    mul-int/lit8 v9, v89, 0x4

    add-int/lit8 v9, v9, 0x1

    aget v9, v87, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 803
    mul-int/lit8 v9, v89, 0x4

    add-int/lit8 v9, v9, 0x2

    aget v9, v87, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 804
    mul-int/lit8 v9, v89, 0x4

    add-int/lit8 v9, v9, 0x3

    aget v9, v87, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 805
    add-int/lit8 v89, v89, 0x1

    .line 807
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, v24

    if-ge v9, v0, :cond_21

    .line 808
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v24, v0

    .line 810
    :cond_21
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v0, v22

    if-ge v9, v0, :cond_22

    .line 811
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    .line 813
    :cond_22
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, v23

    if-le v9, v0, :cond_23

    .line 814
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v23, v0

    .line 816
    :cond_23
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v0, v25

    if-le v9, v0, :cond_24

    .line 817
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v25, v0

    .line 821
    :cond_24
    :goto_12
    move/from16 v0, v81

    move/from16 v1, v80

    if-ge v0, v1, :cond_25

    aget v9, v82, v81

    add-int/2addr v9, v6

    move/from16 v0, v114

    if-ge v9, v0, :cond_25

    .line 822
    add-int/lit8 v81, v81, 0x1

    goto :goto_12

    .line 825
    :cond_25
    move/from16 v0, v81

    move/from16 v1, v80

    if-ge v0, v1, :cond_28

    aget v9, v82, v81

    add-int/2addr v9, v6

    move/from16 v0, v108

    if-gt v9, v0, :cond_28

    .line 826
    aget v9, v82, v81

    add-int v21, v6, v9

    .line 828
    .local v21, "endPos":I
    move/from16 v0, v21

    move/from16 v1, v37

    if-ge v0, v1, :cond_26

    const/16 v47, 0x1

    .line 832
    .local v47, "moreChars":Z
    :goto_13
    aget v32, v86, v81

    .line 835
    aget v45, v98, v81

    move-object/from16 v18, p0

    move-object/from16 v19, v5

    move/from16 v38, p2

    move/from16 v39, p3

    move-object/from16 v40, v12

    move/from16 v42, v6

    .line 830
    invoke-direct/range {v18 .. v48}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;ZZ)I

    move-result v26

    .line 837
    move/from16 v0, v21

    move/from16 v1, v108

    if-ge v0, v1, :cond_27

    .line 839
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v24, v0

    .line 840
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v25, v0

    .line 841
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    .line 842
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v23, v0

    .line 847
    :goto_14
    move/from16 v20, v21

    .line 848
    add-int/lit8 v81, v81, 0x1

    .line 850
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_25

    .line 851
    return-void

    .line 828
    .end local v47    # "moreChars":Z
    :cond_26
    const/16 v47, 0x0

    .restart local v47    # "moreChars":Z
    goto :goto_13

    .line 844
    :cond_27
    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v24, 0x0

    goto :goto_14

    .line 796
    .end local v21    # "endPos":I
    .end local v47    # "moreChars":Z
    :cond_28
    move/from16 v114, v108

    move/from16 v112, v111

    .end local v111    # "spanEndCacheIndex":I
    .restart local v112    # "spanEndCacheIndex":I
    goto/16 :goto_11

    .line 856
    .end local v108    # "spanEnd":I
    :cond_29
    move/from16 v0, v37

    if-ne v7, v0, :cond_2d

    .line 860
    .end local v7    # "paraEnd":I
    .end local v12    # "chs":[C
    .end local v15    # "firstWidthLineCount":I
    .end local v20    # "here":I
    .end local v22    # "fmAscent":I
    .end local v23    # "fmDescent":I
    .end local v24    # "fmTop":I
    .end local v25    # "fmBottom":I
    .end local v34    # "chdirs":[B
    .end local v35    # "dir":I
    .end local v36    # "easy":Z
    .end local v41    # "widths":[F
    .end local v80    # "breakCount":I
    .end local v81    # "breakIndex":I
    .end local v82    # "breaks":[I
    .end local v83    # "ellipsisMayBeApplied":Z
    .end local v84    # "firstWidth":I
    .end local v86    # "flags":[I
    .end local v88    # "fmCacheCount":I
    .end local v89    # "fmCacheIndex":I
    .end local v98    # "lineWidths":[F
    .end local v103    # "remainingLineCount":I
    .end local v104    # "restWidth":I
    .end local v110    # "spanEndCacheCount":I
    .end local v112    # "spanEndCacheIndex":I
    .end local v114    # "spanStart":I
    :cond_2a
    move/from16 v0, v37

    move/from16 v1, v73

    if-eq v0, v1, :cond_2b

    add-int/lit8 v9, v37, -0x1

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_2c

    .line 861
    :cond_2b
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v9, v10, :cond_2c

    move-object/from16 v49, v4

    move-object/from16 v50, v5

    move/from16 v51, v37

    move/from16 v52, v37

    move-object/from16 v53, v8

    move-object/from16 v54, p1

    .line 864
    invoke-virtual/range {v49 .. v54}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 866
    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 869
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v53, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v54, v0

    .line 870
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v55, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v56, v0

    .line 874
    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v65, v0

    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v66, v0

    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v67, v0

    .line 877
    const/16 v76, 0x0

    .line 872
    const/16 v60, 0x0

    .line 873
    const/16 v61, 0x0

    const/16 v63, 0x0

    .line 875
    const/16 v71, 0x0

    .line 876
    const/16 v72, 0x0

    .line 877
    const/16 v78, 0x0

    move-object/from16 v49, p0

    move-object/from16 v50, v5

    move/from16 v51, v37

    move/from16 v52, v37

    move/from16 v57, v26

    move/from16 v58, v27

    move/from16 v59, v28

    move-object/from16 v62, v31

    move/from16 v64, v33

    move/from16 v68, v37

    move/from16 v69, p2

    move/from16 v70, p3

    move-object/from16 v74, v43

    move/from16 v75, v44

    move-object/from16 v77, v46

    move/from16 v79, v48

    .line 868
    invoke-direct/range {v49 .. v79}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;ZZ)I

    move-result v26

    .line 574
    :cond_2c
    return-void

    .line 609
    .restart local v7    # "paraEnd":I
    .restart local v12    # "chs":[C
    .restart local v15    # "firstWidthLineCount":I
    .restart local v20    # "here":I
    .restart local v22    # "fmAscent":I
    .restart local v23    # "fmDescent":I
    .restart local v24    # "fmTop":I
    .restart local v25    # "fmBottom":I
    .restart local v34    # "chdirs":[B
    .restart local v35    # "dir":I
    .restart local v36    # "easy":Z
    .restart local v41    # "widths":[F
    .restart local v80    # "breakCount":I
    .restart local v81    # "breakIndex":I
    .restart local v82    # "breaks":[I
    .restart local v83    # "ellipsisMayBeApplied":Z
    .restart local v84    # "firstWidth":I
    .restart local v86    # "flags":[I
    .restart local v88    # "fmCacheCount":I
    .restart local v89    # "fmCacheIndex":I
    .restart local v98    # "lineWidths":[F
    .restart local v103    # "remainingLineCount":I
    .restart local v104    # "restWidth":I
    .restart local v110    # "spanEndCacheCount":I
    .restart local v112    # "spanEndCacheIndex":I
    .restart local v114    # "spanStart":I
    :cond_2d
    move v6, v7

    goto/16 :goto_1
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 1186
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1231
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 1232
    const/4 v0, 0x0

    return v0

    .line 1235
    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1240
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 1241
    const/4 v0, 0x0

    return v0

    .line 1244
    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1249
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHyphen(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1194
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 5
    .param p1, "line"    # I
    .param p2, "align"    # Landroid/text/Layout$Alignment;

    .prologue
    const/4 v3, 0x0

    .line 1202
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_1

    .line 1203
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v2, :cond_0

    .line 1204
    return v3

    .line 1206
    :cond_0
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v2, v2, v3

    return v2

    .line 1208
    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_3

    .line 1209
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v2, :cond_2

    .line 1210
    return v3

    .line 1212
    :cond_2
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v2, v2, v3

    neg-int v2, v2

    return v2

    .line 1214
    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_6

    .line 1215
    const/4 v0, 0x0

    .line 1216
    .local v0, "left":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v2, :cond_4

    .line 1217
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v0, v2, v3

    .line 1219
    :cond_4
    const/4 v1, 0x0

    .line 1220
    .local v1, "right":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v2, :cond_5

    .line 1221
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v1, v2, v3

    .line 1223
    :cond_5
    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    return v2

    .line 1225
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unhandled alignment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getLineContainsTab(I)Z
    .locals 3
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x0

    .line 1171
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x0

    aget v1, v1, v2

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 1146
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1156
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1176
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 7
    .param p1, "vertical"    # I

    .prologue
    const/4 v6, 0x0

    .line 1125
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1126
    .local v1, "high":I
    const/4 v3, -0x1

    .line 1128
    .local v3, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 1129
    .local v2, "lines":[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 1130
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 1131
    .local v0, "guess":I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 1132
    move v1, v0

    goto :goto_0

    .line 1134
    :cond_0
    move v3, v0

    goto :goto_0

    .line 1137
    .end local v0    # "guess":I
    :cond_1
    if-gez v3, :cond_2

    .line 1138
    return v6

    .line 1140
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1161
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1151
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1166
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 1181
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
