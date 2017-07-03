.class Lcom/oneplus/base/PermissionManagerImpl;
.super Lcom/oneplus/base/component/BasicComponent;
.source "PermissionManagerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PermissionManager;


# static fields
.field private static final SYNC_REQUEST_PERMISSIONS:Ljava/lang/Object;


# instance fields
.field private m_CheckSelfPermissionMethod:Ljava/lang/reflect/Method;

.field private m_PenddingContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oneplus/base/BaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field private m_PenddingRequestPermissions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_RequestingPermissions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/base/PermissionManagerImpl;->SYNC_REQUEST_PERMISSIONS:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/base/component/ComponentOwner;)V
    .locals 3
    .param p1, "owner"    # Lcom/oneplus/base/component/ComponentOwner;

    .prologue
    const/16 v2, 0x100

    .line 34
    const-string v0, "Permission Manager Impl"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_PenddingContexts:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_PenddingRequestPermissions:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingPermissions:Ljava/util/Map;

    .line 37
    sget-object v0, Lcom/oneplus/base/PermissionManagerImpl;->EVENT_PERMISSION_GRANTED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/base/PermissionManagerImpl;->enableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 38
    sget-object v0, Lcom/oneplus/base/PermissionManagerImpl;->EVENT_PERMISSION_DENIED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/base/PermissionManagerImpl;->enableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;)Z
    .locals 8
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 46
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v2, v5, :cond_0

    move v2, v3

    .line 72
    :goto_0
    return v2

    .line 50
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_CheckSelfPermissionMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 52
    const-class v1, Landroid/app/Application;

    .line 53
    .local v1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-nez v1, :cond_2

    .line 67
    .end local v1    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_CheckSelfPermissionMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_0

    .line 57
    .restart local v1    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :try_start_1
    const-string v2, "checkSelfPermission"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_CheckSelfPermissionMethod:Ljava/lang/reflect/Method;

    .line 58
    iget-object v2, p0, Lcom/oneplus/base/PermissionManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "checkPermission() - Implemented in "

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 61
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_1

    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    .end local v1    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    move v2, v4

    .line 67
    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    .line 71
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/base/PermissionManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "checkPermission() - Fail to check permission"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v4

    .line 72
    goto :goto_0
.end method

.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_CheckSelfPermissionMethod:Ljava/lang/reflect/Method;

    .line 83
    iget-object v0, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_PenddingContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 84
    iget-object v0, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_PenddingRequestPermissions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    iget-object v0, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingPermissions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 88
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onDeinitialize()V

    .line 89
    return-void
.end method

