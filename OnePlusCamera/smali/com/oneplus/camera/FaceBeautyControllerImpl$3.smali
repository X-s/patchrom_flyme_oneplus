.class Lcom/oneplus/camera/FaceBeautyControllerImpl$3;
.super Ljava/lang/Object;
.source "FaceBeautyControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/FaceBeautyControllerImpl;->activate(Lcom/oneplus/camera/Camera;ZI)Z
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
    .line 132
    iput-object p1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl$3;->this$0:Lcom/oneplus/camera/FaceBeautyControllerImpl;

    iput-object p2, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl$3;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl$3;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_SCENE_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 135
    return-void
.end method
