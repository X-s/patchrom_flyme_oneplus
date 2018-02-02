.class Lcom/oneplus/camera/FlashControllerImpl$3;
.super Ljava/lang/Object;
.source "FlashControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/FlashControllerImpl;->attachToCamera(Lcom/oneplus/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/FlashControllerImpl;

.field final synthetic val$camera:Lcom/oneplus/camera/Camera;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/FlashControllerImpl;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/FlashControllerImpl;
    .param p2, "val$camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/oneplus/camera/FlashControllerImpl$3;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    iput-object p2, p0, Lcom/oneplus/camera/FlashControllerImpl$3;->val$camera:Lcom/oneplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/oneplus/camera/FlashControllerImpl$3;->val$camera:Lcom/oneplus/camera/Camera;

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_SCREEN_FLASH_NEEDED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/FlashControllerImpl$3;->this$0:Lcom/oneplus/camera/FlashControllerImpl;

    invoke-static {v2}, Lcom/oneplus/camera/FlashControllerImpl;->-get4(Lcom/oneplus/camera/FlashControllerImpl;)Lcom/oneplus/base/PropertyChangedCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 196
    return-void
.end method
