.class final Lcom/oneplus/camera/ui/CaptureBar$ProgressDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureBar;
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

    .line 699
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 700
    new-instance v1, Lcom/oneplus/camera/ui/CaptureBar$BaseProgressDrawable;

    const v2, 0x7f080041

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/camera/ui/CaptureBar$BaseProgressDrawable;-><init>(Landroid/content/Context;I)V

    aput-object v1, v0, v5

    .line 701
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    new-instance v2, Lcom/oneplus/camera/ui/CaptureBar$BaseProgressDrawable;

    const v3, 0x7f080042

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/oneplus/camera/ui/CaptureBar$BaseProgressDrawable;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v1, v0, v4

    .line 698
    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 703
    const/high16 v0, 0x1020000

    invoke-virtual {p0, v5, v0}, Lcom/oneplus/camera/ui/CaptureBar$ProgressDrawable;->setId(II)V

    .line 704
    const v0, 0x102000d

    invoke-virtual {p0, v4, v0}, Lcom/oneplus/camera/ui/CaptureBar$ProgressDrawable;->setId(II)V

    .line 696
    return-void
.end method
