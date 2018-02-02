.class Lcom/oneplus/camera/AutoTestService$16;
.super Ljava/lang/Object;
.source "AutoTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AutoTestService;->setBooleanState(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AutoTestService;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;
    .param p2, "val$value"    # Z

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$16;->this$0:Lcom/oneplus/camera/AutoTestService;

    iput-boolean p2, p0, Lcom/oneplus/camera/AutoTestService$16;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1332
    iget-boolean v0, p0, Lcom/oneplus/camera/AutoTestService$16;->val$value:Z

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$16;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get8(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/FaceBeautyController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/oneplus/camera/FaceBeautyController;->activate(I)Z

    .line 1331
    :goto_0
    return-void

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$16;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get8(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/FaceBeautyController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/oneplus/camera/FaceBeautyController;->deactivate(I)V

    goto :goto_0
.end method
