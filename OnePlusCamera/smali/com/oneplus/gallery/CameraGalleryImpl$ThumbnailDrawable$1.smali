.class Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable$1;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable$1;->this$1:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->-wrap0(Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;)V

    .line 451
    return-void
.end method
