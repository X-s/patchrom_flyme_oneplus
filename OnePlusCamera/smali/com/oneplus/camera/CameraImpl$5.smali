.class Lcom/oneplus/camera/CameraImpl$5;
.super Ljava/lang/Object;
.source "CameraImpl.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraImpl;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/oneplus/camera/CameraImpl$5;->this$0:Lcom/oneplus/camera/CameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/oneplus/camera/CameraImpl$5;->this$0:Lcom/oneplus/camera/CameraImpl;

    invoke-static {v0}, Lcom/oneplus/camera/CameraImpl;->-wrap12(Lcom/oneplus/camera/CameraImpl;)V

    .line 237
    return-void
.end method
