.class Lcom/oneplus/gallery/CameraGalleryImpl$7;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;
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

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1075
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$26;->$SwitchMap$com$oneplus$camera$ui$CameraGallery$UIState:[I

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1116
    :goto_0
    :pswitch_0
    return-void

    .line 1079
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingImages()V
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$6300(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 1082
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->resetFilmstripState()V
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$6400(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 1085
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$6500(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1089
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashController:Lcom/oneplus/camera/FlashController;
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$6600(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/FlashController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1090
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    const-class v2, Lcom/oneplus/camera/FlashController;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;
    invoke-static {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$6700(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/FlashController;

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashController:Lcom/oneplus/camera/FlashController;
    invoke-static {v1, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$6602(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/FlashController;)Lcom/oneplus/camera/FlashController;

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashController:Lcom/oneplus/camera/FlashController;
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$6600(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/FlashController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$6800(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1094
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashController:Lcom/oneplus/camera/FlashController;
    invoke-static {v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$6600(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/FlashController;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/FlashController$FlashDisabledReason;->NOT_SUPPORTED_IN_SCENE:Lcom/oneplus/camera/FlashController$FlashDisabledReason;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/FlashController;->disableFlash(Lcom/oneplus/camera/FlashController$FlashDisabledReason;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$6802(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1098
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # getter for: Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/oneplus/camera/ui/CameraGallery$UIState;
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1200(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/ui/CameraGallery$UIState;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v0, v1, :cond_2

    .line 1100
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->resetFilmstripState()V
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$6400(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 1101
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$4300(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    .line 1107
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V
    invoke-static {v0, v4, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$5000(Lcom/oneplus/gallery/CameraGalleryImpl;ZZ)V

    .line 1110
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$6900(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1113
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImages()V
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$7000(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    goto :goto_0

    .line 1104
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$7;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    # invokes: Lcom/oneplus/gallery/CameraGalleryImpl;->resetFilmstripOverScrollState()V
    invoke-static {v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->access$1700(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    goto :goto_1

    .line 1075
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
