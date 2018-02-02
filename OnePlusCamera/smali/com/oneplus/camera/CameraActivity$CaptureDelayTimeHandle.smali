.class final Lcom/oneplus/camera/CameraActivity$CaptureDelayTimeHandle;
.super Lcom/oneplus/base/Handle;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CaptureDelayTimeHandle"
.end annotation


# instance fields
.field public final delayTimeMillis:J

.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/CameraActivity;J)V
    .locals 2
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraActivity;
    .param p2, "delayTimeMillis"    # J

    .prologue
    .line 908
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$CaptureDelayTimeHandle;->this$0:Lcom/oneplus/camera/CameraActivity;

    .line 910
    const-string/jumbo v0, "CaptureDelayTime"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 911
    iput-wide p2, p0, Lcom/oneplus/camera/CameraActivity$CaptureDelayTimeHandle;->delayTimeMillis:J

    .line 908
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 918
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$CaptureDelayTimeHandle;->this$0:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v0, p0}, Lcom/oneplus/camera/CameraActivity;->-wrap2(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/camera/CameraActivity$CaptureDelayTimeHandle;)V

    .line 916
    return-void
.end method
