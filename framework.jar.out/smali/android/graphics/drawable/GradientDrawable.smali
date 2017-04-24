.class public Landroid/graphics/drawable/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/GradientDrawable$1;,
        Landroid/graphics/drawable/GradientDrawable$GradientState;,
        Landroid/graphics/drawable/GradientDrawable$Orientation;
    }
.end annotation


# static fields
.field private static final DEFAULT_INNER_RADIUS_RATIO:F = 3.0f

.field private static final DEFAULT_THICKNESS_RATIO:F = 9.0f

.field public static final LINE:I = 0x2

.field public static final LINEAR_GRADIENT:I = 0x0

.field public static final OVAL:I = 0x1

.field public static final RADIAL_GRADIENT:I = 0x1

.field private static final RADIUS_TYPE_FRACTION:I = 0x1

.field private static final RADIUS_TYPE_FRACTION_PARENT:I = 0x2

.field private static final RADIUS_TYPE_PIXELS:I = 0x0

.field public static final RECTANGLE:I = 0x0

.field public static final RING:I = 0x3

.field public static final SWEEP_GRADIENT:I = 0x2


# instance fields
.field private mAlpha:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mGradientIsDirty:Z

.field private mGradientRadius:F

.field private mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

.field private mLayerPaint:Landroid/graphics/Paint;

.field private mMutated:Z

.field private mPadding:Landroid/graphics/Rect;

.field private final mPath:Landroid/graphics/Path;

.field private mPathIsDirty:Z

.field private final mRect:Landroid/graphics/RectF;

