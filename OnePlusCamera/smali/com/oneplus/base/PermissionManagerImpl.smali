.class Lcom/oneplus/base/PermissionManagerImpl;
.super Lcom/oneplus/base/component/BasicComponent;
.source "PermissionManagerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PermissionManager;


# static fields
.field private static final SYNC_REQUEST_PERMISSIONS:Ljava/lang/Object;


# instance fields
.field private m_CheckSelfPermissionMethod:Ljava/lang/reflect/Method;

.field private m_ContextRequestCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
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

.field private m_RequestingContexts:Ljava/util/Map;
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

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/base/component/ComponentOwner;)V
    .locals 3
    .param p1, "owner"    # Lcom/oneplus/base/component/ComponentOwner;

    .prologue
    const/16 v2, 0x100

    .line 35
    const-string/jumbo v0, "Permission Manager Impl"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/base/component/BasicComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Z)V

    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_ContextRequestCount:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_PenddingRequestPermissions:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingContexts:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingPermissions:Ljava/util/Map;

    .line 38
    sget-object v0, Lcom/oneplus/base/PermissionManagerImpl;->EVENT_PERMISSION_GRANTED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/base/PermissionManagerImpl;->enableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 39
    sget-object v0, Lcom/oneplus/base/PermissionManagerImpl;->EVENT_PERMISSION_DENIED:Lcom/oneplus/base/EventKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/base/PermissionManagerImpl;->enableEventLogs(Lcom/oneplus/base/EventKey;I)V

    .line 33
    return-void
.end method