.method onRequestPermissionsResult(J[Ljava/lang/String;[I)V
    .locals 11
    .param p1, "requestCode"    # J
    .param p3, "permissions"    # [Ljava/lang/String;
    .param p4, "grantResults"    # [I

    .prologue
    .line 96
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 98
    :cond_0
    sget-object v6, Lcom/oneplus/base/PermissionManagerImpl;->SYNC_REQUEST_PERMISSIONS:Ljava/lang/Object;

    monitor-enter v6

    .line 101
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_PenddingContexts:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v5, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_PenddingRequestPermissions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v5, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingPermissions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v5, p0, Lcom/oneplus/base/PermissionManagerImpl;->TAG:Ljava/lang/String;

    const-string v7, "onRequestPermissionsResult() - Remove request: "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    monitor-exit v6

    .line 150
    :goto_0
    return-void

    .line 98
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 111
    :cond_1
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    .line 112
    .local v0, "app":Lcom/oneplus/base/BaseApplication;
    array-length v5, p3

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_1
    if-gez v3, :cond_3

    .line 127
    iget-object v5, p0, Lcom/oneplus/base/PermissionManagerImpl;->TAG:Ljava/lang/String;

    const-string v6, "onRequestPermissionsResult() - Request permissions: "

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ", result: "

    invoke-static {p4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    sget-object v6, Lcom/oneplus/base/PermissionManagerImpl;->SYNC_REQUEST_PERMISSIONS:Ljava/lang/Object;

    monitor-enter v6

    .line 133
    :try_start_1
    iget-object v5, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingPermissions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v5, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_PenddingContexts:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/BaseActivity;

    .line 137
    .local v1, "context":Lcom/oneplus/base/BaseActivity;
    iget-object v5, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_PenddingRequestPermissions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 138
    .local v4, "penddingRequestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 140
    new-instance v5, Lcom/oneplus/base/PermissionManagerImpl$1;

    invoke-direct {v5, p0, v1, v4}, Lcom/oneplus/base/PermissionManagerImpl$1;-><init>(Lcom/oneplus/base/PermissionManagerImpl;Lcom/oneplus/base/BaseActivity;Ljava/util/List;)V

    invoke-static {p0, v5}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 130
    :cond_2
    monitor-exit v6

    goto :goto_0

    .end local v1    # "context":Lcom/oneplus/base/BaseActivity;
    .end local v4    # "penddingRequestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5

    .line 114
    :cond_3
    new-instance v2, Lcom/oneplus/base/PermissionEventArgs;

    aget-object v5, p3, v3

    invoke-direct {v2, v5}, Lcom/oneplus/base/PermissionEventArgs;-><init>(Ljava/lang/String;)V

    .line 115
    .local v2, "eventArgs":Lcom/oneplus/base/PermissionEventArgs;
    aget v5, p4, v3

    if-nez v5, :cond_4

    .line 117
    aget-object v5, p3, v3

    invoke-virtual {v0, v5}, Lcom/oneplus/base/BaseApplication;->notifyPermissionGranted(Ljava/lang/String;)V

    .line 118
    sget-object v5, Lcom/oneplus/base/PermissionManagerImpl;->EVENT_PERMISSION_GRANTED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/base/PermissionManagerImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 112
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 122
    :cond_4
    aget-object v5, p3, v3

    invoke-virtual {v0, v5}, Lcom/oneplus/base/BaseApplication;->notifyPermissionDenied(Ljava/lang/String;)V

    .line 123
    sget-object v5, Lcom/oneplus/base/PermissionManagerImpl;->EVENT_PERMISSION_DENIED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/base/PermissionManagerImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_2
.end method

.method public requestPermissions(Lcom/oneplus/base/BaseActivity;[Ljava/lang/String;I)V
    .locals 12
    .param p1, "context"    # Lcom/oneplus/base/BaseActivity;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    const/4 v7, 0x0

    .line 158
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v8, p2

    const/4 v9, 0x1

    if-ge v8, v9, :cond_1

    .line 160
    :cond_0
    iget-object v7, p0, Lcom/oneplus/base/PermissionManagerImpl;->TAG:Ljava/lang/String;

    const-string v8, "requestPermissions() - Permission list is empty, ignore"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :goto_0
    return-void

    .line 164
    :cond_1
    sget-object v8, Lcom/oneplus/base/PermissionManagerImpl;->SYNC_REQUEST_PERMISSIONS:Ljava/lang/Object;

    monitor-enter v8

    .line 167
    :try_start_0
    invoke-virtual {p1}, Lcom/oneplus/base/BaseActivity;->getId()J

    move-result-wide v0

    .line 169
    .local v0, "id":J
    iget-object v9, p0, Lcom/oneplus/base/PermissionManagerImpl;->TAG:Ljava/lang/String;

    const-string v10, "requestPermissions() - Id: "

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    iget-object v9, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingPermissions:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 173
    .local v6, "requestingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_PenddingRequestPermissions:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 174
    .local v4, "penddingRequestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_6

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v3, "newPenddingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 178
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    :cond_2
    array-length v9, p2

    :goto_1
    if-lt v7, v9, :cond_4

    .line 184
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 186
    iget-object v7, p0, Lcom/oneplus/base/PermissionManagerImpl;->TAG:Ljava/lang/String;

    const-string v9, "requestPermissions() - Pendding permissions request"

    invoke-static {v7, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v7, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_PenddingRequestPermissions:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v7, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_PenddingContexts:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_3
    monitor-exit v8

    goto :goto_0

    .line 164
    .end local v0    # "id":J
    .end local v3    # "newPenddingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "penddingRequestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "requestingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 179
    .restart local v0    # "id":J
    .restart local v3    # "newPenddingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "penddingRequestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "requestingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    aget-object v5, p2, v7

    .line 181
    .local v5, "permission":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 182
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 193
    .end local v3    # "newPenddingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "permission":Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/oneplus/base/PermissionManagerImpl;->TAG:Ljava/lang/String;

    const-string v10, "requestPermissions() - Request permissions: "

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "requestingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .restart local v6    # "requestingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v9, p2

    :goto_2
    if-lt v7, v9, :cond_9

    .line 199
    if-eqz v4, :cond_8

    .line 201
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_a

    .line 207
    :cond_8
    iget-object v7, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingPermissions:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v2, Landroid/content/Intent;

    const-class v7, Lcom/oneplus/base/PermissionActivity;

    invoke-direct {v2, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "com.oneplus.base.PermissionActivity.extra.REQUEST_PREMISSION_LIST"

    invoke-virtual {v2, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v7, "com.oneplus.base.PermissionActivity.extra.REQUEST_CODE"

    invoke-virtual {v2, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 213
    invoke-virtual {p1, v2}, Lcom/oneplus/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 164
    monitor-exit v8

    goto/16 :goto_0

    .line 197
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_9
    aget-object v5, p2, v7

    .line 198
    .restart local v5    # "permission":Ljava/lang/String;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 201
    .end local v5    # "permission":Ljava/lang/String;
    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 203
    .restart local v5    # "permission":Ljava/lang/String;
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 204
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method
