.class Lcom/oneplus/gallery/CameraGalleryImpl$8;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->editPageDirectly(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

.field final synthetic val$mediaInfo:Lcom/oneplus/camera/media/MediaInfo;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/media/MediaInfo;)V
    .locals 0

    .prologue
    .line 1579
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$8;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$8;->val$mediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Lcom/oneplus/base/Handle;ILandroid/content/Intent;)V
    .locals 4
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1585
    packed-switch p2, :pswitch_data_0

    .line 1629
    :cond_0
    :goto_0
    return-void

    .line 1588
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$8;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$7200(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "editPageDirectly() - Result cancel"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1592
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$8;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$7300(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "editPageDirectly() - Result OK"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$8;->val$mediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    invoke-virtual {v2}, Lcom/oneplus/camera/media/MediaInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 1597
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1601
    if-nez p3, :cond_1

    .line 1604
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$8;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->refreshThumbnailImage(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$7400(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 1607
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1608
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$8;->val$mediaInfo:Lcom/oneplus/camera/media/MediaInfo;

    invoke-virtual {v2}, Lcom/oneplus/camera/media/MediaInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1611
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$8;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->refreshThumbnailImage(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$7400(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 1616
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$8;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setPageToContentUri(Landroid/net/Uri;)V
    invoke-static {v2, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$7500(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/net/Uri;)V

    .line 1619
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$GalleryState:[I

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$8;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$7600(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 1622
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$8;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v3, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z
    invoke-static {v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4300(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_0

    .line 1585
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1619
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
    .end packed-switch
.end method
