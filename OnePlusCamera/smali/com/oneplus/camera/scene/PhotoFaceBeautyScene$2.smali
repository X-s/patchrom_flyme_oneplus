.class Lcom/oneplus/camera/scene/PhotoFaceBeautyScene$2;
.super Ljava/lang/Object;
.source "PhotoFaceBeautyScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;->setFaceBeautyValue(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;Lcom/oneplus/camera/Camera;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;
    .param p2, "val$camera"    # Lcom/oneplus/camera/Camera;
    .param p3, "val$value"    # I

    .prologue
    .line 284
    iput-object p1, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene$2;->this$0:Lcom/oneplus/camera/scene/PhotoFaceBeautyScene;

    iput-object p2, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene$2;->val$camera:Lcom/oneplus/camera/Camera;

    iput p3, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene$2;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene$2;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_FACE_BEAUTY_VALUE:Lcom/oneplus/base/PropertyKey;

    iget v2, p0, Lcom/oneplus/camera/scene/PhotoFaceBeautyScene$2;->val$value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 287
    return-void
.end method
