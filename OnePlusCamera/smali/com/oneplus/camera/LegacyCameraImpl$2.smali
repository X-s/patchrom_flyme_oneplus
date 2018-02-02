.class Lcom/oneplus/camera/LegacyCameraImpl$2;
.super Ljava/lang/Object;
.source "LegacyCameraImpl.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/LegacyCameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/LegacyCameraImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/LegacyCameraImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/LegacyCameraImpl;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl$2;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "start"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl$2;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-static {v0}, Lcom/oneplus/camera/LegacyCameraImpl;->-get1(Lcom/oneplus/camera/LegacyCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 163
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl$2;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-static {v0, p1}, Lcom/oneplus/camera/LegacyCameraImpl;->-wrap1(Lcom/oneplus/camera/LegacyCameraImpl;Z)V

    .line 160
    :cond_0
    return-void
.end method
