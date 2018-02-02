.class Lcom/oneplus/camera/AutoTestService$10;
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
    .line 1189
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$10;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$10;->this$0:Lcom/oneplus/camera/AutoTestService;

    iget-object v1, p0, Lcom/oneplus/camera/AutoTestService$10;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v1}, Lcom/oneplus/camera/AutoTestService;->-get10(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/FocusController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/oneplus/camera/FocusController;->lockFocus(I)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/AutoTestService;->-set0(Lcom/oneplus/camera/AutoTestService;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1192
    return-void
.end method