.method private startPermissionActivity(Lcom/oneplus/base/BaseActivity;)V
    .locals 8
    .param p1, "context"    # Lcom/oneplus/base/BaseActivity;

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 238
    iget-object v6, p0, Lcom/oneplus/base/PermissionManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "startPermissionActivity() - context is null."

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/base/BaseActivity;->getId()J

    move-result-wide v2

    .line 243
    .local v2, "id":J
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/oneplus/base/PermissionActivity;

    invoke-direct {v1, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingPermissions:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 245
    .local v4, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 246
    .local v5, "requestingPermissions":[Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 248
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v0

    .line 246
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 250
    :cond_1
    const-string/jumbo v6, "com.oneplus.base.PermissionActivity.extra.REQUEST_PREMISSION_LIST"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string/jumbo v6, "com.oneplus.base.PermissionActivity.extra.REQUEST_CODE"

    invoke-virtual {v1, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 252
    invoke-virtual {p1, v1}, Lcom/oneplus/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 234
    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;)Z
    .locals 9
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 47
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v3, v6, :cond_0

    .line 48
    return v4

    .line 51
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_CheckSelfPermissionMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 53
    const-class v2, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    .local v2, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 58
    :try_start_1
    const-string/jumbo v3, "checkSelfPermission"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_CheckSelfPermissionMethod:Ljava/lang/reflect/Method;

    .line 59
    iget-object v3, p0, Lcom/oneplus/base/PermissionManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkPermission() - Implemented in "

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    .end local v2    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_CheckSelfPermissionMethod:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    return v3

    .line 63
    .restart local v2    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 64
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    .end local v2    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move v3, v5

    .line 68
    goto :goto_1

    .line 71
    :catch_1
    move-exception v1

    .line 72
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/oneplus/base/PermissionManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkPermission() - Fail to check permission"

    invoke-static {v3, v4, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return v5
.end method

.method protected onDeinitialize()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_CheckSelfPermissionMethod:Ljava/lang/reflect/Method;

    .line 84
    iget-object v0, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingContexts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    iget-object v0, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_PenddingRequestPermissions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 86
    iget-object v0, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingPermissions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 87
    iget-object v0, p0, Lcom/oneplus/base/PermissionManagerImpl;->m_ContextRequestCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 90
    invoke-super {p0}, Lcom/oneplus/base/component/BasicComponent;->onDeinitialize()V

    .line 80
    return-void
.end method

.method onRequestPermissionsResult(J[Ljava/lang/String;[I)V
    .locals 17
    .param p1, "requestCode"    # J
    .param p3, "permissions"    # [Ljava/lang/String;
    .param p4, "grantResults"    # [I

    .prologue
    .line 98
    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 100
    :cond_0
    sget-object v9, Lcom/oneplus/base/PermissionManagerImpl;->SYNC_REQUEST_PERMISSIONS:Ljava/lang/Object;

    monitor-enter v9

    .line 102
    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_ContextRequestCount:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 103
    .local v4, "contextRequestCount":Ljava/lang/Long;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v8, v10, v12

    if-lez v8, :cond_1

    .line 105
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/base/PermissionManagerImpl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onRequestPermissionsResult() - request permission again, id : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_ContextRequestCount:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingContexts:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/BaseActivity;

    .line 108
    .local v3, "context":Lcom/oneplus/base/BaseActivity;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/oneplus/base/PermissionManagerImpl;->startPermissionActivity(Lcom/oneplus/base/BaseActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "context":Lcom/oneplus/base/BaseActivity;
    :goto_0
    monitor-exit v9

    .line 117
    return-void

    .line 111
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingContexts:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_PenddingRequestPermissions:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingPermissions:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/base/PermissionManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onRequestPermissionsResult() - Remove request: "

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    .end local v4    # "contextRequestCount":Ljava/lang/Long;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 121
    :cond_2
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    .line 122
    .local v2, "app":Lcom/oneplus/base/BaseApplication;
    move-object/from16 v0, p3

    array-length v8, v0

    add-int/lit8 v6, v8, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_4

    .line 124
    new-instance v5, Lcom/oneplus/base/PermissionEventArgs;

    aget-object v8, p3, v6

    invoke-direct {v5, v8}, Lcom/oneplus/base/PermissionEventArgs;-><init>(Ljava/lang/String;)V

    .line 125
    .local v5, "eventArgs":Lcom/oneplus/base/PermissionEventArgs;
    aget v8, p4, v6

    if-nez v8, :cond_3

    .line 127
    aget-object v8, p3, v6

    invoke-virtual {v2, v8}, Lcom/oneplus/base/BaseApplication;->notifyPermissionGranted(Ljava/lang/String;)V

    .line 128
    sget-object v8, Lcom/oneplus/base/PermissionManagerImpl;->EVENT_PERMISSION_GRANTED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5}, Lcom/oneplus/base/PermissionManagerImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 122
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 132
    :cond_3
    aget-object v8, p3, v6

    invoke-virtual {v2, v8}, Lcom/oneplus/base/BaseApplication;->notifyPermissionDenied(Ljava/lang/String;)V

    .line 133
    sget-object v8, Lcom/oneplus/base/PermissionManagerImpl;->EVENT_PERMISSION_DENIED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5}, Lcom/oneplus/base/PermissionManagerImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_2

    .line 137
    .end local v5    # "eventArgs":Lcom/oneplus/base/PermissionEventArgs;
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/base/PermissionManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "onRequestPermissionsResult() - Request permissions: "

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ", result: "

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v9, v10, v11, v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    sget-object v9, Lcom/oneplus/base/PermissionManagerImpl;->SYNC_REQUEST_PERMISSIONS:Ljava/lang/Object;

    monitor-enter v9

    .line 143
    :try_start_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingPermissions:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_ContextRequestCount:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 145
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_ContextRequestCount:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_ContextRequestCount:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingContexts:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/BaseActivity;

    .line 149
    .restart local v3    # "context":Lcom/oneplus/base/BaseActivity;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_PenddingRequestPermissions:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 150
    .local v7, "penddingRequestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 152
    new-instance v8, Lcom/oneplus/base/PermissionManagerImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v3, v7}, Lcom/oneplus/base/PermissionManagerImpl$1;-><init>(Lcom/oneplus/base/PermissionManagerImpl;Lcom/oneplus/base/BaseActivity;Ljava/util/List;)V

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    monitor-exit v9

    .line 95
    return-void

    .line 140
    .end local v3    # "context":Lcom/oneplus/base/BaseActivity;
    .end local v7    # "penddingRequestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public requestPermissions(Lcom/oneplus/base/BaseActivity;[Ljava/lang/String;I)V
    .locals 18
    .param p1, "context"    # Lcom/oneplus/base/BaseActivity;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 170
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 172
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/base/PermissionManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "requestPermissions() - Permission list is empty, ignore"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void

    .line 170
    :cond_1
    move-object/from16 v0, p2

    array-length v9, v0

    const/4 v10, 0x1

    if-lt v9, v10, :cond_0

    .line 176
    sget-object v10, Lcom/oneplus/base/PermissionManagerImpl;->SYNC_REQUEST_PERMISSIONS:Ljava/lang/Object;

    monitor-enter v10

    .line 179
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/base/BaseActivity;->getId()J

    move-result-wide v2

    .line 181
    .local v2, "id":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/base/PermissionManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "requestPermissions() - Id: "

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v9, v11, v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_ContextRequestCount:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 185
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_ContextRequestCount:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_ContextRequestCount:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v11, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingPermissions:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 190
    .local v8, "requestingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_PenddingRequestPermissions:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 191
    .local v5, "penddingRequestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_8

    .line 193
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v4, "newPenddingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 195
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    :cond_2
    const/4 v9, 0x0

    move-object/from16 v0, p2

    array-length v11, v0

    :goto_1
    if-ge v9, v11, :cond_6

    aget-object v6, p2, v9

    .line 198
    .local v6, "permission":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 196
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 187
    .end local v4    # "newPenddingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "penddingRequestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "permission":Ljava/lang/String;
    .end local v8    # "requestingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_ContextRequestCount:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 176
    .end local v2    # "id":J
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 199
    .restart local v2    # "id":J
    .restart local v4    # "newPenddingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "penddingRequestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "permission":Ljava/lang/String;
    .restart local v8    # "requestingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :try_start_1
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 201
    .end local v6    # "permission":Ljava/lang/String;
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 203
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/base/PermissionManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "requestPermissions() - Pendding permissions request"

    invoke-static {v9, v11}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_PenddingRequestPermissions:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingContexts:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v9, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit v10

    .line 207
    return-void

    .line 210
    .end local v4    # "newPenddingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/base/PermissionManagerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "requestPermissions() - Request permissions: "

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v11, v12}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "requestingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .restart local v8    # "requestingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    move-object/from16 v0, p2

    array-length v11, v0

    :goto_3
    if-ge v9, v11, :cond_9

    aget-object v6, p2, v9

    .line 215
    .restart local v6    # "permission":Ljava/lang/String;
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 216
    .end local v6    # "permission":Ljava/lang/String;
    :cond_9
    if-eqz v5, :cond_b

    .line 218
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "permission$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 220
    .restart local v6    # "permission":Ljava/lang/String;
    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 221
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 224
    .end local v6    # "permission":Ljava/lang/String;
    .end local v7    # "permission$iterator":Ljava/util/Iterator;
    :cond_b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingPermissions:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/base/PermissionManagerImpl;->m_RequestingContexts:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v9, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/base/PermissionManagerImpl;->startPermissionActivity(Lcom/oneplus/base/BaseActivity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v10

    .line 167
    return-void
.end method
