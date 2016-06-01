.class Lcom/oneplus/camera/LegacyCameraImpl$8;
.super Ljava/lang/Object;
.source "LegacyCameraImpl.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


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

    .prologue
    .line 170
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl$8;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl$8;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    # invokes: Lcom/oneplus/camera/LegacyCameraImpl;->onShutterReceived()V
    invoke-static {v0}, Lcom/oneplus/camera/LegacyCameraImpl;->access$800(Lcom/oneplus/camera/LegacyCameraImpl;)V

    .line 175
    return-void
.end method
