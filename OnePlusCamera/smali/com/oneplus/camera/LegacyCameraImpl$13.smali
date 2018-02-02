.class Lcom/oneplus/camera/LegacyCameraImpl$13;
.super Ljava/lang/Object;
.source "LegacyCameraImpl.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/LegacyCameraImpl;->applyProcessCallback(Z)Z
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
    .line 1066
    iput-object p1, p0, Lcom/oneplus/camera/LegacyCameraImpl$13;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1071
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onProcess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/oneplus/camera/LegacyCameraImpl$13;->this$0:Lcom/oneplus/camera/LegacyCameraImpl;

    invoke-static {v0}, Lcom/oneplus/camera/LegacyCameraImpl;->-wrap15(Lcom/oneplus/camera/LegacyCameraImpl;)V

    .line 1075
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
