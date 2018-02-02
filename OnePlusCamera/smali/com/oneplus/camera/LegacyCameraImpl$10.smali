.class Lcom/oneplus/camera/LegacyCameraImpl$10;
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
    .param p1, "this$0"    # Lcom/oneplus/camera/LegacyCameraImpl;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl$10;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 375
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onAEChanged"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    aget-object v3, p3, v5

    instance-of v3, v3, [I

    if-eqz v3, :cond_1

    .line 379
    aget-object v2, p3, v5

    check-cast v2, [I

    .line 380
    .local v2, "states":[I
    aget v0, v2, v5

    .line 381
    .local v0, "aeState":I
    const/4 v3, 0x1

    aget v1, v2, v3

    .line 382
    .local v1, "hdrState":I
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl$10;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-static {v3}, Lcom/oneplus/camera/LegacyCameraImpl;->-get0(Lcom/oneplus/camera/LegacyCameraImpl;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "applyAeCallback() - On AE changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", On HDR changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl$10;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-static {v3, v1}, Lcom/oneplus/camera/LegacyCameraImpl;->-wrap3(Lcom/oneplus/camera/LegacyCameraImpl;I)V

    .line 385
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl$10;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-static {v3, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->-wrap0(Lcom/oneplus/camera/LegacyCameraImpl;I)V

    .line 394
    .end local v0    # "aeState":I
    .end local v1    # "hdrState":I
    .end local v2    # "states":[I
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 387
    :cond_1
    aget-object v3, p3, v5

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 389
    aget-object v3, p3, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 390
    .restart local v0    # "aeState":I
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl$10;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-static {v3}, Lcom/oneplus/camera/LegacyCameraImpl;->-get0(Lcom/oneplus/camera/LegacyCameraImpl;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "applyAeCallback() - On AE changed: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    iget-object v3, p0, Lcom/oneplus/camera/LegacyCameraImpl$10;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-static {v3, v0}, Lcom/oneplus/camera/LegacyCameraImpl;->-wrap0(Lcom/oneplus/camera/LegacyCameraImpl;I)V

    goto :goto_0
.end method
