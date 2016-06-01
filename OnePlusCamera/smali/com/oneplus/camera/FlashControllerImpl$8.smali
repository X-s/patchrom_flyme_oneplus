.class Lcom/oneplus/camera/FlashControllerImpl$8;
.super Ljava/lang/Object;
.source "FlashControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/FlashControllerImpl;->setFlashMode(Lcom/oneplus/camera/FlashMode;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/FlashControllerImpl;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;

.field final synthetic val$flashMode:Lcom/oneplus/camera/FlashMode;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/FlashMode;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/oneplus/camera/FlashControllerImpl$8;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    iput-object p2, p0, Lcom/oneplus/camera/FlashControllerImpl$8;->val$camera:Lcom/oneplus/camera/Camera;

    iput-object p3, p0, Lcom/oneplus/camera/FlashControllerImpl$8;->val$flashMode:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/FlashControllerImpl$8;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_FLASH_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/FlashControllerImpl$8;->val$flashMode:Lcom/oneplus/camera/FlashMode;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 312
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/oneplus/camera/FlashControllerImpl$8;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    # getter for: Lcom/oneplus/camera/FlashControllerImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/camera/FlashControllerImpl;->access$1300(Lcom/oneplus/camera/FlashControllerImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setFlashMode() - Fail to set flash mode"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
