.class Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;
.super Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VFullPath"
.end annotation


# instance fields
.field mFillAlpha:F

.field mFillColor:I

.field mFillRule:I

.field mStrokeAlpha:F

.field mStrokeColor:I

.field mStrokeLineCap:Landroid/graphics/Paint$Cap;

.field mStrokeLineJoin:Landroid/graphics/Paint$Join;

.field mStrokeMiterlimit:F

.field mStrokeWidth:F

.field private mThemeAttrs:[I

.field mTrimPathEnd:F

.field mTrimPathOffset:F

.field mTrimPathStart:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1684
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>()V

    .line 1669
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    .line 1670
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1672
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    .line 1673
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1675
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1676
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1677
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1678
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1680
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1681
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1682
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1684
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;)V
    .locals 3
    .param p1, "copy"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1689
    invoke-direct {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;)V

    .line 1669
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    .line 1670
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1672
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    .line 1673
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1675
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1676
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1677
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1678
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1680
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1681
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1682
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1690
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    .line 1692
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    .line 1693
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1694
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1695
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    .line 1696
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillRule:I

    .line 1697
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1698
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1699
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1700
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1702
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1703
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1704
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1688
    return-void
.end method

.method private getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 1
    .param p1, "id"    # I
    .param p2, "defValue"    # Landroid/graphics/Paint$Cap;

    .prologue
    .line 1708
    packed-switch p1, :pswitch_data_0

    .line 1716
    return-object p2

    .line 1710
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 1712
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 1714
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 1708
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 1
    .param p1, "id"    # I
    .param p2, "defValue"    # Landroid/graphics/Paint$Join;

    .prologue
    .line 1721
    packed-switch p1, :pswitch_data_0

    .line 1729
    return-object p2

    .line 1723
    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object v0

    .line 1725
    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object v0

    .line 1727
    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object v0

    .line 1721
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 1750
    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    .line 1757
    const-string/jumbo v5, "pathData"

    invoke-static {p2, v5}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 1758
    .local v0, "hasPathData":Z
    if-nez v0, :cond_0

    .line 1761
    return-void

    .line 1764
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1765
    .local v4, "pathName":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1766
    iput-object v4, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mPathName:Ljava/lang/String;

    .line 1769
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1770
    .local v3, "pathData":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1771
    invoke-static {v3}, Landroid/support/graphics/drawable/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object v5

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 1774
    :cond_2
    const-string/jumbo v5, "fillColor"

    .line 1775
    iget v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    const/4 v7, 0x1

    .line 1774
    invoke-static {p1, p2, v5, v7, v6}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    .line 1776
    const-string/jumbo v5, "fillAlpha"

    .line 1777
    iget v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    const/16 v7, 0xc

    .line 1776
    invoke-static {p1, p2, v5, v7, v6}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1778
    const-string/jumbo v5, "strokeLineCap"

    .line 1779
    const/16 v6, 0x8

    .line 1778
    invoke-static {p1, p2, v5, v6, v8}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 1780
    .local v1, "lineCap":I
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v1, v5}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v5

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineCap:Landroid/graphics/Paint$Cap;

    .line 1781
    const-string/jumbo v5, "strokeLineJoin"

    .line 1782
    const/16 v6, 0x9

    .line 1781
    invoke-static {p1, p2, v5, v6, v8}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 1783
    .local v2, "lineJoin":I
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v2, v5}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v5

    iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeLineJoin:Landroid/graphics/Paint$Join;

    .line 1784
    const-string/jumbo v5, "strokeMiterLimit"

    .line 1786
    iget v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1785
    const/16 v7, 0xa

    .line 1784
    invoke-static {p1, p2, v5, v7, v6}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeMiterlimit:F

    .line 1787
    const-string/jumbo v5, "strokeColor"

    .line 1788
    iget v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    const/4 v7, 0x3

    .line 1787
    invoke-static {p1, p2, v5, v7, v6}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    .line 1789
    const-string/jumbo v5, "strokeAlpha"

    .line 1790
    iget v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    const/16 v7, 0xb

    .line 1789
    invoke-static {p1, p2, v5, v7, v6}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1791
    const-string/jumbo v5, "strokeWidth"

    .line 1792
    iget v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    const/4 v7, 0x4

    .line 1791
    invoke-static {p1, p2, v5, v7, v6}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1793
    const-string/jumbo v5, "trimPathEnd"

    .line 1794
    iget v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    const/4 v7, 0x6

    .line 1793
    invoke-static {p1, p2, v5, v7, v6}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1795
    const-string/jumbo v5, "trimPathOffset"

    .line 1796
    iget v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    const/4 v7, 0x7

    .line 1795
    invoke-static {p1, p2, v5, v7, v6}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1797
    const-string/jumbo v5, "trimPathStart"

    .line 1798
    iget v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    const/4 v7, 0x5

    .line 1797
    invoke-static {p1, p2, v5, v7, v6}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1745
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1803
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    if-nez v0, :cond_0

    .line 1804
    return-void

    .line 1802
    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFillAlpha()F
    .locals 1

    .prologue
    .line 1857
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    return v0
.end method

.method getFillColor()I
    .locals 1

    .prologue
    .line 1847
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    return v0
.end method

.method getStrokeAlpha()F
    .locals 1

    .prologue
    .line 1837
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    return v0
.end method

.method getStrokeColor()I
    .locals 1

    .prologue
    .line 1817
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    return v0
.end method

.method getStrokeWidth()F
    .locals 1

    .prologue
    .line 1827
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    return v0
.end method

.method getTrimPathEnd()F
    .locals 1

    .prologue
    .line 1877
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    return v0
.end method

.method getTrimPathOffset()F
    .locals 1

    .prologue
    .line 1887
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    return v0
.end method

.method getTrimPathStart()F
    .locals 1

    .prologue
    .line 1867
    iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1740
    sget-object v1, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawablePath:[I

    .line 1739
    invoke-static {p1, p3, p2, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1741
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0, p4}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1742
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1738
    return-void
.end method

.method setFillAlpha(F)V
    .locals 0
    .param p1, "fillAlpha"    # F

    .prologue
    .line 1862
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillAlpha:F

    .line 1861
    return-void
.end method

.method setFillColor(I)V
    .locals 0
    .param p1, "fillColor"    # I

    .prologue
    .line 1852
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mFillColor:I

    .line 1851
    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 0
    .param p1, "strokeAlpha"    # F

    .prologue
    .line 1842
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeAlpha:F

    .line 1841
    return-void
.end method

.method setStrokeColor(I)V
    .locals 0
    .param p1, "strokeColor"    # I

    .prologue
    .line 1822
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeColor:I

    .line 1821
    return-void
.end method

.method setStrokeWidth(F)V
    .locals 0
    .param p1, "strokeWidth"    # F

    .prologue
    .line 1832
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mStrokeWidth:F

    .line 1831
    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 0
    .param p1, "trimPathEnd"    # F

    .prologue
    .line 1882
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathEnd:F

    .line 1881
    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 0
    .param p1, "trimPathOffset"    # F

    .prologue
    .line 1892
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathOffset:F

    .line 1891
    return-void
.end method

.method setTrimPathStart(F)V
    .locals 0
    .param p1, "trimPathStart"    # F

    .prologue
    .line 1872
    iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;->mTrimPathStart:F

    .line 1871
    return-void
.end method
