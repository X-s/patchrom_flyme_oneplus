.class Lcom/oneplus/camera/LegacyCameraImpl$8;
.super Ljava/lang/Object;
.source "LegacyCameraImpl.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


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
    .line 255
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl$8;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl$8;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/LegacyCameraImpl;->-wrap16(Lcom/oneplus/camera/LegacyCameraImpl;[BLandroid/hardware/Camera;)V

    .line 258
    return-void
.end method
