.class final Lcom/oneplus/base/component/ComponentUtils$1;
.super Ljava/lang/Object;
.source "ComponentUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/component/ComponentUtils;->callComponentSearchCallback(Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;Lcom/oneplus/base/component/Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/oneplus/base/component/ComponentSearchCallback;

.field final synthetic val$component:Lcom/oneplus/base/component/Component;


# direct methods
.method constructor <init>(Lcom/oneplus/base/component/ComponentSearchCallback;Lcom/oneplus/base/component/Component;)V
    .locals 0

    .prologue
    .line 31
    .local p1, "val$callback":Lcom/oneplus/base/component/ComponentSearchCallback;, "Lcom/oneplus/base/component/ComponentSearchCallback<TTComponent;>;"
    .local p2, "val$component":Lcom/oneplus/base/component/Component;, "TTComponent;"
    iput-object p1, p0, Lcom/oneplus/base/component/ComponentUtils$1;->val$callback:Lcom/oneplus/base/component/ComponentSearchCallback;

    iput-object p2, p0, Lcom/oneplus/base/component/ComponentUtils$1;->val$component:Lcom/oneplus/base/component/Component;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentUtils$1;->val$callback:Lcom/oneplus/base/component/ComponentSearchCallback;

    iget-object v1, p0, Lcom/oneplus/base/component/ComponentUtils$1;->val$component:Lcom/oneplus/base/component/Component;

    invoke-interface {v0, v1}, Lcom/oneplus/base/component/ComponentSearchCallback;->onComponentFound(Lcom/oneplus/base/component/Component;)V

    .line 34
    return-void
.end method
