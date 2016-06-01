.class public final Lcom/oneplus/base/ScreenSize;
.super Ljava/lang/Object;
.source "ScreenSize.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/oneplus/base/ScreenSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/oneplus/base/ScreenSize;

.field private static volatile NAV_BAR_HEIGHT_RES_ID:I

.field private static volatile STATUS_BAR_HEIGHT_RES_ID:I


# instance fields
.field private m_AspectRatio:Lcom/oneplus/util/AspectRatio;

.field private final m_Height:I

.field private final m_NavBarSize:I

.field private final m_StatusBarSize:I

.field private final m_Width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/oneplus/base/ScreenSize;

    invoke-direct {v0}, Lcom/oneplus/base/ScreenSize;-><init>()V

    sput-object v0, Lcom/oneplus/base/ScreenSize;->EMPTY:Lcom/oneplus/base/ScreenSize;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/oneplus/base/ScreenSize;->m_Width:I

    .line 37
    iput v0, p0, Lcom/oneplus/base/ScreenSize;->m_Height:I

    .line 38
    iput v0, p0, Lcom/oneplus/base/ScreenSize;->m_NavBarSize:I

    .line 39
    iput v0, p0, Lcom/oneplus/base/ScreenSize;->m_StatusBarSize:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "excludeSystemUI"    # Z

    .prologue
    const/4 v7, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 51
    .local v3, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 52
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 53
    .local v2, "size":Landroid/graphics/Point;
    if-eqz p2, :cond_2

    .line 54
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 57
    :goto_0
    iget v4, v2, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/oneplus/base/ScreenSize;->m_Width:I

    .line 58
    iget v4, v2, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/oneplus/base/ScreenSize;->m_Height:I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 62
    .local v1, "res":Landroid/content/res/Resources;
    sget v4, Lcom/oneplus/base/ScreenSize;->NAV_BAR_HEIGHT_RES_ID:I

    if-gtz v4, :cond_0

    .line 63
    const-string v4, "navigation_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/oneplus/base/ScreenSize;->NAV_BAR_HEIGHT_RES_ID:I

    .line 64
    :cond_0
    sget v4, Lcom/oneplus/base/ScreenSize;->NAV_BAR_HEIGHT_RES_ID:I

    if-lez v4, :cond_3

    .line 65
    sget v4, Lcom/oneplus/base/ScreenSize;->NAV_BAR_HEIGHT_RES_ID:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/base/ScreenSize;->m_NavBarSize:I

    .line 70
    :goto_1
    sget v4, Lcom/oneplus/base/ScreenSize;->STATUS_BAR_HEIGHT_RES_ID:I

    if-gtz v4, :cond_1

    .line 71
    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/oneplus/base/ScreenSize;->STATUS_BAR_HEIGHT_RES_ID:I

    .line 72
    :cond_1
    sget v4, Lcom/oneplus/base/ScreenSize;->STATUS_BAR_HEIGHT_RES_ID:I

    if-lez v4, :cond_4

    .line 73
    sget v4, Lcom/oneplus/base/ScreenSize;->STATUS_BAR_HEIGHT_RES_ID:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/base/ScreenSize;->m_StatusBarSize:I

    .line 76
    :goto_2
    return-void

    .line 56
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 67
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_3
    iput v7, p0, Lcom/oneplus/base/ScreenSize;->m_NavBarSize:I

    goto :goto_1

    .line 75
    :cond_4
    iput v7, p0, Lcom/oneplus/base/ScreenSize;->m_StatusBarSize:I

    goto :goto_2
.end method


