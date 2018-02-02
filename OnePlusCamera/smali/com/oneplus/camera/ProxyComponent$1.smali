.class Lcom/oneplus/camera/ProxyComponent$1;
.super Ljava/lang/Object;
.source "ProxyComponent.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ProxyComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<TTTarget;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ProxyComponent;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ProxyComponent;)V
    .locals 0

    .prologue
    .line 49
    .local p1, "this$0":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    iput-object p1, p0, Lcom/oneplus/camera/ProxyComponent$1;->this$0:Lcom/oneplus/camera/ProxyComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTTarget;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "component":Lcom/oneplus/base/component/Component;, "TTTarget;"
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent$1;->this$0:Lcom/oneplus/camera/ProxyComponent;

    invoke-static {v0, p1}, Lcom/oneplus/camera/ProxyComponent;->-wrap3(Lcom/oneplus/camera/ProxyComponent;Lcom/oneplus/base/component/Component;)V

    .line 52
    return-void
.end method
