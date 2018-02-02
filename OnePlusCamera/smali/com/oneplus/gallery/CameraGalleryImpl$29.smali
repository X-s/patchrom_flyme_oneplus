.class Lcom/oneplus/gallery/CameraGalleryImpl$29;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->playVideoPageDirectly(Lcom/oneplus/gallery2/media/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 4761
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$29;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Lcom/oneplus/base/Handle;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 4766
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$29;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get3(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onActivityResult() - Back from secure video player"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4767
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$29;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get31(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 4764
    return-void
.end method
