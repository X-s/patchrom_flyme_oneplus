.class Lcom/oneplus/camera/CameraActivity$16;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraActivity;->onBindToCameraThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraActivity;

.field final synthetic val$cameras:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2367
    iput-object p1, p0, Lcom/oneplus/camera/CameraActivity$16;->this$0:Lcom/oneplus/camera/CameraActivity;

    iput-object p2, p0, Lcom/oneplus/camera/CameraActivity$16;->val$cameras:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2371
    iget-object v0, p0, Lcom/oneplus/camera/CameraActivity$16;->this$0:Lcom/oneplus/camera/CameraActivity;

    iget-object v1, p0, Lcom/oneplus/camera/CameraActivity$16;->val$cameras:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->onAvailableCamerasChanged(Ljava/util/List;)V

    .line 2372
    return-void
.end method