# virtual methods
.method public compareTo(Lcom/oneplus/base/ScreenSize;)I
    .locals 4
    .param p1, "size"    # Lcom/oneplus/base/ScreenSize;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 85
    iget v2, p0, Lcom/oneplus/base/ScreenSize;->m_Width:I

    iget v3, p0, Lcom/oneplus/base/ScreenSize;->m_Height:I

    mul-int v1, v2, v3

    .line 86
    .local v1, "pixelCount":I
    iget v2, p1, Lcom/oneplus/base/ScreenSize;->m_Width:I

    iget v3, p1, Lcom/oneplus/base/ScreenSize;->m_Height:I

    mul-int v0, v2, v3

    .line 87
    .local v0, "anotherPixelCount":I
    sub-int v2, v1, v0

    .line 89
    .end local v0    # "anotherPixelCount":I
    .end local v1    # "pixelCount":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Lcom/oneplus/base/ScreenSize;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/base/ScreenSize;->compareTo(Lcom/oneplus/base/ScreenSize;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 97
    instance-of v2, p1, Lcom/oneplus/base/ScreenSize;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 99
    check-cast v0, Lcom/oneplus/base/ScreenSize;

    .line 100
    .local v0, "size":Lcom/oneplus/base/ScreenSize;
    iget v2, p0, Lcom/oneplus/base/ScreenSize;->m_Width:I

    iget v3, v0, Lcom/oneplus/base/ScreenSize;->m_Width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/oneplus/base/ScreenSize;->m_Height:I

    iget v3, v0, Lcom/oneplus/base/ScreenSize;->m_Height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 102
    .end local v0    # "size":Lcom/oneplus/base/ScreenSize;
    :cond_0
    return v1
.end method

.method public getAspectRatio()Lcom/oneplus/util/AspectRatio;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oneplus/base/ScreenSize;->m_AspectRatio:Lcom/oneplus/util/AspectRatio;

    if-nez v0, :cond_0

    .line 113
    iget v0, p0, Lcom/oneplus/base/ScreenSize;->m_Width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/base/ScreenSize;->m_Height:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/oneplus/util/AspectRatio;->get(FF)Lcom/oneplus/util/AspectRatio;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/ScreenSize;->m_AspectRatio:Lcom/oneplus/util/AspectRatio;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/ScreenSize;->m_AspectRatio:Lcom/oneplus/util/AspectRatio;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/oneplus/base/ScreenSize;->m_Height:I

    return v0
.end method

.method public getNavigationBarSize()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/oneplus/base/ScreenSize;->m_NavBarSize:I

    return v0
.end method

.method public getStatusBarSize()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/oneplus/base/ScreenSize;->m_StatusBarSize:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/oneplus/base/ScreenSize;->m_Width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 162
    iget v0, p0, Lcom/oneplus/base/ScreenSize;->m_Width:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/oneplus/base/ScreenSize;->m_Height:I

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public isFullHD()Z
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcom/oneplus/base/ScreenSize;->m_Width:I

    iget v1, p0, Lcom/oneplus/base/ScreenSize;->m_Height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x438

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHD()Z
    .locals 2

    .prologue
    .line 182
    iget v0, p0, Lcom/oneplus/base/ScreenSize;->m_Width:I

    iget v1, p0, Lcom/oneplus/base/ScreenSize;->m_Height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toSize()Landroid/util/Size;
    .locals 3

    .prologue
    .line 192
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/oneplus/base/ScreenSize;->m_Width:I

    iget v2, p0, Lcom/oneplus/base/ScreenSize;->m_Height:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, "name":Ljava/lang/String;
    iget v2, p0, Lcom/oneplus/base/ScreenSize;->m_Width:I

    iget v3, p0, Lcom/oneplus/base/ScreenSize;->m_Height:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 202
    .local v0, "minSide":I
    sparse-switch v0, :sswitch_data_0

    .line 211
    :goto_0
    if-eqz v1, :cond_0

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/oneplus/base/ScreenSize;->m_Width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/base/ScreenSize;->m_Height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    :goto_1
    return-object v2

    .line 205
    :sswitch_0
    const-string v1, "Full HD"

    .line 206
    goto :goto_0

    .line 208
    :sswitch_1
    const-string v1, "HD"

    goto :goto_0

    .line 213
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/oneplus/base/ScreenSize;->m_Width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/base/ScreenSize;->m_Height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 202
    :sswitch_data_0
    .sparse-switch
        0x2d0 -> :sswitch_1
        0x438 -> :sswitch_0
    .end sparse-switch
.end method
