.class public Lcom/android/settings_ex/deviceinfo/StorageItemPreference;
.super Lcom/android/settings_ex/ui/OPStorageItemPreference;
.source "StorageItemPreference.java"


# instance fields
.field public final color:I

.field public final userHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "titleRes"    # I
    .param p3, "colorRes"    # I

    .prologue
    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "colorRes"    # I
    .param p4, "userHandle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPStorageItemPreference;-><init>(Landroid/content/Context;)V

    .line 43
    if-eqz p3, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 47
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f0d0003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 48
    .local v2, "width":I
    const v3, 0x7f0d0004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 49
    .local v0, "height":I
    iget v3, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color:I

    invoke-static {v2, v0, v3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 54
    .end local v0    # "height":I
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "width":I
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    const v3, 0x7f0904d6

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 57
    iput p4, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->userHandle:I

    .line 58
    return-void

    .line 51
    :cond_0
    const v3, -0xff01

    iput v3, p0, Lcom/android/settings_ex/deviceinfo/StorageItemPreference;->color:I

    goto :goto_0
.end method

.method private static createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "color"    # I

    .prologue
    .line 61
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 62
    .local v0, "shape":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 63
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 64
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    return-object v0
.end method
