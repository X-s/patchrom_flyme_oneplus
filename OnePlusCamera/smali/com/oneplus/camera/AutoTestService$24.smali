.class Lcom/oneplus/camera/AutoTestService$24;
.super Ljava/lang/Object;
.source "AutoTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AutoTestService;->setIntState(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AutoTestService;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;
    .param p2, "val$value"    # I

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$24;->this$0:Lcom/oneplus/camera/AutoTestService;

    iput p2, p0, Lcom/oneplus/camera/AutoTestService$24;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$24;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get8(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/FaceBeautyController;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/FaceBeautyController;->PROP_VALUE:Lcom/oneplus/base/PropertyKey;

    iget v2, p0, Lcom/oneplus/camera/AutoTestService$24;->val$value:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/FaceBeautyController;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1503
    return-void
.end method
