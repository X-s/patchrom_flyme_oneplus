.class Lcom/oneplus/camera/AutoTestService$32;
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

.field final synthetic val$flashMode:Lcom/oneplus/camera/FlashMode;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/camera/FlashMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;
    .param p2, "val$flashMode"    # Lcom/oneplus/camera/FlashMode;

    .prologue
    .line 1741
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$32;->this$0:Lcom/oneplus/camera/AutoTestService;

    iput-object p2, p0, Lcom/oneplus/camera/AutoTestService$32;->val$flashMode:Lcom/oneplus/camera/FlashMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$32;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get9(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/FlashController;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService$32;->val$flashMode:Lcom/oneplus/camera/FlashMode;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/FlashController;->setFlashMode(Lcom/oneplus/camera/FlashMode;I)V

    .line 1744
    return-void
.end method
