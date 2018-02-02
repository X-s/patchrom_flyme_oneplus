.class Lcom/oneplus/camera/LegacyCameraImpl$9;
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
    .param p1, "this$0"    # Lcom/oneplus/camera/LegacyCameraImpl;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl$9;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl$9;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-static {v0}, Lcom/oneplus/camera/LegacyCameraImpl;->-wrap17(Lcom/oneplus/camera/LegacyCameraImpl;)V

    .line 266
    return-void
.end method