.field private mRingPath:Landroid/graphics/Path;

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    .line 180
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/GradientDrawable$GradientState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x1

    .line 1793
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 137
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 142
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 144
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    .line 145
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 151
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 1794
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1796
    invoke-direct {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 1797
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/GradientDrawable$GradientState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/GradientDrawable$1;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 2
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
    .param p2, "colors"    # [I

    .prologue
    .line 187
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    .line 188
    return-void
.end method

.method private applyThemeChildElements(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1124
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1126
    .local v2, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    if-eqz v3, :cond_0

    .line 1127
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    sget-object v4, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1129
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSize(Landroid/content/res/TypedArray;)V

    .line 1130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1133
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    if-eqz v3, :cond_1

    .line 1134
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    sget-object v4, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1137
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1145
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    if-eqz v3, :cond_2

    .line 1146
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    sget-object v4, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1148
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V

    .line 1149
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1152
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    if-eqz v3, :cond_3

    .line 1153
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    sget-object v4, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1155
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V

    .line 1156
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1159
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_3
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    if-eqz v3, :cond_4

    .line 1160
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    sget-object v4, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1162
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    .line 1163
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1166
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_4
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    if-eqz v3, :cond_5

    .line 1167
    iget-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    sget-object v4, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1169
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V

    .line 1170
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1172
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_5
    return-void

    .line 1138
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    .line 1139
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1141
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method private buildPathIfDirty()V
    .locals 5

    .prologue
    .line 648
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 649
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    if-eqz v1, :cond_0

    .line 650
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    .line 651
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 652
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 653
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 655
    :cond_0
    return-void
.end method

.method private buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;
    .locals 14
    .param p1, "st"    # Landroid/graphics/drawable/GradientDrawable$GradientState;

    .prologue
    const/4 v13, -0x1

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    .line 658
    iget-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-eqz v9, :cond_1

    iget-boolean v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    if-nez v9, :cond_1

    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 706
    :goto_0
    return-object v3

    .line 659
    :cond_1
    iput-boolean v11, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 661
    iget-boolean v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    const v10, 0x461c4000    # 10000.0f

    div-float v4, v9, v10

    .line 663
    .local v4, "sweep":F
    :goto_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 665
    .local v0, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float v6, v9, v12

    .line 666
    .local v6, "x":F
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float v7, v9, v12

    .line 668
    .local v7, "y":F
    iget v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    if-eq v9, v13, :cond_3

    iget v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    int-to-float v5, v9

    .line 671
    .local v5, "thickness":F
    :goto_2
    iget v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-eq v9, v13, :cond_4

    iget v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    int-to-float v2, v9

    .line 674
    .local v2, "radius":F
    :goto_3
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 675
    .local v1, "innerBounds":Landroid/graphics/RectF;
    sub-float v9, v6, v2

    sub-float v10, v7, v2

    invoke-virtual {v1, v9, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 677
    new-instance v0, Landroid/graphics/RectF;

    .end local v0    # "bounds":Landroid/graphics/RectF;
    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 678
    .restart local v0    # "bounds":Landroid/graphics/RectF;
    neg-float v9, v5

    neg-float v10, v5

    invoke-virtual {v0, v9, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 680
    iget-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-nez v9, :cond_5

    .line 681
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 686
    :goto_4
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 689
    .local v3, "ringPath":Landroid/graphics/Path;
    cmpg-float v8, v4, v8

    if-gez v8, :cond_6

    const/high16 v8, -0x3c4c0000    # -360.0f

    cmpl-float v8, v4, v8

    if-lez v8, :cond_6

    .line 690
    sget-object v8, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v8}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 692
    add-float v8, v6, v2

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 694
    add-float v8, v6, v2

    add-float/2addr v8, v5

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 696
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v4, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 698
    neg-float v8, v4

    invoke-virtual {v3, v1, v4, v8, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 699
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .end local v0    # "bounds":Landroid/graphics/RectF;
    .end local v1    # "innerBounds":Landroid/graphics/RectF;
    .end local v2    # "radius":F
    .end local v3    # "ringPath":Landroid/graphics/Path;
    .end local v4    # "sweep":F
    .end local v5    # "thickness":F
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_2
    move v4, v8

    .line 661
    goto :goto_1

    .line 668
    .restart local v0    # "bounds":Landroid/graphics/RectF;
    .restart local v4    # "sweep":F
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget v10, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    div-float v5, v9, v10

    goto :goto_2

    .line 671
    .restart local v5    # "thickness":F
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget v10, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    div-float v2, v9, v10

    goto :goto_3

    .line 683
    .restart local v1    # "innerBounds":Landroid/graphics/RectF;
    .restart local v2    # "radius":F
    :cond_5
    iget-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    goto :goto_4

    .line 702
    .restart local v3    # "ringPath":Landroid/graphics/Path;
    :cond_6
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v0, v8}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 703
    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v8}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto/16 :goto_0
.end method

.method private ensureValidRect()Z
    .locals 27

    .prologue
    .line 885
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    if-eqz v2, :cond_2

    .line 886
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 888
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 889
    .local v15, "bounds":Landroid/graphics/Rect;
    const/16 v19, 0x0

    .line 891
    .local v19, "inset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v19, v2, v8

    .line 895
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v23, v0

    .line 897
    .local v23, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v8, v15, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    add-float v8, v8, v19

    iget v9, v15, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float v9, v9, v19

    iget v10, v15, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float v10, v10, v19

    iget v12, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    sub-float v12, v12, v19

    invoke-virtual {v2, v8, v9, v10, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 900
    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    .line 901
    .local v7, "gradientColors":[I
    if-eqz v7, :cond_2

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    .line 905
    .local v22, "r":Landroid/graphics/RectF;
    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    if-nez v2, :cond_4

    .line 906
    move-object/from16 v0, v23

    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v2

    int-to-float v2, v2

    const v8, 0x461c4000    # 10000.0f

    div-float v21, v2, v8

    .line 907
    .local v21, "level":F
    :goto_0
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$1;->$SwitchMap$android$graphics$drawable$GradientDrawable$Orientation:[I

    move-object/from16 v0, v23

    iget-object v8, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v8}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v8

    aget v2, v2, v8

    packed-switch v2, :pswitch_data_0

    .line 937
    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/RectF;->left:F

    .local v3, "x0":F
    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 938
    .local v4, "y0":F
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->right:F

    mul-float v5, v21, v2

    .local v5, "x1":F
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    mul-float v6, v21, v2

    .line 942
    .local v6, "y1":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    move-object/from16 v0, v23

    iget-object v8, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1007
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    .end local v21    # "level":F
    :cond_1
    :goto_2
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_2

    .line 1008
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v8, -0x1000000

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1012
    .end local v7    # "gradientColors":[I
    .end local v15    # "bounds":Landroid/graphics/Rect;
    .end local v19    # "inset":F
    .end local v22    # "r":Landroid/graphics/RectF;
    .end local v23    # "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x1

    :goto_3
    return v2

    .line 906
    .restart local v7    # "gradientColors":[I
    .restart local v15    # "bounds":Landroid/graphics/Rect;
    .restart local v19    # "inset":F
    .restart local v22    # "r":Landroid/graphics/RectF;
    .restart local v23    # "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_3
    const/high16 v21, 0x3f800000    # 1.0f

    goto :goto_0

    .line 909
    .restart local v21    # "level":F
    :pswitch_0
    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/RectF;->left:F

    .restart local v3    # "x0":F
    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 910
    .restart local v4    # "y0":F
    move v5, v3

    .restart local v5    # "x1":F
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    mul-float v6, v21, v2

    .line 911
    .restart local v6    # "y1":F
    goto :goto_1

    .line 913
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    :pswitch_1
    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/RectF;->right:F

    .restart local v3    # "x0":F
    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 914
    .restart local v4    # "y0":F
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->left:F

    mul-float v5, v21, v2

    .restart local v5    # "x1":F
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    mul-float v6, v21, v2

    .line 915
    .restart local v6    # "y1":F
    goto :goto_1

    .line 917
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    :pswitch_2
    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/RectF;->right:F

    .restart local v3    # "x0":F
    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 918
    .restart local v4    # "y0":F
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->left:F

    mul-float v5, v21, v2

    .restart local v5    # "x1":F
    move v6, v4

    .line 919
    .restart local v6    # "y1":F
    goto :goto_1

    .line 921
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    :pswitch_3
    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/RectF;->right:F

    .restart local v3    # "x0":F
    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 922
    .restart local v4    # "y0":F
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->left:F

    mul-float v5, v21, v2

    .restart local v5    # "x1":F
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->top:F

    mul-float v6, v21, v2

    .line 923
    .restart local v6    # "y1":F
    goto :goto_1

    .line 925
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    :pswitch_4
    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/RectF;->left:F

    .restart local v3    # "x0":F
    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 926
    .restart local v4    # "y0":F
    move v5, v3

    .restart local v5    # "x1":F
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->top:F

    mul-float v6, v21, v2

    .line 927
    .restart local v6    # "y1":F
    goto/16 :goto_1

    .line 929
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    :pswitch_5
    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/RectF;->left:F

    .restart local v3    # "x0":F
    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 930
    .restart local v4    # "y0":F
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->right:F

    mul-float v5, v21, v2

    .restart local v5    # "x1":F
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->top:F

    mul-float v6, v21, v2

    .line 931
    .restart local v6    # "y1":F
    goto/16 :goto_1

    .line 933
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    :pswitch_6
    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/RectF;->left:F

    .restart local v3    # "x0":F
    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 934
    .restart local v4    # "y0":F
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->right:F

    mul-float v5, v21, v2

    .restart local v5    # "x1":F
    move v6, v4

    .line 935
    .restart local v6    # "y1":F
    goto/16 :goto_1

    .line 944
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    .end local v21    # "level":F
    :cond_4
    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_b

    .line 945
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v22

    iget v8, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v9

    move-object/from16 v0, v23

    iget v9, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    mul-float/2addr v8, v9

    add-float v3, v2, v8

    .line 946
    .restart local v3    # "x0":F
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v22

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v9

    move-object/from16 v0, v23

    iget v9, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    mul-float/2addr v8, v9

    add-float v4, v2, v8

    .line 948
    .restart local v4    # "y0":F
    move-object/from16 v0, v23

    iget v11, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 949
    .local v11, "radius":F
    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_a

    .line 952
    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    if-ltz v2, :cond_8

    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    int-to-float v0, v2

    move/from16 v26, v0

    .line 953
    .local v26, "width":F
    :goto_4
    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    if-ltz v2, :cond_9

    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    int-to-float v0, v2

    move/from16 v17, v0

    .line 954
    .local v17, "height":F
    :goto_5
    move/from16 v0, v26

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v11, v2

    .line 959
    .end local v17    # "height":F
    .end local v26    # "width":F
    :cond_5
    :goto_6
    move-object/from16 v0, v23

    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v2, :cond_6

    .line 960
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v2

    int-to-float v2, v2

    const v8, 0x461c4000    # 10000.0f

    div-float/2addr v2, v8

    mul-float/2addr v11, v2

    .line 963
    :cond_6
    move-object/from16 v0, p0

    iput v11, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientRadius:F

    .line 965
    const/4 v2, 0x0

    cmpg-float v2, v11, v2

    if-gtz v2, :cond_7

    .line 968
    const v11, 0x3a83126f    # 0.001f

    .line 971
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/RadialGradient;

    const/4 v13, 0x0

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v9, v3

    move v10, v4

    move-object v12, v7

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_2

    .line 952
    :cond_8
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v26

    goto :goto_4

    .line 953
    .restart local v26    # "width":F
    :cond_9
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v17

    goto :goto_5

    .line 955
    .end local v26    # "width":F
    :cond_a
    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_5

    .line 956
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v11, v2

    goto :goto_6

    .line 973
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v11    # "radius":F
    :cond_b
    move-object/from16 v0, v23

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_1

    .line 974
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v22

    iget v8, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v9

    move-object/from16 v0, v23

    iget v9, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    mul-float/2addr v8, v9

    add-float v3, v2, v8

    .line 975
    .restart local v3    # "x0":F
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v22

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v9

    move-object/from16 v0, v23

    iget v9, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    mul-float/2addr v8, v9

    add-float v4, v2, v8

    .line 977
    .restart local v4    # "y0":F
    move-object/from16 v24, v7

    .line 978
    .local v24, "tempColors":[I
    const/16 v25, 0x0

    .line 980
    .local v25, "tempPositions":[F
    move-object/from16 v0, v23

    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v2, :cond_11

    .line 981
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    move-object/from16 v24, v0

    .line 982
    array-length v0, v7

    move/from16 v20, v0

    .line 983
    .local v20, "length":I
    if-eqz v24, :cond_c

    move-object/from16 v0, v24

    array-length v2, v0

    add-int/lit8 v8, v20, 0x1

    if-eq v2, v8, :cond_d

    .line 984
    :cond_c
    add-int/lit8 v2, v20, 0x1

    new-array v0, v2, [I

    move-object/from16 v24, v0

    .end local v24    # "tempColors":[I
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    .line 986
    .restart local v24    # "tempColors":[I
    :cond_d
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-static {v7, v2, v0, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 987
    add-int/lit8 v2, v20, -0x1

    aget v2, v7, v2

    aput v2, v24, v20

    .line 989
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    move-object/from16 v25, v0

    .line 990
    const/high16 v2, 0x3f800000    # 1.0f

    add-int/lit8 v8, v20, -0x1

    int-to-float v8, v8

    div-float v16, v2, v8

    .line 991
    .local v16, "fraction":F
    if-eqz v25, :cond_e

    move-object/from16 v0, v25

    array-length v2, v0

    add-int/lit8 v8, v20, 0x1

    if-eq v2, v8, :cond_f

    .line 992
    :cond_e
    add-int/lit8 v2, v20, 0x1

    new-array v0, v2, [F

    move-object/from16 v25, v0

    .end local v25    # "tempPositions":[F
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    .line 995
    .restart local v25    # "tempPositions":[F
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v2

    int-to-float v2, v2

    const v8, 0x461c4000    # 10000.0f

    div-float v21, v2, v8

    .line 996
    .restart local v21    # "level":F
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_7
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    .line 997
    move/from16 v0, v18

    int-to-float v2, v0

    mul-float v2, v2, v16

    mul-float v2, v2, v21

    aput v2, v25, v18

    .line 996
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 999
    :cond_10
    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v25, v20

    .line 1002
    .end local v16    # "fraction":F
    .end local v18    # "i":I
    .end local v20    # "length":I
    .end local v21    # "level":F
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/SweepGradient;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v8, v3, v4, v0, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_2

    .line 1012
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v7    # "gradientColors":[I
    .end local v15    # "bounds":Landroid/graphics/Rect;
    .end local v19    # "inset":F
    .end local v22    # "r":Landroid/graphics/RectF;
    .end local v23    # "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    .end local v24    # "tempColors":[I
    .end local v25    # "tempPositions":[F
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 907
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getFloatOrFraction(Landroid/content/res/TypedArray;IF)F
    .locals 6
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "defaultValue"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1459
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 1460
    .local v0, "tv":Landroid/util/TypedValue;
    move v1, p2

    .line 1461
    .local v1, "v":F
    if-eqz v0, :cond_0

    .line 1462
    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    .line 1463
    .local v2, "vIsFraction":Z
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v0, v5, v5}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    .line 1465
    .end local v2    # "vIsFraction":Z
    :cond_0
    :goto_1
    return v1

    .line 1462
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1463
    .restart local v2    # "vIsFraction":Z
    :cond_2
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    goto :goto_1
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 8
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1179
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 1182
    .local v2, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .local v1, "depth":I
    if-ge v1, v2, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_8

    .line 1184
    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1188
    if-gt v1, v2, :cond_0

    .line 1192
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1194
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v5, "size"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1195
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1196
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSize(Landroid/content/res/TypedArray;)V

    .line 1197
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 1198
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2
    const-string v5, "gradient"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1199
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1200
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V

    .line 1201
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 1202
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_3
    const-string/jumbo v5, "solid"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1203
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1204
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V

    .line 1205
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 1206
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_4
    const-string/jumbo v5, "stroke"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1207
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1208
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V

    .line 1209
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 1210
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_5
    const-string v5, "corners"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1211
    sget-object v5, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1212
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    .line 1213
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 1214
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_6
    const-string/jumbo v5, "padding"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1215
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1216
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V

    .line 1217
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 1219
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_7
    const-string v5, "drawable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad element under <shape>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1222
    .end local v1    # "depth":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method static isOpaque(I)Z
    .locals 2
    .param p0, "color"    # I

    .prologue
    .line 1783
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOpaqueForState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1491
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1500
    :cond_0
    :goto_0
    return v0

    .line 1496
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1500
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private modulateAlpha(I)I
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    .line 467
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    iget v2, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shr-int/lit8 v2, v2, 0x7

    add-int v0, v1, v2

    .line 468
    .local v0, "scale":I
    mul-int v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private setStrokeInternal(IIFF)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "color"    # I
    .param p3, "dashWidth"    # F
    .param p4, "dashGap"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 326
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 327
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 328
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 330
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 331
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "e":Landroid/graphics/DashPathEffect;
    cmpl-float v1, p3, v3

    if-lez v1, :cond_1

    .line 335
    new-instance v0, Landroid/graphics/DashPathEffect;

    .end local v0    # "e":Landroid/graphics/DashPathEffect;
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    aput p4, v1, v4

    invoke-direct {v0, v1, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 337
    .restart local v0    # "e":Landroid/graphics/DashPathEffect;
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 338
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 339
    return-void
.end method

.method private updateDrawableCorners(Landroid/content/res/TypedArray;)V
    .locals 13
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1246
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1249
    .local v3, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v6, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1252
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v6

    iput-object v6, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    .line 1254
    iget v6, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    float-to-int v6, v6

    invoke-virtual {p1, v8, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 1256
    .local v2, "radius":I
    int-to-float v6, v2

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1259
    invoke-virtual {p1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 1261
    .local v4, "topLeftRadius":I
    invoke-virtual {p1, v10, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 1263
    .local v5, "topRightRadius":I
    invoke-virtual {p1, v11, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 1265
    .local v0, "bottomLeftRadius":I
    invoke-virtual {p1, v12, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 1267
    .local v1, "bottomRightRadius":I
    if-ne v4, v2, :cond_0

    if-ne v5, v2, :cond_0

    if-ne v0, v2, :cond_0

    if-eq v1, v2, :cond_1

    .line 1270
    :cond_0
    const/16 v6, 0x8

    new-array v6, v6, [F

    int-to-float v7, v4

    aput v7, v6, v8

    int-to-float v7, v4

    aput v7, v6, v9

    int-to-float v7, v5

    aput v7, v6, v10

    int-to-float v7, v5

    aput v7, v6, v11

    int-to-float v7, v1

    aput v7, v6, v12

    const/4 v7, 0x5

    int-to-float v8, v1

    aput v8, v6, v7

    const/4 v7, 0x6

    int-to-float v8, v0

    aput v8, v6, v7

    const/4 v7, 0x7

    int-to-float v8, v0

    aput v8, v6, v7

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1277
    :cond_1
    return-void
.end method

.method private updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    .locals 15
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1329
    iget-object v7, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1332
    .local v7, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v12

    or-int/2addr v11, v12

    iput v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1335
    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v11

    iput-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    .line 1337
    const/4 v11, 0x5

    iget v12, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    move-object/from16 v0, p2

    invoke-static {v0, v11, v12}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v11

    iput v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 1339
    const/4 v11, 0x6

    iget v12, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    move-object/from16 v0, p2

    invoke-static {v0, v11, v12}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v11

    iput v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 1341
    const/4 v11, 0x2

    iget-boolean v12, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 1343
    const/4 v11, 0x4

    iget v12, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 1347
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 1349
    .local v8, "startColor":I
    const/16 v11, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    .line 1351
    .local v4, "hasCenterColor":Z
    const/16 v11, 0x8

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 1353
    .local v2, "centerColor":I
    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 1356
    .local v3, "endColor":I
    if-eqz v4, :cond_1

    .line 1357
    const/4 v11, 0x3

    new-array v11, v11, [I

    iput-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    .line 1358
    iget-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    const/4 v12, 0x0

    aput v8, v11, v12

    .line 1359
    iget-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    const/4 v12, 0x1

    aput v2, v11, v12

    .line 1360
    iget-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    const/4 v12, 0x2

    aput v3, v11, v12

    .line 1362
    const/4 v11, 0x3

    new-array v11, v11, [F

    iput-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    .line 1363
    iget-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 1365
    iget-object v12, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    const/4 v13, 0x1

    iget v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    const/high16 v14, 0x3f000000    # 0.5f

    cmpl-float v11, v11, v14

    if-eqz v11, :cond_0

    iget v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    :goto_0
    aput v11, v12, v13

    .line 1366
    iget-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    const/4 v12, 0x2

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v11, v12

    .line 1373
    :goto_1
    iget v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    if-nez v11, :cond_4

    .line 1374
    const/4 v11, 0x3

    iget v12, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    int-to-float v12, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    float-to-int v1, v11

    .line 1375
    .local v1, "angle":I
    rem-int/lit16 v1, v1, 0x168

    .line 1377
    rem-int/lit8 v11, v1, 0x2d

    if-eqz v11, :cond_2

    .line 1378
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "<gradient> tag requires \'angle\' attribute to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "be a multiple of 45"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1365
    .end local v1    # "angle":I
    :cond_0
    iget v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    goto :goto_0

    .line 1368
    :cond_1
    const/4 v11, 0x2

    new-array v11, v11, [I

    iput-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    .line 1369
    iget-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    const/4 v12, 0x0

    aput v8, v11, v12

    .line 1370
    iget-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    const/4 v12, 0x1

    aput v3, v11, v12

    goto :goto_1

    .line 1383
    .restart local v1    # "angle":I
    :cond_2
    iput v1, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    .line 1385
    sparse-switch v1, :sswitch_data_0

    .line 1443
    .end local v1    # "angle":I
    :cond_3
    :goto_2
    return-void

    .line 1387
    .restart local v1    # "angle":I
    :sswitch_0
    sget-object v11, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    .line 1390
    :sswitch_1
    sget-object v11, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    .line 1393
    :sswitch_2
    sget-object v11, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    .line 1396
    :sswitch_3
    sget-object v11, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    .line 1399
    :sswitch_4
    sget-object v11, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    .line 1402
    :sswitch_5
    sget-object v11, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    .line 1405
    :sswitch_6
    sget-object v11, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    .line 1408
    :sswitch_7
    sget-object v11, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    .line 1412
    .end local v1    # "angle":I
    :cond_4
    const/4 v11, 0x7

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 1413
    .local v9, "tv":Landroid/util/TypedValue;
    if-eqz v9, :cond_8

    .line 1416
    iget v11, v9, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_6

    .line 1417
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v9, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v5

    .line 1419
    .local v5, "radius":F
    iget v11, v9, Landroid/util/TypedValue;->data:I

    shr-int/lit8 v11, v11, 0x0

    and-int/lit8 v10, v11, 0xf

    .line 1421
    .local v10, "unit":I
    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 1422
    const/4 v6, 0x2

    .line 1434
    .end local v10    # "unit":I
    .local v6, "radiusType":I
    :goto_3
    iput v5, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1435
    iput v6, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    goto :goto_2

    .line 1424
    .end local v6    # "radiusType":I
    .restart local v10    # "unit":I
    :cond_5
    const/4 v6, 0x1

    .restart local v6    # "radiusType":I
    goto :goto_3

    .line 1426
    .end local v5    # "radius":F
    .end local v6    # "radiusType":I
    .end local v10    # "unit":I
    :cond_6
    iget v11, v9, Landroid/util/TypedValue;->type:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_7

    .line 1427
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v5

    .line 1428
    .restart local v5    # "radius":F
    const/4 v6, 0x0

    .restart local v6    # "radiusType":I
    goto :goto_3

    .line 1430
    .end local v5    # "radius":F
    .end local v6    # "radiusType":I
    :cond_7
    invoke-virtual {v9}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    .line 1431
    .restart local v5    # "radius":F
    const/4 v6, 0x0

    .restart local v6    # "radiusType":I
    goto :goto_3

    .line 1436
    .end local v5    # "radius":F
    .end local v6    # "radiusType":I
    :cond_8
    iget v11, v7, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 1437
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "<gradient> tag requires \'gradientRadius\' "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "attribute with radial type"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1385
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2d -> :sswitch_1
        0x5a -> :sswitch_2
        0x87 -> :sswitch_3
        0xb4 -> :sswitch_4
        0xe1 -> :sswitch_5
        0x10e -> :sswitch_6
        0x13b -> :sswitch_7
    .end sparse-switch
.end method

.method private updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V
    .locals 7
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1225
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1228
    .local v1, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1231
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    .line 1233
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 1234
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1237
    :cond_0
    iget-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1238
    .local v0, "pad":Landroid/graphics/Rect;
    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/4 v4, 0x2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    const/4 v5, 0x3

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1242
    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 1243
    return-void
.end method

.method private updateGradientDrawableSize(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1446
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1449
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1452
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    .line 1454
    const/4 v1, 0x1

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 1455
    const/4 v1, 0x0

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 1456
    return-void
.end method

.method private updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1312
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1315
    .local v1, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1318
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    .line 1320
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1322
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 1323
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 1325
    :cond_0
    return-void
.end method

.method private updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v8, 0x0

    .line 1280
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1283
    .local v4, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v6, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1286
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v6

    iput-object v6, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    .line 1290
    iget v6, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1291
    .local v3, "defaultStrokeWidth":I
    invoke-virtual {p1, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 1293
    .local v5, "width":I
    const/4 v6, 0x2

    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 1296
    .local v2, "dashWidth":F
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1298
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    .line 1299
    iget-object v0, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 1302
    :cond_0
    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_1

    .line 1303
    const/4 v6, 0x3

    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 1305
    .local v1, "dashGap":F
    invoke-virtual {p0, v5, v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 1309
    .end local v1    # "dashGap":F
    :goto_0
    return-void

    .line 1307
    :cond_1
    invoke-virtual {p0, v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1800
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1802
    .local v2, "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_2

    .line 1803
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v0

    .line 1804
    .local v0, "currentState":[I
    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v0, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 1805
    .local v3, "stateColor":I
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1816
    .end local v0    # "currentState":[I
    .end local v3    # "stateColor":I
    :goto_0
    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 1818
    iget v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-ltz v5, :cond_1

    .line 1819
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 1820
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1821
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1823
    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_0

    .line 1824
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v0

    .line 1825
    .restart local v0    # "currentState":[I
    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v0, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 1827
    .local v4, "strokeStateColor":I
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1830
    .end local v0    # "currentState":[I
    .end local v4    # "strokeStateColor":I
    :cond_0
    iget v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_1

    .line 1831
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x2

    new-array v5, v5, [F

    iget v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    aput v6, v5, v7

    iget v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    aput v6, v5, v8

    invoke-direct {v1, v5, v9}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 1833
    .local v1, "e":Landroid/graphics/DashPathEffect;
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1837
    .end local v1    # "e":Landroid/graphics/DashPathEffect;
    :cond_1
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v7, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    iput-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1838
    iput-boolean v8, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 1840
    # invokes: Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V
    invoke-static {v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$100(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    .line 1841
    return-void

    .line 1806
    :cond_2
    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    if-nez v5, :cond_3

    .line 1810
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1813
    :cond_3
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 11
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v10, 0x3

    const/4 v9, -0x1

    .line 1065
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1068
    .local v4, "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v8

    or-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1071
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v7

    iput-object v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    .line 1073
    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    invoke-virtual {p1, v10, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 1074
    const/4 v7, 0x0

    iget-boolean v8, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 1076
    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    if-ne v7, v10, :cond_2

    .line 1077
    const/4 v7, 0x7

    iget v8, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 1080
    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-ne v7, v9, :cond_0

    .line 1081
    const/4 v7, 0x4

    iget v8, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 1085
    :cond_0
    const/16 v7, 0x8

    iget v8, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 1088
    iget v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    if-ne v7, v9, :cond_1

    .line 1089
    const/4 v7, 0x5

    iget v8, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 1093
    :cond_1
    const/4 v7, 0x6

    iget-boolean v8, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    .line 1097
    :cond_2
    const/16 v7, 0x9

    invoke-virtual {p1, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 1098
    .local v6, "tintMode":I
    if-eq v6, v9, :cond_3

    .line 1099
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    iput-object v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1102
    :cond_3
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 1103
    .local v5, "tint":Landroid/content/res/ColorStateList;
    if-eqz v5, :cond_4

    .line 1104
    iput-object v5, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1107
    :cond_4
    const/16 v7, 0xa

    iget-object v8, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v8, v8, Landroid/graphics/Insets;->left:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 1109
    .local v1, "insetLeft":I
    const/16 v7, 0xb

    iget-object v8, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v8, v8, Landroid/graphics/Insets;->top:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 1111
    .local v3, "insetTop":I
    const/16 v7, 0xc

    iget-object v8, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v8, v8, Landroid/graphics/Insets;->right:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 1113
    .local v2, "insetRight":I
    const/16 v7, 0xd

    iget-object v8, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v8, v8, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 1115
    .local v0, "insetBottom":I
    invoke-static {v1, v3, v2, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v7

    iput-object v7, v4, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 1116
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1030
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 1032
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1033
    .local v1, "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    if-nez v1, :cond_0

    .line 1059
    :goto_0
    return-void

    .line 1037
    :cond_0
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    if-eqz v2, :cond_1

    .line 1038
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    sget-object v3, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1040
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1041
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1044
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1045
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1048
    :cond_2
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1049
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 1052
    :cond_3
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_4

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1053
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 1056
    :cond_4
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->applyThemeChildElements(Landroid/content/res/Resources$Theme;)V

    .line 1058
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    goto :goto_0
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearMutated()V
    .locals 1

    .prologue
    .line 1559
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 1560
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    .line 1561
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 516
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    move-result v3

    if-nez v3, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v16

    .line 524
    .local v16, "prevFillAlpha":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v17

    .line 526
    .local v17, "prevStrokeAlpha":I
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v11

    .line 527
    .local v11, "currFillAlpha":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v12

    .line 529
    .local v12, "currStrokeAlpha":I
    if-lez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    const/4 v14, 0x1

    .line 531
    .local v14, "haveStroke":Z
    :goto_2
    if-lez v11, :cond_8

    const/4 v13, 0x1

    .line 532
    .local v13, "haveFill":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v20, v0

    .line 533
    .local v20, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 540
    .local v10, "colorFilter":Landroid/graphics/ColorFilter;
    :goto_4
    if-eqz v14, :cond_a

    if-eqz v13, :cond_a

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a

    const/16 v3, 0xff

    if-ge v12, v3, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    const/16 v4, 0xff

    if-lt v3, v4, :cond_2

    if-eqz v10, :cond_a

    :cond_2
    const/16 v21, 0x1

    .line 550
    .local v21, "useLayer":Z
    :goto_5
    if-eqz v21, :cond_b

    .line 551
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_3

    .line 552
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    .line 554
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v20

    iget-boolean v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 555
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 556
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 558
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v19

    .line 559
    .local v19, "rad":F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float v4, v3, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float v5, v3, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float v6, v3, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float v7, v3, v19

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    const/4 v9, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 565
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 566
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 584
    .end local v19    # "rad":F
    :cond_4
    :goto_6
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    packed-switch v3, :pswitch_data_0

    .line 637
    :cond_5
    :goto_7
    if-eqz v21, :cond_11

    .line 638
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 524
    .end local v10    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v11    # "currFillAlpha":I
    .end local v12    # "currStrokeAlpha":I
    .end local v13    # "haveFill":Z
    .end local v14    # "haveStroke":Z
    .end local v17    # "prevStrokeAlpha":I
    .end local v20    # "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    .end local v21    # "useLayer":Z
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 529
    .restart local v11    # "currFillAlpha":I
    .restart local v12    # "currStrokeAlpha":I
    .restart local v17    # "prevStrokeAlpha":I
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 531
    .restart local v14    # "haveStroke":Z
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 533
    .restart local v13    # "haveFill":Z
    .restart local v20    # "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    goto/16 :goto_4

    .line 540
    .restart local v10    # "colorFilter":Landroid/graphics/ColorFilter;
    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 571
    .restart local v21    # "useLayer":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 572
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v20

    iget-boolean v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 573
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 574
    if-eqz v10, :cond_c

    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_c

    .line 575
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shl-int/lit8 v4, v4, 0x18

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 577
    :cond_c
    if-eqz v14, :cond_4

    .line 578
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 579
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, v20

    iget-boolean v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 580
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_6

    .line 586
    :pswitch_0
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v3, :cond_d

    .line 587
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->buildPathIfDirty()V

    .line 588
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 589
    if-eqz v14, :cond_5

    .line 590
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 592
    :cond_d
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_e

    .line 598
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v19

    .line 600
    .restart local v19    # "rad":F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 601
    if-eqz v14, :cond_5

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 605
    .end local v19    # "rad":F
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    if-nez v3, :cond_f

    if-nez v10, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 607
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 609
    :cond_10
    if-eqz v14, :cond_5

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 615
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 616
    if-eqz v14, :cond_5

    .line 617
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 621
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    .line 622
    .local v18, "r":Landroid/graphics/RectF;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    .line 623
    .local v5, "y":F
    if-eqz v14, :cond_5

    .line 624
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v7, v5

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 629
    .end local v5    # "y":F
    .end local v18    # "r":Landroid/graphics/RectF;
    :pswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;

    move-result-object v15

    .line 630
    .local v15, "path":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 631
    if-eqz v14, :cond_5

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 640
    .end local v15    # "path":Landroid/graphics/Path;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 641
    if-eqz v14, :cond_0

    .line 642
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 584
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 817
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 804
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 1486
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1487
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    return-object v0
.end method

.method public getGradientRadius()F
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 440
    const/4 v0, 0x0

    .line 444
    :goto_0
    return v0

    .line 443
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    .line 444
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientRadius:F

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 857
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->isOpaqueForState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 11
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    .line 1505
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1506
    .local v5, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1508
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-boolean v7, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    if-eqz v7, :cond_0

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->isOpaqueForState()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    int-to-float v7, v7

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v7, v9

    :goto_0
    invoke-virtual {p1, v7}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 1510
    iget v7, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    packed-switch v7, :pswitch_data_0

    .line 1543
    :goto_1
    return-void

    :cond_0
    move v7, v8

    .line 1508
    goto :goto_0

    .line 1512
    :pswitch_0
    iget-object v7, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v7, :cond_1

    .line 1513
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->buildPathIfDirty()V

    .line 1514
    iget-object v7, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v7}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    goto :goto_1

    .line 1518
    :cond_1
    const/4 v4, 0x0

    .line 1519
    .local v4, "rad":F
    iget v7, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 1521
    iget v7, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1524
    :cond_2
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_1

    .line 1527
    .end local v4    # "rad":F
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1532
    :pswitch_2
    iget-object v7, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v7, :cond_3

    const v3, 0x38d1b717    # 1.0E-4f

    .line 1534
    .local v3, "halfStrokeWidth":F
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v2, v7

    .line 1535
    .local v2, "centerY":F
    sub-float v7, v2, v3

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v6, v8

    .line 1536
    .local v6, "top":I
    add-float v7, v2, v3

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 1538
    .local v0, "bottom":I
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v7, v6, v8, v0}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_1

    .line 1532
    .end local v0    # "bottom":I
    .end local v2    # "centerY":F
    .end local v3    # "halfStrokeWidth":F
    .end local v6    # "top":I
    :cond_3
    iget-object v7, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    mul-float v3, v7, v10

    goto :goto_2

    .line 1510
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 192
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 194
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1018
    sget-object v1, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1019
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-super {p0, p1, p2, v0, v1}, Landroid/graphics/drawable/Drawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 1020
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1021
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1023
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 1025
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 1026
    return-void
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 796
    .local v0, "s":Landroid/graphics/drawable/GradientDrawable$GradientState;
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1547
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1548
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1549
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 1550
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    .line 1552
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x1

    .line 863
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 864
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 865
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 866
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 867
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x1

    .line 871
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    .line 872
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 873
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 874
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 875
    return v0
.end method

.method protected onStateChange([I)Z
    .locals 11
    .param p1, "stateSet"    # [I

    .prologue
    const/4 v7, 0x0

    .line 754
    const/4 v0, 0x0

    .line 756
    .local v0, "invalidateSelf":Z
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 757
    .local v3, "s":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-object v4, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 758
    .local v4, "solidColors":Landroid/content/res/ColorStateList;
    if-eqz v4, :cond_0

    .line 759
    invoke-virtual {v4, p1, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 760
    .local v1, "newColor":I
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 761
    .local v2, "oldColor":I
    if-eq v2, v1, :cond_0

    .line 762
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 763
    const/4 v0, 0x1

    .line 767
    .end local v1    # "newColor":I
    .end local v2    # "oldColor":I
    :cond_0
    iget-object v6, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 768
    .local v6, "strokePaint":Landroid/graphics/Paint;
    if-eqz v6, :cond_1

    .line 769
    iget-object v5, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 770
    .local v5, "strokeColors":Landroid/content/res/ColorStateList;
    if-eqz v5, :cond_1

    .line 771
    invoke-virtual {v5, p1, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 772
    .restart local v1    # "newColor":I
    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 773
    .restart local v2    # "oldColor":I
    if-eq v2, v1, :cond_1

    .line 774
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 775
    const/4 v0, 0x1

    .line 780
    .end local v1    # "newColor":I
    .end local v2    # "oldColor":I
    .end local v5    # "strokeColors":Landroid/content/res/ColorStateList;
    :cond_1
    iget-object v8, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v8, :cond_2

    iget-object v8, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v8, :cond_2

    .line 781
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v9, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v10, v3, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v8, v9, v10}, Landroid/graphics/drawable/GradientDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v8

    iput-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 782
    const/4 v0, 0x1

    .line 785
    :cond_2
    if-eqz v0, :cond_3

    .line 786
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 787
    const/4 v7, 0x1

    .line 790
    :cond_3
    return v7
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 809
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 810
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 811
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 813
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "argb"    # I

    .prologue
    .line 721
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColors(Landroid/content/res/ColorStateList;)V

    .line 722
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 723
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 724
    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 740
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColors(Landroid/content/res/ColorStateList;)V

    .line 742
    if-nez p1, :cond_0

    .line 743
    const/4 v0, 0x0

    .line 748
    .local v0, "color":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 749
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 750
    return-void

    .line 745
    .end local v0    # "color":I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    .line 746
    .local v1, "stateSet":[I
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .restart local v0    # "color":I
    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 835
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq p1, v0, :cond_0

    .line 836
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 837
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 839
    :cond_0
    return-void
.end method

.method public setColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 509
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientColors([I)V

    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 511
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 512
    return-void
.end method

.method public setCornerRadii([F)V
    .locals 1
    .param p1, "radii"    # [F

    .prologue
    .line 217
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadii([F)V

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 219
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 220
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 237
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadius(F)V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 239
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 240
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 822
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    if-eq p1, v0, :cond_0

    .line 823
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-boolean p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 824
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 826
    :cond_0
    return-void
.end method

.method public setGradientCenter(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 409
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientCenter(FF)V

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 411
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 412
    return-void
.end method

.method public setGradientRadius(F)V
    .locals 2
    .param p1, "gradientRadius"    # F

    .prologue
    .line 427
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientRadius(FI)V

    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 429
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 430
    return-void
.end method

.method public setGradientType(I)V
    .locals 1
    .param p1, "gradient"    # I

    .prologue
    .line 390
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientType(I)V

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 392
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 393
    return-void
.end method

.method public setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V
    .locals 1
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;

    .prologue
    .line 489
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 491
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 492
    return-void
.end method

.method public setShape(I)V
    .locals 1
    .param p1, "shape"    # I

    .prologue
    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 374
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setShape(I)V

    .line 375
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 376
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 355
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSize(II)V

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 357
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 358
    return-void
.end method

.method public setStroke(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "color"    # I

    .prologue
    const/4 v0, 0x0

    .line 256
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 257
    return-void
.end method

.method public setStroke(IIFF)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "color"    # I
    .param p3, "dashWidth"    # F
    .param p4, "dashGap"    # F

    .prologue
    .line 292
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 293
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStrokeInternal(IIFF)V

    .line 294
    return-void
.end method

.method public setStroke(ILandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 274
    return-void
.end method

.method public setStroke(ILandroid/content/res/ColorStateList;FF)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;
    .param p3, "dashWidth"    # F
    .param p4, "dashGap"    # F

    .prologue
    .line 314
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 316
    if-nez p2, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 322
    .local v0, "color":I
    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStrokeInternal(IIFF)V

    .line 323
    return-void

    .line 319
    .end local v0    # "color":I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    .line 320
    .local v1, "stateSet":[I
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .restart local v0    # "color":I
    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 843
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 844
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 845
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 846
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 850
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 851
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 852
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 853
    return-void
.end method

.method public setUseLevel(Z)V
    .locals 1
    .param p1, "useLevel"    # Z

    .prologue
    .line 461
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-boolean p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 463
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 464
    return-void
.end method
