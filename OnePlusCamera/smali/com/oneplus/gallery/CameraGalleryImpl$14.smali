.class Lcom/oneplus/gallery/CameraGalleryImpl$14;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

.field final synthetic val$cameraActivity:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 2276
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2279
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2281
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/camera/media/MediaList;
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1000(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/media/MediaList;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/camera/media/MediaList;->release()V

    .line 2282
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingImages()V
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$6300(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 2283
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->val$cameraActivity:Lcom/oneplus/camera/CameraActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oneplus/camera/media/MediaListManager;->createMediaList(Landroid/content/Context;I)Lcom/oneplus/camera/media/MediaList;

    move-result-object v1

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/camera/media/MediaList;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1002(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/media/MediaList;)Lcom/oneplus/camera/media/MediaList;

    .line 2284
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/camera/media/MediaList;
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1000(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/media/MediaList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2286
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/camera/media/MediaList;
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1000(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/media/MediaList;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/MediaList;->EVENT_CHANGED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$14;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaChangeEventHandler:Lcom/oneplus/base/EventHandler;
    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$8400(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/EventHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2289
    :cond_0
    return-void
.end method
