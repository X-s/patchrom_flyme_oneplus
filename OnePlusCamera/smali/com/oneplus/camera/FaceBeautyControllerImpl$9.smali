.class Lcom/oneplus/camera/FaceBeautyControllerImpl$9;
.super Ljava/lang/Object;
.source "FaceBeautyControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/FaceBeautyControllerImpl;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/FaceBeautyControllerImpl;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/FaceBeautyControllerImpl;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/FaceBeautyControllerImpl;
    .param p2, "val$camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl$9;->this$0:Lcom/oneplus/camera/FaceBeautyControllerImpl;

    iput-object p2, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl$9;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl$9;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_FACE_BEAUTY_VALUE_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl$9;->this$0:Lcom/oneplus/camera/FaceBeautyControllerImpl;

    iget-object v2, v2, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_FaceBeautyValuesChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 386
    iget-object v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl$9;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_FACE_BEAUTY_DEFAULT_VALUE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl$9;->this$0:Lcom/oneplus/camera/FaceBeautyControllerImpl;

    iget-object v2, v2, Lcom/oneplus/camera/FaceBeautyControllerImpl;->m_FaceBeautyDefaultValueChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 389
    iget-object v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl$9;->this$0:Lcom/oneplus/camera/FaceBeautyControllerImpl;

    const/16 v1, 0x2711

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    .line 390
    iget-object v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl$9;->this$0:Lcom/oneplus/camera/FaceBeautyControllerImpl;

    const/16 v1, 0x2712

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;I)Z

    .line 382
    return-void
.end method
