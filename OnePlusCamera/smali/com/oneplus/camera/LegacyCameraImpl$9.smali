.class Lcom/oneplus/camera/LegacyCameraImpl$9;
.super Ljava/lang/Object;
.source "LegacyCameraImpl.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/LegacyCameraImpl;->applyAeCallback()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/LegacyCameraImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/LegacyCameraImpl;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl$9;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onAEChanged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const/4 v1, 0x0

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 305
    .local v0, "aeState":I
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl$9;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    # getter for: Lcom/oneplus/camera/LegacyCameraImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/camera/LegacyCameraImpl;->access$900(Lcom/oneplus/camera/LegacyCameraImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "applyAeCallback() - On AE changed: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    iget-object v1, p0, Lcom/oneplus/camera/LegacyCameraImpl$9;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    # invokes: Lcom/oneplus/camera/LegacyCameraImpl;->onAeStateChanged(I)V
    invoke-static {v1, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->access$1000(Lcom/oneplus/camera/LegacyCameraImpl;I)V

    .line 308
    .end local v0    # "aeState":I
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
