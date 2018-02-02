.class Lcom/oneplus/camera/FaceBeautyControllerImpl$DisableHandle;
.super Lcom/oneplus/base/Handle;
.source "FaceBeautyControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/FaceBeautyControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/FaceBeautyControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/FaceBeautyControllerImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/FaceBeautyControllerImpl;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl$DisableHandle;->this$0:Lcom/oneplus/camera/FaceBeautyControllerImpl;

    .line 65
    const-string/jumbo v0, "Disable Handle"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl$DisableHandle;->this$0:Lcom/oneplus/camera/FaceBeautyControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->-get0(Lcom/oneplus/camera/FaceBeautyControllerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/oneplus/camera/FaceBeautyControllerImpl$DisableHandle;->this$0:Lcom/oneplus/camera/FaceBeautyControllerImpl;

    invoke-static {v0}, Lcom/oneplus/camera/FaceBeautyControllerImpl;->-wrap3(Lcom/oneplus/camera/FaceBeautyControllerImpl;)V

    .line 70
    :cond_0
    return-void
.end method
