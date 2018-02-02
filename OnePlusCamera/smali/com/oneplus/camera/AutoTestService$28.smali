.class Lcom/oneplus/camera/AutoTestService$28;
.super Ljava/lang/Object;
.source "AutoTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AutoTestService;->setStringState(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AutoTestService;

.field final synthetic val$lensFacing:Lcom/oneplus/camera/Camera$LensFacing;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/Camera$LensFacing;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;
    .param p2, "val$lensFacing"    # Lcom/oneplus/camera/Camera$LensFacing;

    .prologue
    .line 1601
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$28;->this$0:Lcom/oneplus/camera/AutoTestService;

    iput-object p2, p0, Lcom/oneplus/camera/AutoTestService$28;->val$lensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$28;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get2(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/OPCameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService$28;->val$lensFacing:Lcom/oneplus/camera/Camera$LensFacing;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/OPCameraActivity;->switchCamera(Lcom/oneplus/camera/Camera$LensFacing;)Z

    .line 1604
    return-void
.end method
