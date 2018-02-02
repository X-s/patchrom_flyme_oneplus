.class Lcom/oneplus/camera/AutoTestService$14;
.super Ljava/lang/Object;
.source "AutoTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AutoTestService;->performAction(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AutoTestService;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$14;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$14;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get18(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/CaptureHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1269
    return-void
.end method
