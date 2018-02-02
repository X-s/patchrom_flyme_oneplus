.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$15;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/gallery2/media/MediaEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

.field final synthetic val$cameraActivity:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;
    .param p2, "val$cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$15;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    iput-object p2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$15;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p2, "key"    # Lcom/oneplus/base/EventKey;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 1061
    check-cast p3, Lcom/oneplus/gallery2/media/MediaEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$15;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery2/media/MediaEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery2/media/MediaEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/gallery2/media/MediaEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery2/media/MediaEventArgs;",
            ">;",
            "Lcom/oneplus/gallery2/media/MediaEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1064
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/gallery2/media/MediaEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$15;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInitialize() - Latest media updated"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$15;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-virtual {p3}, Lcom/oneplus/gallery2/media/MediaEventArgs;->getMedia()Lcom/oneplus/gallery2/media/Media;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap5(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/gallery2/media/Media;)V

    .line 1070
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$15;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get2(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Lcom/oneplus/camera/ui/CameraGallery;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/CameraGallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-eq v0, v1, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$15;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    if-ne v0, v1, :cond_1

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$15;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set6(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 1074
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$15;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap6(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)V

    .line 1061
    :cond_1
    return-void
.end method
