.class Lcom/oneplus/camera/scene/AutoHdrScene$1;
.super Ljava/lang/Object;
.source "AutoHdrScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/scene/AutoHdrScene;->onCameraChanged(Lcom/oneplus/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/scene/AutoHdrScene;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/scene/AutoHdrScene;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/scene/AutoHdrScene;
    .param p2, "val$camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/oneplus/camera/scene/AutoHdrScene$1;->this$0:Lcom/oneplus/camera/scene/AutoHdrScene;

    iput-object p2, p0, Lcom/oneplus/camera/scene/AutoHdrScene$1;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v0, p0, Lcom/oneplus/camera/scene/AutoHdrScene$1;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_AUTO_HDR_STATUS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/scene/AutoHdrScene$1$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/scene/AutoHdrScene$1$1;-><init>(Lcom/oneplus/camera/scene/AutoHdrScene$1;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 128
    iget-object v0, p0, Lcom/oneplus/camera/scene/AutoHdrScene$1;->this$0:Lcom/oneplus/camera/scene/AutoHdrScene;

    iget-object v1, p0, Lcom/oneplus/camera/scene/AutoHdrScene$1;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_AUTO_HDR_STATUS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-static {v0, v2, v3, v3, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/oneplus/camera/scene/AutoHdrScene$1;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/scene/AutoHdrScene$1$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/scene/AutoHdrScene$1$2;-><init>(Lcom/oneplus/camera/scene/AutoHdrScene$1;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 117
    return-void
.end method
