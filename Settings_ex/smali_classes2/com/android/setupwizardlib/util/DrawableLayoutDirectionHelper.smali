.class public Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;
.super Ljava/lang/Object;
.source "DrawableLayoutDirectionHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIII)Landroid/graphics/drawable/InsetDrawable;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "insetStart"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetEnd"    # I
    .param p4, "insetBottom"    # I
    .param p5, "layoutDirection"    # I

    .prologue
    const/4 v5, 0x1

    .line 66
    if-ne p5, v5, :cond_0

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 65
    invoke-static/range {v0 .. v5}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIIZ)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/content/Context;)Landroid/graphics/drawable/InsetDrawable;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "insetStart"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetEnd"    # I
    .param p4, "insetBottom"    # I
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v5, 0x0

    .line 49
    .local v5, "isRtl":Z
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 51
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    .line 52
    .local v6, "layoutDirection":I
    const/4 v0, 0x1

    if-ne v6, v0, :cond_1

    const/4 v5, 0x1

    .end local v6    # "layoutDirection":I
    :cond_0
    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 54
    invoke-static/range {v0 .. v5}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIIZ)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    return-object v0

    .line 52
    .restart local v6    # "layoutDirection":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "insetStart"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetEnd"    # I
    .param p4, "insetBottom"    # I
    .param p5, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 37
    invoke-virtual {p5}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v5, :cond_0

    .local v5, "isRtl":Z
    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 38
    invoke-static/range {v0 .. v5}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIIZ)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    return-object v0

    .end local v5    # "isRtl":Z
    :cond_0
    move v5, v0

    .line 37
    goto :goto_0

    :cond_1
    move v5, v0

    .line 36
    goto :goto_0
.end method

.method private static createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIIZ)Landroid/graphics/drawable/InsetDrawable;
    .locals 6
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "insetStart"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetEnd"    # I
    .param p4, "insetBottom"    # I
    .param p5, "isRtl"    # Z

    .prologue
    .line 71
    if-eqz p5, :cond_0

    .line 72
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move-object v1, p0

    move v2, p3

    move v3, p2

    move v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0

    .line 74
    :cond_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0
.end method
