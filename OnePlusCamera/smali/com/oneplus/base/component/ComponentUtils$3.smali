.class final Lcom/oneplus/base/component/ComponentUtils$3;
.super Ljava/lang/Object;
.source "ComponentUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/oneplus/base/component/ComponentSearchCallback;

.field final synthetic val$callbackTarget:Lcom/oneplus/base/HandlerObject;

.field final synthetic val$componentType:Ljava/lang/Class;

.field final synthetic val$owner:Lcom/oneplus/base/component/ComponentOwner;


# direct methods
.method constructor <init>(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)V
    .locals 0
    .param p1, "val$owner"    # Lcom/oneplus/base/component/ComponentOwner;
    .param p3, "val$callbackTarget"    # Lcom/oneplus/base/HandlerObject;

    .prologue
    .line 86
    .local p2, "val$componentType":Ljava/lang/Class;, "Ljava/lang/Class<TTComponent;>;"
    .local p4, "val$callback":Lcom/oneplus/base/component/ComponentSearchCallback;, "Lcom/oneplus/base/component/ComponentSearchCallback<TTComponent;>;"
    iput-object p1, p0, Lcom/oneplus/base/component/ComponentUtils$3;->val$owner:Lcom/oneplus/base/component/ComponentOwner;

    iput-object p2, p0, Lcom/oneplus/base/component/ComponentUtils$3;->val$componentType:Ljava/lang/Class;

    iput-object p3, p0, Lcom/oneplus/base/component/ComponentUtils$3;->val$callbackTarget:Lcom/oneplus/base/HandlerObject;

    iput-object p4, p0, Lcom/oneplus/base/component/ComponentUtils$3;->val$callback:Lcom/oneplus/base/component/ComponentSearchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oneplus/base/component/ComponentUtils$3;->val$owner:Lcom/oneplus/base/component/ComponentOwner;

    iget-object v1, p0, Lcom/oneplus/base/component/ComponentUtils$3;->val$componentType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/oneplus/base/component/ComponentUtils$3;->val$callbackTarget:Lcom/oneplus/base/HandlerObject;

    iget-object v3, p0, Lcom/oneplus/base/component/ComponentUtils$3;->val$callback:Lcom/oneplus/base/component/ComponentSearchCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 89
    return-void
.end method
