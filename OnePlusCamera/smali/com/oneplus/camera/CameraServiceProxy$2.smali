.class Lcom/oneplus/camera/CameraServiceProxy$2;
.super Lcom/oneplus/base/Handle;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraServiceProxy;->torchFlash()Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraServiceProxy;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraServiceProxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraServiceProxy;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/oneplus/camera/CameraServiceProxy$2;->this$0:Lcom/oneplus/camera/CameraServiceProxy;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/oneplus/camera/CameraServiceProxy$2;->this$0:Lcom/oneplus/camera/CameraServiceProxy;

    sget-object v1, Lcom/oneplus/camera/CameraServiceProxy;->PROP_IS_CONNECTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraServiceProxy;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/oneplus/camera/CameraServiceProxy$2;->this$0:Lcom/oneplus/camera/CameraServiceProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/CameraServiceProxy;->-wrap2(Lcom/oneplus/camera/CameraServiceProxy;Z)V

    .line 190
    :cond_0
    return-void
.end method
