.class final Lcom/oneplus/camera/ui/ZoomBarImpl$ProgressDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "ZoomBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ZoomBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProgressDrawable"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 127
    new-instance v1, Lcom/oneplus/camera/ui/ZoomBarImpl$BaseProgressDrawable;

    const v2, 0x7f080053

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/camera/ui/ZoomBarImpl$BaseProgressDrawable;-><init>(Landroid/content/Context;I)V

    aput-object v1, v0, v5

    .line 128
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    new-instance v2, Lcom/oneplus/camera/ui/ZoomBarImpl$BaseProgressDrawable;

    const v3, 0x7f080008

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/oneplus/camera/ui/ZoomBarImpl$BaseProgressDrawable;-><init>(Landroid/content/Context;I)V

    const v3, 0x800003

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v1, v0, v4

    .line 126
    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 130
    const/high16 v0, 0x1020000

    invoke-virtual {p0, v5, v0}, Lcom/oneplus/camera/ui/ZoomBarImpl$ProgressDrawable;->setId(II)V

    .line 131
    const v0, 0x102000d

    invoke-virtual {p0, v4, v0}, Lcom/oneplus/camera/ui/ZoomBarImpl$ProgressDrawable;->setId(II)V

    .line 124
    return-void
.end method
