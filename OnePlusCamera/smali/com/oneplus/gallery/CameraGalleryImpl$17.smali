.class Lcom/oneplus/gallery/CameraGalleryImpl$17;
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

.field final synthetic val$media:Lcom/oneplus/gallery2/media/Media;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;
    .param p2, "val$media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 2620
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$17;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$17;->val$media:Lcom/oneplus/gallery2/media/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Lcom/oneplus/base/Handle;ILandroid/content/Intent;)V
    .locals 3
    .param p1, "handle"    # Lcom/oneplus/base/Handle;
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 2627
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$17;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get29(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2629
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$17;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$17;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get29(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2630
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$17;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set8(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 2634
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2624
    :goto_0
    return-void

    .line 2637
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$17;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get3(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "editPageDirectly() - Result cancel"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2641
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$17;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get3(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "editPageDirectly() - Result OK"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2642
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$17;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$17;->val$media:Lcom/oneplus/gallery2/media/Media;

    const/4 v2, 0x1

    invoke-static {v0, v1, p3, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap41(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;Landroid/content/Intent;Z)V

    goto :goto_0

    .line 2634
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
