.class Lcom/oneplus/camera/LegacyCameraImpl$10;
.super Lcom/oneplus/base/Handle;
.source "LegacyCameraImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/LegacyCameraImpl;->capture(II)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/LegacyCameraImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/LegacyCameraImpl;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 800
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl$10;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 804
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl$10;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    const/4 v1, 0x1

    # invokes: Lcom/oneplus/camera/LegacyCameraImpl;->stopCaptureInternal(Z)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->access$1100(Lcom/oneplus/camera/LegacyCameraImpl;Z)V

    .line 805
    return-void
.end method
