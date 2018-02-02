.class Lcom/oneplus/camera/AutoTestService$8;
.super Ljava/lang/Object;
.source "AutoTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AutoTestService;->attachToActivity(Lcom/oneplus/camera/CameraActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AutoTestService;

.field final synthetic val$activity:Lcom/oneplus/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/CameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;
    .param p2, "val$activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$8;->this$0:Lcom/oneplus/camera/AutoTestService;

    iput-object p2, p0, Lcom/oneplus/camera/AutoTestService$8;->val$activity:Lcom/oneplus/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$8;->this$0:Lcom/oneplus/camera/AutoTestService;

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService$8;->val$activity:Lcom/oneplus/camera/CameraActivity;

    invoke-static {v0, v1}, Lcom/oneplus/camera/AutoTestService;->-wrap13(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/CameraActivity;)V

    .line 379
    return-void
.end method
