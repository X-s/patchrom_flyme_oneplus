.class Lcom/oneplus/camera/CameraThread$14;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/CameraThread;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/CameraThread;

.field final synthetic val$builders:[Lcom/oneplus/base/component/ComponentBuilder;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraThread;[Lcom/oneplus/base/component/ComponentBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/CameraThread;
    .param p2, "val$builders"    # [Lcom/oneplus/base/component/ComponentBuilder;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$14;->this$0:Lcom/oneplus/camera/CameraThread;

    iput-object p2, p0, Lcom/oneplus/camera/CameraThread$14;->val$builders:[Lcom/oneplus/base/component/ComponentBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 779
    iget-object v0, p0, Lcom/oneplus/camera/CameraThread$14;->this$0:Lcom/oneplus/camera/CameraThread;

    invoke-static {v0}, Lcom/oneplus/camera/CameraThread;->-get1(Lcom/oneplus/camera/CameraThread;)Lcom/oneplus/base/component/ComponentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/CameraThread$14;->val$builders:[Lcom/oneplus/base/component/ComponentBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oneplus/camera/CameraThread$14;->this$0:Lcom/oneplus/camera/CameraThread;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    .line 777
    return-void
.end method
