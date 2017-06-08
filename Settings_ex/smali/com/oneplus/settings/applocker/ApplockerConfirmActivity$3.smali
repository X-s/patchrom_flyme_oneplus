.class Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$3;
.super Ljava/lang/Object;
.source "ApplockerConfirmActivity.java"

# interfaces
.implements Landroid/support/v7/graphics/Palette$PaletteAsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getColorAndSetBackground(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$3;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenerated(Landroid/support/v7/graphics/Palette;)V
    .locals 5
    .param p1, "palette"    # Landroid/support/v7/graphics/Palette;

    .prologue
    .line 270
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v1

    .line 271
    .local v1, "vibrant":Landroid/support/v7/graphics/Palette$Swatch;
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v0

    .line 274
    .local v0, "color":I
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$3;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;

    invoke-virtual {v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$3;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;

    # getter for: Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mBackgroundMaskColor:I
    invoke-static {v4}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->access$300(Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/oneplus/settings/utils/OPUtils;->compositeColor(II)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$3;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;

    invoke-virtual {v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$3;->this$0:Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;

    invoke-virtual {v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 280
    .end local v0    # "color":I
    :cond_0
    return-void
.end method
