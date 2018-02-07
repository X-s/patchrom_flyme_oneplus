.class public Lcom/android/settings_exlib/drawable/UserIcons;
.super Ljava/lang/Object;
.source "UserIcons.java"


# static fields
.field private static final USER_ICON_COLORS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 38
    const-string/jumbo v1, "#FFCC6F4E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 39
    const-string/jumbo v1, "#FFEB9413"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 40
    const-string/jumbo v1, "#FF8BC34A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 41
    const-string/jumbo v1, "#FF673AB7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 42
    const-string/jumbo v1, "#FF02BCD4"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 43
    const-string/jumbo v1, "#FFE91E63"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 44
    const-string/jumbo v1, "#FF9C27B0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 37
    sput-object v0, Lcom/android/settings_exlib/drawable/UserIcons;->USER_ICON_COLORS:[I

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 50
    if-nez p0, :cond_0

    .line 51
    return-object v4

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 54
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 55
    .local v2, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 57
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v5, v5, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 59
    return-object v0
.end method

.method public static getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "userId"    # I
    .param p1, "light"    # Z

    .prologue
    const/4 v5, 0x0

    .line 70
    if-eqz p1, :cond_1

    const-string/jumbo v2, "#FFFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, "colorResId":I
    :goto_0
    const/16 v2, -0x2710

    if-eq p0, v2, :cond_0

    .line 73
    if-nez p0, :cond_2

    .line 74
    const-string/jumbo v2, "#FF2196F3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 79
    :cond_0
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10802e6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 80
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 81
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    return-object v1

    .line 70
    .end local v0    # "colorResId":I
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const-string/jumbo v2, "#FF9E9E9E"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "colorResId":I
    goto :goto_0

    .line 76
    :cond_2
    sget-object v2, Lcom/android/settings_exlib/drawable/UserIcons;->USER_ICON_COLORS:[I

    sget-object v3, Lcom/android/settings_exlib/drawable/UserIcons;->USER_ICON_COLORS:[I

    array-length v3, v3

    rem-int v3, p0, v3

    aget v0, v2, v3

    goto :goto_1
.end method
