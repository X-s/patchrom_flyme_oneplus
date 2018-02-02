.class final Lcom/oneplus/camera/ui/FaceBeautyUI$ProgressDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "FaceBeautyUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/FaceBeautyUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProgressDrawable"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 111
    new-instance v1, Lcom/oneplus/camera/ui/FaceBeautyUI$BaseProgressDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/camera/ui/FaceBeautyUI$BaseProgressDrawable;-><init>(Landroid/content/Context;I)V

    aput-object v1, v0, v6

    .line 112
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    new-instance v2, Lcom/oneplus/camera/ui/FaceBeautyUI$BaseProgressDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/oneplus/camera/ui/FaceBeautyUI$BaseProgressDrawable;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v1, v0, v5

    .line 110
    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 114
    const/high16 v0, 0x1020000

    invoke-virtual {p0, v6, v0}, Lcom/oneplus/camera/ui/FaceBeautyUI$ProgressDrawable;->setId(II)V

    .line 115
    const v0, 0x102000d

    invoke-virtual {p0, v5, v0}, Lcom/oneplus/camera/ui/FaceBeautyUI$ProgressDrawable;->setId(II)V

    .line 108
    return-void
.end method
