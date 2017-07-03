.class Lcom/oneplus/screenshot/GlobalScreenshot$5;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$5;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 830
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$5;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1200(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 831
    const-string v1, "Longshot.GlobalScreenshot"

    const-string v2, "mScreenBitmap is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :goto_0
    return-void

    .line 837
    :cond_0
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$5;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$700(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 838
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "oem_screenshot_sound_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 839
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$5;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;
    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1500(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/media/MediaActionSound;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaActionSound;->play(I)V

    .line 842
    :cond_1
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$5;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 843
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$5;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->buildLayer()V

    .line 844
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$5;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    # getter for: Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
