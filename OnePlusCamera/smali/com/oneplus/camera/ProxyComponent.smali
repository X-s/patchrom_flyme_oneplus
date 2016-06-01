.class public abstract Lcom/oneplus/camera/ProxyComponent;
.super Lcom/oneplus/camera/CameraComponent;
.source "ProxyComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TTarget::",
        "Lcom/oneplus/base/component/Component;",
        ">",
        "Lcom/oneplus/camera/CameraComponent;"
    }
.end annotation


# static fields
.field private static final MSG_TARGET_EVENT_RAISED:I = -0x2710

.field private static final MSG_TARGET_PROPERTY_CHANGED:I = -0x2711


# instance fields
.field private m_IsBindingToTarget:Z

.field private m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_PendingAsyncMethodCalls:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/ProxyComponent",
            "<TTTarget;>.AsyncMethodCallHandle;>;"
        }
    .end annotation
.end field

.field private m_Target:Lcom/oneplus/base/component/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTTarget;"
        }
    .end annotation
.end field

.field private final m_TargetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TTTarget;>;"
        }
    .end annotation
.end field

.field private m_TargetOwner:Lcom/oneplus/base/component/ComponentOwner;

.field private final m_TargetSearchCallback:Lcom/oneplus/base/component/ComponentSearchCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/component/ComponentSearchCallback",
            "<TTTarget;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "activity"    # Lcom/oneplus/camera/CameraActivity;
    .param p3, "targetOwner"    # Lcom/oneplus/base/component/ComponentOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oneplus/camera/CameraActivity;",
            "Lcom/oneplus/base/component/ComponentOwner;",
            "Ljava/lang/Class",
            "<+TTTarget;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    .local p4, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<+TTTarget;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ProxyComponent;->m_PendingAsyncMethodCalls:Ljava/util/LinkedList;

    .line 49
    new-instance v0, Lcom/oneplus/camera/ProxyComponent$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ProxyComponent$1;-><init>(Lcom/oneplus/camera/ProxyComponent;)V

    iput-object v0, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetSearchCallback:Lcom/oneplus/base/component/ComponentSearchCallback;

    .line 92
    if-nez p3, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No target component owner."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    if-nez p4, :cond_1

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No target type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    iput-object p4, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetClass:Ljava/lang/Class;

    .line 97
    iput-object p3, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetOwner:Lcom/oneplus/base/component/ComponentOwner;

    .line 98
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cameraThread"    # Lcom/oneplus/camera/CameraThread;
    .param p3, "targetOwner"    # Lcom/oneplus/base/component/ComponentOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oneplus/camera/CameraThread;",
            "Lcom/oneplus/base/component/ComponentOwner;",
            "Ljava/lang/Class",
            "<+TTTarget;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    .local p4, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<+TTTarget;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;Z)V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ProxyComponent;->m_PendingAsyncMethodCalls:Ljava/util/LinkedList;

    .line 49
    new-instance v0, Lcom/oneplus/camera/ProxyComponent$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ProxyComponent$1;-><init>(Lcom/oneplus/camera/ProxyComponent;)V

    iput-object v0, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetSearchCallback:Lcom/oneplus/base/component/ComponentSearchCallback;

    .line 111
    if-nez p3, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No target component owner."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    if-nez p4, :cond_1

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No target type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    iput-object p4, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetClass:Ljava/lang/Class;

    .line 116
    iput-object p3, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetOwner:Lcom/oneplus/base/component/ComponentOwner;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/ProxyComponent;Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ProxyComponent;
    .param p1, "x1"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ProxyComponent;->onTargetFound(Lcom/oneplus/base/component/Component;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/ProxyComponent;Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ProxyComponent;
    .param p1, "x1"    # Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ProxyComponent;->cancelCallingTargetMethod(Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/ProxyComponent;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ProxyComponent;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/oneplus/camera/ProxyComponent;->onCameraThreadStarted()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/camera/ProxyComponent;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/ProxyComponent;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent;->m_PendingAsyncMethodCalls:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/camera/ProxyComponent;Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/ProxyComponent;
    .param p1, "x1"    # Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ProxyComponent;->callTargetMethod(Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;)V

    return-void
.end method

.method private callTargetMethod(Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/ProxyComponent",
            "<TTTarget;>.AsyncMethodCallHandle;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    .local p1, "handle":Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>.AsyncMethodCallHandle;"
    :try_start_0
    iget-object v2, p1, Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;->method:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/oneplus/camera/ProxyComponent;->m_Target:Lcom/oneplus/base/component/Component;

    iget-object v4, p1, Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;->args:[Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 228
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Lcom/oneplus/base/Handle;

    if-eqz v2, :cond_0

    .line 230
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :try_start_1
    invoke-static {p1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    check-cast v1, Lcom/oneplus/base/Handle;

    .end local v1    # "result":Ljava/lang/Object;
    iput-object v1, p1, Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;->resultHandle:Lcom/oneplus/base/Handle;

    .line 236
    :goto_0
    monitor-exit p1

    .line 244
    :cond_0
    return-void

    .line 235
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_1
    check-cast v1, Lcom/oneplus/base/Handle;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 239
    :catch_0
    move-exception v0

    .line 241
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/ProxyComponent;->TAG:Ljava/lang/String;

    const-string v3, "callTargetMethod() - Fail to call target method"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to call target method."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private cancelCallingTargetMethod(Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/ProxyComponent",
            "<TTTarget;>.AsyncMethodCallHandle;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    .local p1, "handle":Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>.AsyncMethodCallHandle;"
    iget-object v1, p0, Lcom/oneplus/camera/ProxyComponent;->m_PendingAsyncMethodCalls:Ljava/util/LinkedList;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent;->m_PendingAsyncMethodCalls:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    monitor-exit v1

    .line 274
    :goto_0
    return-void

    .line 254
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 255
    monitor-enter p1

    .line 257
    :try_start_1
    iget-object v0, p1, Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;->callingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetOwner:Lcom/oneplus/base/component/ComponentOwner;

    iget-object v1, p1, Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;->callingRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 259
    :cond_1
    iget-object v0, p1, Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;->resultHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetOwner:Lcom/oneplus/base/component/ComponentOwner;

    new-instance v1, Lcom/oneplus/camera/ProxyComponent$4;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/ProxyComponent$4;-><init>(Lcom/oneplus/camera/ProxyComponent;Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent;->TAG:Ljava/lang/String;

    const-string v1, "cancelCallingTargetMethod() - Fail to close internal handle asynchronously"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_2
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 254
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private onCameraThreadStarted()V
    .locals 3

    .prologue
    .line 385
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    invoke-virtual {p0}, Lcom/oneplus/camera/ProxyComponent;->isRunningOrInitializing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent;->TAG:Ljava/lang/String;

    const-string v1, "onCameraThreadStarted() - Component is not running"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/camera/ProxyComponent;->m_IsBindingToTarget:Z

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent;->TAG:Ljava/lang/String;

    const-string v1, "onCameraThreadStarted() - Start binding"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetOwner:Lcom/oneplus/base/component/ComponentOwner;

    iget-object v1, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetSearchCallback:Lcom/oneplus/base/component/ComponentSearchCallback;

    invoke-static {v0, v1, p0, v2}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    goto :goto_0
.end method

.method private onTargetFound(Lcom/oneplus/base/component/Component;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTTarget;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    .local p1, "target":Lcom/oneplus/base/component/Component;, "TTTarget;"
    invoke-virtual {p0}, Lcom/oneplus/camera/ProxyComponent;->isRunningOrInitializing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 405
    iget-object v2, p0, Lcom/oneplus/camera/ProxyComponent;->TAG:Ljava/lang/String;

    const-string v3, "onTargetFound() - Component is not running"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :goto_0
    return-void

    .line 410
    :cond_0
    iput-object p1, p0, Lcom/oneplus/camera/ProxyComponent;->m_Target:Lcom/oneplus/base/component/Component;

    .line 411
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/camera/ProxyComponent;->m_IsBindingToTarget:Z

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v0, "eventKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/EventKey<*>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v1, "propertyKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/base/PropertyKey<*>;>;"
    invoke-virtual {p0, v0}, Lcom/oneplus/camera/ProxyComponent;->onBindingToTargetEvents(Ljava/util/List;)V

    .line 417
    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ProxyComponent;->onBindingToTargetProperties(Ljava/util/List;)V

    .line 420
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 422
    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetOwner:Lcom/oneplus/base/component/ComponentOwner;

    new-instance v3, Lcom/oneplus/camera/ProxyComponent$5;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/oneplus/camera/ProxyComponent$5;-><init>(Lcom/oneplus/camera/ProxyComponent;Ljava/util/ArrayList;Lcom/oneplus/base/component/Component;Ljava/util/ArrayList;)V

    invoke-static {v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 482
    iget-object v2, p0, Lcom/oneplus/camera/ProxyComponent;->TAG:Ljava/lang/String;

    const-string v3, "onTargetFound() - Fail to bind to target events and properties asynchronously"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/camera/ProxyComponent;->m_Target:Lcom/oneplus/base/component/Component;

    goto :goto_0

    .line 489
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ProxyComponent;->onTargetBound(Lcom/oneplus/base/component/Component;)V

    goto :goto_0
.end method


# virtual methods
.method protected final bindToTarget()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    const/4 v2, 0x1

    .line 128
    invoke-virtual {p0}, Lcom/oneplus/camera/ProxyComponent;->verifyAccess()V

    .line 129
    iget-object v1, p0, Lcom/oneplus/camera/ProxyComponent;->m_Target:Lcom/oneplus/base/component/Component;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/camera/ProxyComponent;->m_IsBindingToTarget:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    .line 161
    :goto_0
    return v1

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ProxyComponent;->isRunningOrInitializing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/oneplus/camera/ProxyComponent;->TAG:Ljava/lang/String;

    const-string v2, "bindToTarget() - Component is not running"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x0

    goto :goto_0

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetOwner:Lcom/oneplus/base/component/ComponentOwner;

    instance-of v1, v1, Lcom/oneplus/camera/CameraThread;

    if-eqz v1, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/oneplus/camera/ProxyComponent;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 141
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->isDependencyThread()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 143
    iget-object v1, p0, Lcom/oneplus/camera/ProxyComponent;->TAG:Ljava/lang/String;

    const-string v3, "bindToTarget() - Start binding when camera thread starts"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iput-boolean v2, p0, Lcom/oneplus/camera/ProxyComponent;->m_IsBindingToTarget:Z

    .line 145
    new-instance v1, Lcom/oneplus/camera/ProxyComponent$2;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ProxyComponent$2;-><init>(Lcom/oneplus/camera/ProxyComponent;)V

    iput-object v1, p0, Lcom/oneplus/camera/ProxyComponent;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 153
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/camera/ProxyComponent;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    move v1, v2

    .line 154
    goto :goto_0

    .line 157
    .end local v0    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetOwner:Lcom/oneplus/base/component/ComponentOwner;

    iget-object v3, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetClass:Ljava/lang/Class;

    iget-object v4, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetSearchCallback:Lcom/oneplus/base/component/ComponentSearchCallback;

    invoke-static {v1, v3, p0, v4}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 158
    iput-boolean v2, p0, Lcom/oneplus/camera/ProxyComponent;->m_IsBindingToTarget:Z

    :cond_4
    move v1, v2

    .line 161
    goto :goto_0
.end method

.method protected final varargs callTargetMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/Handle;
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/oneplus/base/Handle;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    .local p2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 176
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No target method name"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 182
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetClass:Ljava/lang/Class;

    invoke-virtual {v3, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 191
    .local v2, "method":Ljava/lang/reflect/Method;
    new-instance v1, Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;

    invoke-direct {v1, p0, v2, p3}, Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;-><init>(Lcom/oneplus/camera/ProxyComponent;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 194
    .local v1, "handle":Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>.AsyncMethodCallHandle;"
    iget-object v3, p0, Lcom/oneplus/camera/ProxyComponent;->m_Target:Lcom/oneplus/base/component/Component;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/camera/ProxyComponent;->m_Target:Lcom/oneplus/base/component/Component;

    invoke-interface {v3}, Lcom/oneplus/base/component/Component;->isDependencyThread()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    invoke-direct {p0, v1}, Lcom/oneplus/camera/ProxyComponent;->callTargetMethod(Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;)V

    .line 218
    .end local v1    # "handle":Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>.AsyncMethodCallHandle;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 186
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/camera/ProxyComponent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callTargetMethod() - Cannot find method \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    const/4 v1, 0x0

    goto :goto_0

    .line 198
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "handle":Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>.AsyncMethodCallHandle;"
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    iget-object v4, p0, Lcom/oneplus/camera/ProxyComponent;->m_PendingAsyncMethodCalls:Ljava/util/LinkedList;

    monitor-enter v4

    .line 200
    :try_start_1
    iget-object v3, p0, Lcom/oneplus/camera/ProxyComponent;->m_PendingAsyncMethodCalls:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 201
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    new-instance v3, Lcom/oneplus/camera/ProxyComponent$3;

    invoke-direct {v3, p0, v1}, Lcom/oneplus/camera/ProxyComponent$3;-><init>(Lcom/oneplus/camera/ProxyComponent;Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;)V

    iput-object v3, v1, Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;->callingRunnable:Ljava/lang/Runnable;

    .line 214
    iget-object v3, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetOwner:Lcom/oneplus/base/component/ComponentOwner;

    iget-object v4, v1, Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;->callingRunnable:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method protected final getTarget()Lcom/oneplus/base/component/Component;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTTarget;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent;->m_Target:Lcom/oneplus/base/component/Component;

    return-object v0
.end method

.method protected final getTargetOwner()Lcom/oneplus/base/component/ComponentOwner;
    .locals 1

    .prologue
    .line 293
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent;->m_TargetOwner:Lcom/oneplus/base/component/ComponentOwner;

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 318
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 321
    :goto_0
    return-void

    .line 305
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 306
    .local v0, "array":[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aget-object v1, v0, v3

    check-cast v1, Lcom/oneplus/base/EventKey;

    aget-object v2, v0, v6

    check-cast v2, Lcom/oneplus/base/EventArgs;

    invoke-virtual {p0, v4, v5, v1, v2}, Lcom/oneplus/camera/ProxyComponent;->onTargetEventRaised(JLcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0

    .line 312
    .end local v0    # "array":[Ljava/lang/Object;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 313
    .restart local v0    # "array":[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aget-object v1, v0, v3

    check-cast v1, Lcom/oneplus/base/PropertyKey;

    aget-object v2, v0, v6

    check-cast v2, Lcom/oneplus/base/PropertyChangeEventArgs;

    invoke-virtual {p0, v4, v5, v1, v2}, Lcom/oneplus/camera/ProxyComponent;->onTargetPropertyChanged(JLcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch -0x2711
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final isTargetBound()Z
    .locals 1

    .prologue
    .line 330
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent;->m_Target:Lcom/oneplus/base/component/Component;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindingToTargetEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/EventKey",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/EventKey<*>;>;"
    return-void
.end method

.method protected onBindingToTargetProperties(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyKey<*>;>;"
    return-void
.end method

.method protected onDeinitialize()V
    .locals 3

    .prologue
    .line 354
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/oneplus/camera/ProxyComponent;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_THREAD_STARTED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/ProxyComponent;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/ProxyComponent;->m_IsCameraThreadStartedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 359
    :cond_0
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onDeinitialize()V

    .line 360
    return-void
.end method

.method protected onInitialize()V
    .locals 0

    .prologue
    .line 367
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 368
    invoke-virtual {p0}, Lcom/oneplus/camera/ProxyComponent;->bindToTarget()Z

    .line 369
    return-void
.end method

.method protected onTargetBound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTTarget;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    .local p1, "target":Lcom/oneplus/base/component/Component;, "TTTarget;"
    return-void
.end method

.method protected onTargetEventRaised(JLcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 1
    .param p1, "time"    # J
    .param p4, "e"    # Lcom/oneplus/base/EventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/oneplus/base/EventKey",
            "<*>;",
            "Lcom/oneplus/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 502
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    .local p3, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    invoke-virtual {p0, p3, p4}, Lcom/oneplus/camera/ProxyComponent;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 503
    instance-of v0, p4, Lcom/oneplus/base/RecyclableObject;

    if-eqz v0, :cond_0

    .line 504
    check-cast p4, Lcom/oneplus/base/RecyclableObject;

    .end local p4    # "e":Lcom/oneplus/base/EventArgs;
    invoke-interface {p4}, Lcom/oneplus/base/RecyclableObject;->recycle()V

    .line 505
    :cond_0
    return-void
.end method

.method protected onTargetPropertyChanged(JLcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 517
    .local p0, "this":Lcom/oneplus/camera/ProxyComponent;, "Lcom/oneplus/camera/ProxyComponent<TTTarget;>;"
    .local p3, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    .local p4, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<*>;"
    sget-object v0, Lcom/oneplus/camera/ProxyComponent;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    if-eq p3, v0, :cond_0

    .line 519
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyKey;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    invoke-virtual {p4}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p3, v0}, Lcom/oneplus/camera/CameraComponent;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 524
    :cond_0
    :goto_0
    invoke-virtual {p4}, Lcom/oneplus/base/PropertyChangeEventArgs;->recycle()V

    .line 525
    return-void

    .line 522
    :cond_1
    invoke-virtual {p4}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p3, v0}, Lcom/oneplus/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method
