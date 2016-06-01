.class public final Lcom/oneplus/base/component/ComponentUtils;
.super Ljava/lang/Object;
.source "ComponentUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ComponentUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/base/HandlerObject;
    .param p1, "x1"    # Lcom/oneplus/base/component/ComponentSearchCallback;
    .param p2, "x2"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 13
    invoke-static {p0, p1, p2}, Lcom/oneplus/base/component/ComponentUtils;->callComponentSearchCallback(Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;Lcom/oneplus/base/component/Component;)V

    return-void
.end method

.method private static callComponentSearchCallback(Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;Lcom/oneplus/base/component/Component;)V
    .locals 2
    .param p0, "callbackTarget"    # Lcom/oneplus/base/HandlerObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TComponent::",
            "Lcom/oneplus/base/component/Component;",
            ">(",
            "Lcom/oneplus/base/HandlerObject;",
            "Lcom/oneplus/base/component/ComponentSearchCallback",
            "<TTComponent;>;TTComponent;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "callback":Lcom/oneplus/base/component/ComponentSearchCallback;, "Lcom/oneplus/base/component/ComponentSearchCallback<TTComponent;>;"
    .local p2, "component":Lcom/oneplus/base/component/Component;, "TTComponent;"
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 29
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/oneplus/base/HandlerObject;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    :cond_0
    invoke-interface {p1, p2}, Lcom/oneplus/base/component/ComponentSearchCallback;->onComponentFound(Lcom/oneplus/base/component/Component;)V

    .line 43
    :cond_1
    :goto_0
    return-void

    .line 31
    :cond_2
    new-instance v0, Lcom/oneplus/base/component/ComponentUtils$1;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/base/component/ComponentUtils$1;-><init>(Lcom/oneplus/base/component/ComponentSearchCallback;Lcom/oneplus/base/component/Component;)V

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    const-string v0, "ComponentUtils"

    const-string v1, "callComponentSearchCallback() - Fail to perform cross-thread call-back"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z
    .locals 4
    .param p0, "owner"    # Lcom/oneplus/base/component/ComponentOwner;
    .param p2, "callbackTarget"    # Lcom/oneplus/base/HandlerObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TComponent::",
            "Lcom/oneplus/base/component/Component;",
            ">(",
            "Lcom/oneplus/base/component/ComponentOwner;",
            "Ljava/lang/Class",
            "<TTComponent;>;",
            "Lcom/oneplus/base/HandlerObject;",
            "Lcom/oneplus/base/component/ComponentSearchCallback",
            "<TTComponent;>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TTComponent;>;"
    .local p3, "callback":Lcom/oneplus/base/component/ComponentSearchCallback;, "Lcom/oneplus/base/component/ComponentSearchCallback<TTComponent;>;"
    const/4 v1, 0x0

    .line 57
    invoke-interface {p0, p1}, Lcom/oneplus/base/component/ComponentOwner;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    .line 58
    .local v0, "component":Lcom/oneplus/base/component/Component;, "TTComponent;"
    if-eqz v0, :cond_2

    .line 60
    invoke-static {p2, p3, v0}, Lcom/oneplus/base/component/ComponentUtils;->callComponentSearchCallback(Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;Lcom/oneplus/base/component/Component;)V

    .line 61
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/oneplus/base/HandlerObject;->isDependencyThread()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 99
    :cond_1
    :goto_0
    return v1

    .line 65
    :cond_2
    if-eqz p3, :cond_1

    .line 69
    invoke-interface {p0}, Lcom/oneplus/base/component/ComponentOwner;->isDependencyThread()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    sget-object v2, Lcom/oneplus/base/component/ComponentOwner;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v3, Lcom/oneplus/base/component/ComponentUtils$2;

    invoke-direct {v3, p1, p0, p2, p3}, Lcom/oneplus/base/component/ComponentUtils$2;-><init>(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentOwner;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)V

    invoke-interface {p0, v2, v3}, Lcom/oneplus/base/component/ComponentOwner;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    goto :goto_0

    .line 86
    :cond_3
    new-instance v2, Lcom/oneplus/base/component/ComponentUtils$3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/oneplus/base/component/ComponentUtils$3;-><init>(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)V

    invoke-static {p0, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    const-string v2, "ComponentUtils"

    const-string v3, "findComponent() - Fail to find component in owner thread"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
