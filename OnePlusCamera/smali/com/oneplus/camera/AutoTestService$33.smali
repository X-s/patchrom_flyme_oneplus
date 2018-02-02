.class Lcom/oneplus/camera/AutoTestService$33;
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


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/AutoTestService;

    .prologue
    .line 1760
    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$33;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$33;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get16(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/scene/SceneManager;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/scene/SceneManager;->setScene(Lcom/oneplus/camera/scene/Scene;I)Z

    .line 1763
    return-void
.end method
