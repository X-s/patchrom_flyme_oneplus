.class public final Landroid/content/res/OpResources;
.super Landroid/content/res/Resources;
.source "OpResources.java"


# static fields
.field public static final COOKIE_TYPE_FRAMEWORK:I = 0x1

.field public static final COOKIE_TYPE_OPPO:I = 0x2

.field public static final COOKIE_TYPE_OTHERPACKAGE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OpResources"


# instance fields
.field private final DEBUG:Z

.field private mCharSequences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mCookies:Landroid/util/SparseIntArray;

.field private mIntegers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsHasValues:Z

.field private mSkipFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeResources:Landroid/content/res/OpThemeResources;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 43
    iput-boolean v0, p0, Landroid/content/res/OpResources;->DEBUG:Z

    .line 49
    iput-boolean v0, p0, Landroid/content/res/OpResources;->mIsHasValues:Z

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OpResources;->mCharSequences:Landroid/util/SparseArray;

    .line 52
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OpResources;->mCookies:Landroid/util/SparseIntArray;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OpResources;->mIntegers:Landroid/util/SparseArray;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OpResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/OpResources;->init(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "assetmanager"    # Landroid/content/res/AssetManager;
    .param p2, "displaymetrics"    # Landroid/util/DisplayMetrics;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 43
    iput-boolean v0, p0, Landroid/content/res/OpResources;->DEBUG:Z

    .line 49
    iput-boolean v0, p0, Landroid/content/res/OpResources;->mIsHasValues:Z

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OpResources;->mCharSequences:Landroid/util/SparseArray;

    .line 52
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OpResources;->mCookies:Landroid/util/SparseIntArray;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OpResources;->mIntegers:Landroid/util/SparseArray;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OpResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/OpResources;->init(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "assetmanager"    # Landroid/content/res/AssetManager;
    .param p2, "displaymetrics"    # Landroid/util/DisplayMetrics;
    .param p3, "configuration"    # Landroid/content/res/Configuration;
    .param p4, "compatibilityinfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct/range {p0 .. p5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    .line 43
    iput-boolean v0, p0, Landroid/content/res/OpResources;->DEBUG:Z

    .line 49
    iput-boolean v0, p0, Landroid/content/res/OpResources;->mIsHasValues:Z

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OpResources;->mCharSequences:Landroid/util/SparseArray;

    .line 52
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OpResources;->mCookies:Landroid/util/SparseIntArray;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OpResources;->mIntegers:Landroid/util/SparseArray;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/OpResources;->mSkipFiles:Landroid/util/SparseArray;

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/OpResources;->init(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private getCookieType(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 128
    iget-object v2, p0, Landroid/content/res/OpResources;->mCookies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 129
    .local v0, "i":I
    const/4 v1, 0x0

    .line 130
    .local v1, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 131
    iget-object v2, p0, Landroid/content/res/OpResources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getCookieName(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    const-string v2, "/system/framework/framework-res.apk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    const/4 v0, 0x1

    .line 143
    :goto_0
    iget-object v2, p0, Landroid/content/res/OpResources;->mCookies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 145
    :cond_0
    return v0

    .line 137
    :cond_1
    const-string v2, "/system/framework/oneplus-framework-res.apk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    const/4 v0, 0x2

    goto :goto_0

    .line 140
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 7
    .param p1, "typedarray"    # Landroid/content/res/TypedArray;

    .prologue
    .line 315
    iget-boolean v5, p0, Landroid/content/res/OpResources;->mIsHasValues:Z

    if-eqz v5, :cond_3

    .line 316
    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    .line 317
    .local v0, "ai":[I
    const/4 v1, 0x0

    .line 318
    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_3

    .line 319
    add-int/lit8 v5, v1, 0x0

    aget v4, v0, v5

    .line 320
    .local v4, "type":I
    add-int/lit8 v5, v1, 0x3

    aget v2, v0, v5

    .line 321
    .local v2, "id":I
    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    const/16 v5, 0x1f

    if-le v4, v5, :cond_1

    :cond_0
    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 322
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/res/OpResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v3

    .line 323
    .local v3, "res":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 324
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    .line 327
    .end local v3    # "res":Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v1, v1, 0x6

    .line 328
    goto :goto_0

    .line 331
    .end local v0    # "ai":[I
    .end local v1    # "i":I
    .end local v2    # "id":I
    .end local v4    # "type":I
    :cond_3
    return-object p1
.end method


# virtual methods
.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Landroid/content/res/OpResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 151
    .local v0, "res":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 152
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 155
    :cond_0
    return-object v0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/content/res/OpResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 161
    .local v0, "res":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 162
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 165
    :cond_0
    return-object v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, "res":Ljava/lang/CharSequence;
    iget-boolean v2, p0, Landroid/content/res/OpResources;->mIsHasValues:Z

    if-nez v2, :cond_0

    .line 171
    const/4 v1, 0x0

    .line 182
    :goto_0
    return-object v1

    .line 173
    :cond_0
    iget-object v2, p0, Landroid/content/res/OpResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 174
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 175
    iget-object v2, p0, Landroid/content/res/OpResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "res":Ljava/lang/CharSequence;
    check-cast v1, Ljava/lang/CharSequence;

    .restart local v1    # "res":Ljava/lang/CharSequence;
    goto :goto_0

    .line 177
    :cond_1
    iget-object v2, p0, Landroid/content/res/OpResources;->mThemeResources:Landroid/content/res/OpThemeResources;

    invoke-virtual {v2, p1}, Landroid/content/res/OpThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 178
    iget-object v2, p0, Landroid/content/res/OpResources;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 187
    iget-boolean v2, p0, Landroid/content/res/OpResources;->mIsHasValues:Z

    if-nez v2, :cond_0

    .line 188
    const/4 v1, 0x0

    .line 199
    .local v1, "res":Ljava/lang/Integer;
    :goto_0
    return-object v1

    .line 190
    .end local v1    # "res":Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Landroid/content/res/OpResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 191
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 192
    iget-object v2, p0, Landroid/content/res/OpResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "res":Ljava/lang/Integer;
    goto :goto_0

    .line 194
    .end local v1    # "res":Ljava/lang/Integer;
    :cond_1
    iget-object v2, p0, Landroid/content/res/OpResources;->mThemeResources:Landroid/content/res/OpThemeResources;

    invoke-virtual {v2, p1}, Landroid/content/res/OpThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v1

    .line 195
    .restart local v1    # "res":Ljava/lang/Integer;
    iget-object v2, p0, Landroid/content/res/OpResources;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 205
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_1

    :cond_0
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 206
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/OpResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 207
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    .line 211
    .end local v0    # "res":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "oneplus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    :cond_0
    invoke-static {p0}, Landroid/content/res/OpThemeResources;->getSystem(Landroid/content/res/Resources;)Landroid/content/res/OpThemeResources;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/OpResources;->mThemeResources:Landroid/content/res/OpThemeResources;

    .line 80
    :goto_0
    iget-object v0, p0, Landroid/content/res/OpResources;->mThemeResources:Landroid/content/res/OpThemeResources;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Landroid/content/res/OpResources;->mThemeResources:Landroid/content/res/OpThemeResources;

    invoke-virtual {v0}, Landroid/content/res/OpThemeResources;->hasValues()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/OpResources;->mIsHasValues:Z

    .line 83
    :cond_1
    return-void

    .line 77
    :cond_2
    invoke-static {p0, p1}, Landroid/content/res/OpThemeResourcesPackage;->getThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/content/res/OpThemeResourcesPackage;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/OpResources;->mThemeResources:Landroid/content/res/OpThemeResources;

    goto :goto_0
.end method

.method public loadIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x1

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 238
    .local v3, "path":Ljava/lang/String;
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 239
    .local v5, "value":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v5, v7}, Landroid/content/res/OpResources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 240
    iget-object v6, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    iget-object v6, p0, Landroid/content/res/OpResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/content/res/OpResources;->mThemeResources:Landroid/content/res/OpThemeResources;

    if-eqz v6, :cond_2

    .line 243
    iget-object v6, p0, Landroid/content/res/OpResources;->mThemeResources:Landroid/content/res/OpThemeResources;

    invoke-static {}, Landroid/content/res/OpThemeResources;->getSystem()Landroid/content/res/OpThemeResourcesSystem;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/OpThemeResourcesSystem;->getIconStream(Ljava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v4

    .line 245
    .local v4, "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    if-nez v4, :cond_0

    .line 246
    iget-object v6, p0, Landroid/content/res/OpResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    const/4 v6, 0x0

    .line 268
    .end local v4    # "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    :goto_0
    return-object v6

    .line 251
    .restart local v4    # "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    :cond_0
    if-eqz v4, :cond_1

    .line 252
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 253
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iget v6, v4, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 254
    iget-object v1, v4, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 255
    .local v1, "input":Ljava/io/InputStream;
    invoke-static {p0, v5, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 261
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    if-eqz v4, :cond_2

    .line 262
    :try_start_1
    iget-object v6, v4, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v4    # "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    :cond_2
    :goto_1
    move-object v6, v0

    .line 268
    goto :goto_0

    .line 257
    .restart local v4    # "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    :catch_0
    move-exception v6

    .line 261
    if-eqz v4, :cond_2

    .line 262
    :try_start_2
    iget-object v6, v4, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 264
    :catch_1
    move-exception v6

    goto :goto_1

    .line 260
    :catchall_0
    move-exception v6

    .line 261
    if-eqz v4, :cond_3

    .line 262
    :try_start_3
    iget-object v7, v4, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 265
    :cond_3
    :goto_2
    throw v6

    .line 264
    :catch_2
    move-exception v7

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_1
.end method

.method public loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/content/res/OpResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    iget-object v7, p0, Landroid/content/res/OpResources;->mThemeResources:Landroid/content/res/OpThemeResources;

    if-eqz v7, :cond_2

    .line 91
    iget-object v7, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "path":Ljava/lang/String;
    iget-object v7, p0, Landroid/content/res/OpResources;->mThemeResources:Landroid/content/res/OpThemeResources;

    iget v8, p1, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {p0, v8}, Landroid/content/res/OpResources;->getCookieType(I)I

    move-result v8

    invoke-virtual {v7, v8, v5}, Landroid/content/res/OpThemeResources;->getThemeFileStream(ILjava/lang/String;)Landroid/content/res/OpThemeZipFile$ThemeFileInfo;

    move-result-object v6

    .line 97
    .local v6, "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    if-nez v6, :cond_0

    .line 98
    iget-object v7, p0, Landroid/content/res/OpResources;->mSkipFiles:Landroid/util/SparseArray;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, p2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 124
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 107
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    :cond_0
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 108
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    iget v7, v6, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 109
    iget-object v2, v6, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 110
    .local v2, "input":Ljava/io/InputStream;
    const-string v7, ".9.png"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 112
    :cond_1
    invoke-static {p0, p1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 117
    if-eqz v6, :cond_2

    .line 118
    :try_start_1
    iget-object v7, v6, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    :cond_2
    :goto_1
    move-object v1, v0

    .line 124
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 113
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "themeFileInfo":Landroid/content/res/OpThemeZipFile$ThemeFileInfo;
    :catch_0
    move-exception v3

    .line 114
    .local v3, "localOutOfMemoryError":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v7, "OpResources"

    const-string/jumbo v8, "out of memory !!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    if-eqz v6, :cond_2

    .line 118
    :try_start_3
    iget-object v7, v6, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 120
    :catch_1
    move-exception v7

    goto :goto_1

    .line 116
    .end local v3    # "localOutOfMemoryError":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v7

    .line 117
    if-eqz v6, :cond_3

    .line 118
    :try_start_4
    iget-object v8, v6, Landroid/content/res/OpThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 121
    :cond_3
    :goto_2
    throw v7

    .line 120
    :catch_2
    move-exception v8

    goto :goto_2

    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v7

    goto :goto_1
.end method
