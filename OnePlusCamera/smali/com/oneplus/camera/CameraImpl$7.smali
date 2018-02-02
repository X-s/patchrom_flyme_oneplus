.class Lcom/oneplus/camera/CameraImpl$7;
.super Ljava/lang/Object;
.source "CameraImpl.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraImpl;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl$7;->this$0:Lcom/oneplus/camera/CameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 262
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 270
    :goto_0
    if-eqz v1, :cond_0

    .line 271
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/camera/CameraImpl$7;->this$0:Lcom/oneplus/camera/CameraImpl;

    invoke-static {v2, v1}, Lcom/oneplus/camera/CameraImpl;->-wrap13(Lcom/oneplus/camera/CameraImpl;Landroid/media/Image;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :cond_0
    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 257
    :cond_1
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .local v1, "image":Landroid/media/Image;
    goto :goto_0

    .line 275
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "image":Landroid/media/Image;
    :catchall_0
    move-exception v2

    .line 276
    if-eqz v1, :cond_2

    .line 277
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 275
    :cond_2
    throw v2
.end method
