.class Lcom/oneplus/camera/ProxyComponent$2;
.super Ljava/lang/Object;
.source "ProxyComponent.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ProxyComponent;->bindToTarget()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ProxyComponent;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ProxyComponent;)V
    .locals 0

    .prologue
    .line 145
    .local p1, "this$0":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    iput-object p1, p0, Lcom/oneplus/camera/ProxyComponent$2;->this$0:Lcom/oneplus/camera/ProxyComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent$2;->this$0:Lcom/oneplus/camera/ProxyComponent;

    invoke-static {v0}, Lcom/oneplus/camera/ProxyComponent;->-wrap2(Lcom/oneplus/camera/ProxyComponent;)V

    .line 148
    return-void
.end method
