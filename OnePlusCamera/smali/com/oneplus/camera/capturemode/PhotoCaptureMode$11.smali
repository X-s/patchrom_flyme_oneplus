.class Lcom/oneplus/camera/capturemode/PhotoCaptureMode$11;
.super Ljava/lang/Object;
.source "PhotoCaptureMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/capturemode/PhotoCaptureMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/capturemode/PhotoCaptureMode;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$11;->this$0:Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oneplus/camera/capturemode/PhotoCaptureMode$11;->this$0:Lcom/oneplus/camera/capturemode/PhotoCaptureMode;

    invoke-static {v0}, Lcom/oneplus/camera/capturemode/PhotoCaptureMode;->-wrap10(Lcom/oneplus/camera/capturemode/PhotoCaptureMode;)V

    .line 161
    return-void
.end method
