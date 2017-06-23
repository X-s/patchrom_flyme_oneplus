.class public final Landroid/content/res/Resources$Theme;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Theme"
.end annotation


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mKey:Landroid/content/res/Resources$ThemeKey;

.field private final mTheme:J

.field private mThemeResId:I

.field final synthetic this$0:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 1778
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1784
    new-instance v0, Landroid/content/res/Resources$ThemeKey;

    invoke-direct {v0}, Landroid/content/res/Resources$ThemeKey;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 1791
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Resources$Theme;->mThemeResId:I

    .line 1779
    iget-object v0, p1, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    .line 1780
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->createTheme()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    .line 1781
    return-void
.end method

.method private getResourceNameFromHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    .line 1807
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyStyle(IZ)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .prologue
    .line 1456
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->applyThemeStyle(JIZ)V

    .line 1458
    iput p1, p0, Landroid/content/res/Resources$Theme;->mThemeResId:I

    .line 1459
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources$ThemeKey;->append(IZ)V

    .line 1460
    return-void
.end method

.method public dump(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1769
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->dumpTheme(JILjava/lang/String;Ljava/lang/String;)V

    .line 1770
    return-void
.end method

.method public encode(Landroid/view/ViewHierarchyEncoder;)V
    .locals 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 1836
    invoke-virtual {p1, p0}, Landroid/view/ViewHierarchyEncoder;->beginObject(Ljava/lang/Object;)V

    .line 1837
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getTheme()[Ljava/lang/String;

    move-result-object v1

    .line 1838
    .local v1, "properties":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1839
    aget-object v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v1, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1841
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewHierarchyEncoder;->endObject()V

    .line 1842
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1774
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1775
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v2, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    invoke-virtual {v0, v2, v3}, Landroid/content/res/AssetManager;->releaseTheme(J)V

    .line 1776
    return-void
.end method

.method public getAllAttributes()[I
    .locals 2

    .prologue
    .line 1721
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getAppliedStyleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->getStyleAttributes(I)[I

    move-result-object v0

    return-object v0
.end method

.method getAppliedStyleResId()I
    .locals 1

    .prologue
    .line 1799
    iget v0, p0, Landroid/content/res/Resources$Theme;->mThemeResId:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 4

    .prologue
    .line 1757
    iget-wide v2, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    invoke-static {v2, v3}, Landroid/content/res/AssetManager;->getThemeChangingConfigurations(J)I

    move-result v0

    .line 1758
    .local v0, "nativeChangingConfig":I
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v1

    return v1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1745
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getKey()Landroid/content/res/Resources$ThemeKey;
    .locals 1

    .prologue
    .line 1803
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    return-object v0
.end method

.method getNativeTheme()J
    .locals 2

    .prologue
    .line 1795
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    return-wide v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1730
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTheme()[Ljava/lang/String;
    .locals 9
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "theme"
        hasAdjacentMapping = true
    .end annotation

    .prologue
    .line 1819
    iget-object v7, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget v0, v7, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 1820
    .local v0, "N":I
    mul-int/lit8 v7, v0, 0x2

    new-array v6, v7, [Ljava/lang/String;

    .line 1821
    .local v6, "themes":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    add-int/lit8 v4, v0, -0x1

    .local v4, "j":I
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_1

    .line 1822
    iget-object v7, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v7, v7, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v5, v7, v4

    .line 1823
    .local v5, "resId":I
    iget-object v7, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v7, v7, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v2, v7, v4

    .line 1825
    .local v2, "forced":Z
    :try_start_0
    iget-object v7, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1829
    :goto_1
    add-int/lit8 v8, v3, 0x1

    if-eqz v2, :cond_0

    const-string v7, "forced"

    :goto_2
    aput-object v7, v6, v8

    .line 1821
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1826
    :catch_0
    move-exception v1

    .line 1827
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    goto :goto_1

    .line 1829
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    const-string/jumbo v7, "not forced"

    goto :goto_2

    .line 1831
    .end local v2    # "forced":Z
    .end local v5    # "resId":I
    :cond_1
    return-object v6
.end method

.method public obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 11
    .param p1, "resid"    # I
    .param p2, "attrs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1527
    array-length v10, p2

    .line 1528
    .local v10, "len":I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-static {v0, v10}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1529
    .local v9, "array":Landroid/content/res/TypedArray;
    iput-object p0, v9, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1556
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    iget-object v7, v9, Landroid/content/res/TypedArray;->mData:[I

    iget-object v8, v9, Landroid/content/res/TypedArray;->mIndices:[I

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v8}, Landroid/content/res/AssetManager;->applyStyle(JIIJ[I[I[I)Z

    .line 1557
    return-object v9
.end method

.method public obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 12
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1610
    array-length v10, p2

    .line 1611
    .local v10, "len":I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-static {v0, v10}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v9

    .local v9, "array":Landroid/content/res/TypedArray;
    move-object v11, p1

    .line 1617
    check-cast v11, Landroid/content/res/XmlBlock$Parser;

    .line 1618
    .local v11, "parser":Landroid/content/res/XmlBlock$Parser;
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    if-eqz v11, :cond_0

    iget-wide v4, v11, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    :goto_0
    iget-object v7, v9, Landroid/content/res/TypedArray;->mData:[I

    iget-object v8, v9, Landroid/content/res/TypedArray;->mIndices:[I

    move v2, p3

    move/from16 v3, p4

    move-object v6, p2

    invoke-static/range {v0 .. v8}, Landroid/content/res/AssetManager;->applyStyle(JIIJ[I[I[I)Z

    .line 1621
    iput-object p0, v9, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1622
    iput-object v11, v9, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1653
    return-object v9

    .line 1618
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .locals 11
    .param p1, "attrs"    # [I

    .prologue
    const/4 v2, 0x0

    .line 1498
    array-length v10, p1

    .line 1499
    .local v10, "len":I
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-static {v0, v10}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1500
    .local v9, "array":Landroid/content/res/TypedArray;
    iput-object p0, v9, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1501
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    const-wide/16 v4, 0x0

    iget-object v7, v9, Landroid/content/res/TypedArray;->mData:[I

    iget-object v8, v9, Landroid/content/res/TypedArray;->mIndices:[I

    move v3, v2

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Landroid/content/res/AssetManager;->applyStyle(JIIJ[I[I[I)Z

    .line 1502
    return-object v9
.end method

.method public rebase()V
    .locals 6

    .prologue
    .line 1852
    iget-wide v4, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    invoke-static {v4, v5}, Landroid/content/res/AssetManager;->clearTheme(J)V

    .line 1855
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget v3, v3, Landroid/content/res/Resources$ThemeKey;->mCount:I

    if-ge v1, v3, :cond_0

    .line 1856
    iget-object v3, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v3, v3, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v2, v3, v1

    .line 1857
    .local v2, "resId":I
    iget-object v3, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v3, v3, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v0, v3, v1

    .line 1858
    .local v0, "force":Z
    iget-wide v4, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    invoke-static {v4, v5, v2, v0}, Landroid/content/res/AssetManager;->applyThemeStyle(JIZ)V

    .line 1855
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1860
    .end local v0    # "force":Z
    .end local v2    # "resId":I
    :cond_0
    return-void
.end method

.method public resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .locals 7
    .param p1, "resid"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .prologue
    .line 1704
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v2, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/res/AssetManager;->getThemeValue(JILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1711
    .local v0, "got":Z
    return v0
.end method

.method public resolveAttributes([I[I)Landroid/content/res/TypedArray;
    .locals 10
    .param p1, "values"    # [I
    .param p2, "attrs"    # [I

    .prologue
    const/4 v2, 0x0

    .line 1672
    array-length v9, p2

    .line 1673
    .local v9, "len":I
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eq v9, v0, :cond_1

    .line 1674
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Base attribute values must the same length as attrs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1678
    :cond_1
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-static {v0, v9}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1679
    .local v8, "array":Landroid/content/res/TypedArray;
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    iget-object v6, v8, Landroid/content/res/TypedArray;->mData:[I

    iget-object v7, v8, Landroid/content/res/TypedArray;->mIndices:[I

    move v3, v2

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Landroid/content/res/AssetManager;->resolveAttrs(JII[I[I[I[I)Z

    .line 1680
    iput-object p0, v8, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1681
    const/4 v0, 0x0

    iput-object v0, v8, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1683
    return-object v8
.end method

.method public setTo(Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "other"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1472
    iget-wide v0, p0, Landroid/content/res/Resources$Theme;->mTheme:J

    iget-wide v2, p1, Landroid/content/res/Resources$Theme;->mTheme:J

    invoke-static {v0, v1, v2, v3}, Landroid/content/res/AssetManager;->copyTheme(JJ)V

    .line 1474
    iget v0, p1, Landroid/content/res/Resources$Theme;->mThemeResId:I

    iput v0, p0, Landroid/content/res/Resources$Theme;->mThemeResId:I

    .line 1475
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mKey:Landroid/content/res/Resources$ThemeKey;

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$ThemeKey;->setTo(Landroid/content/res/Resources$ThemeKey;)V

    .line 1476
    return-void
.end method
