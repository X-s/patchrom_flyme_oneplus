.class public Lcom/android/systemui_ex/recents/LockedStateManager;
.super Ljava/lang/Object;
.source "LockedStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/recents/LockedStateManager$SharedPrefHandler;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui_ex/recents/LockedStateManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/systemui_ex/recents/LockedStateManager$SharedPrefHandler;

.field private mLoadThread:Landroid/os/HandlerThread;

.field private mLockedStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLockedStatePre:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui_ex/recents/LockedStateManager;->sInstance:Lcom/android/systemui_ex/recents/LockedStateManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Recents-LockedStateManager"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/LockedStateManager;->mLoadThread:Landroid/os/HandlerThread;

    .line 78
    iget-object v0, p0, Lcom/android/systemui_ex/recents/LockedStateManager;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 79
    new-instance v0, Lcom/android/systemui_ex/recents/LockedStateManager$SharedPrefHandler;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/LockedStateManager;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui_ex/recents/LockedStateManager$SharedPrefHandler;-><init>(Lcom/android/systemui_ex/recents/LockedStateManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/LockedStateManager;->mHandler:Lcom/android/systemui_ex/recents/LockedStateManager$SharedPrefHandler;

    .line 81
    iput-object p1, p0, Lcom/android/systemui_ex/recents/LockedStateManager;->mContext:Landroid/content/Context;

    .line 82
    iget-object v0, p0, Lcom/android/systemui_ex/recents/LockedStateManager;->mContext:Landroid/content/Context;

    const-string v1, "tasklockstate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/LockedStateManager;->mLockedStatePre:Landroid/content/SharedPreferences;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/LockedStateManager;->mLockedStateMap:Ljava/util/Map;

    .line 84
    invoke-direct {p0}, Lcom/android/systemui_ex/recents/LockedStateManager;->initSharedPref()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/recents/LockedStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/recents/LockedStateManager;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui_ex/recents/LockedStateManager;->initSharedPref()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/recents/LockedStateManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/recents/LockedStateManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/recents/LockedStateManager;->writeToSharedPref(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/recents/LockedStateManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/recents/LockedStateManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/recents/LockedStateManager;->removeFromSharedPref(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui_ex/recents/LockedStateManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    sget-object v0, Lcom/android/systemui_ex/recents/LockedStateManager;->sInstance:Lcom/android/systemui_ex/recents/LockedStateManager;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/android/systemui_ex/recents/LockedStateManager;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/recents/LockedStateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui_ex/recents/LockedStateManager;->sInstance:Lcom/android/systemui_ex/recents/LockedStateManager;

    .line 123
    :cond_0
    sget-object v0, Lcom/android/systemui_ex/recents/LockedStateManager;->sInstance:Lcom/android/systemui_ex/recents/LockedStateManager;

    return-object v0
.end method

.method private getMessage(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Message;
    .locals 3
    .param p1, "action"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "taskId"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 89
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "action"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v2, "packageName"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "taskId"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 94
    return-object v1
.end method

.method private initSharedPref()V
    .locals 6

    .prologue
    .line 98
    iget-object v3, p0, Lcom/android/systemui_ex/recents/LockedStateManager;->mLockedStatePre:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 99
    .local v0, "allEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    iget-object v3, p0, Lcom/android/systemui_ex/recents/LockedStateManager;->mLockedStateMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 103
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_0
    return-void
.end method

.method private removeFromSharedPref(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/systemui_ex/recents/LockedStateManager;->mLockedStatePre:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    return-void
.end method

.method private writeToSharedPref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/systemui_ex/recents/LockedStateManager;->mLockedStatePre:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    return-void
.end method


# virtual methods
.method public getSavedLockedState(Lcom/android/systemui_ex/recents/model/Task;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 142
    iget-object v1, p1, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->getComponentNameKey()Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;->getComponentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui_ex/recents/LockedStateManager;->mLockedStateMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const/4 v1, 0x1

    .line 146
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeLockState(Lcom/android/systemui_ex/recents/model/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 161
    iget-object v1, p1, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->getComponentNameKey()Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;->getComponentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/recents/LockedStateManager;->removeLockState(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public removeLockState(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui_ex/recents/LockedStateManager;->mLockedStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/recents/LockedStateManager;->remvoeLockedState(Ljava/lang/String;)V

    .line 169
    :cond_0
    return-void
.end method

.method public remvoeLockedState(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui_ex/recents/LockedStateManager;->mLockedStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/android/systemui_ex/recents/LockedStateManager;->mHandler:Lcom/android/systemui_ex/recents/LockedStateManager$SharedPrefHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/android/systemui_ex/recents/LockedStateManager;->getMessage(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/LockedStateManager$SharedPrefHandler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    return-void
.end method

.method public saveLockedState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui_ex/recents/LockedStateManager;->mLockedStateMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/android/systemui_ex/recents/LockedStateManager;->mHandler:Lcom/android/systemui_ex/recents/LockedStateManager$SharedPrefHandler;

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/systemui_ex/recents/LockedStateManager;->getMessage(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/LockedStateManager$SharedPrefHandler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method

.method public setSavedLockedState(Lcom/android/systemui_ex/recents/model/Task;Z)V
    .locals 3
    .param p1, "task"    # Lcom/android/systemui_ex/recents/model/Task;
    .param p2, "isLocked"    # Z

    .prologue
    .line 151
    iget-object v2, p1, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->getComponentNameKey()Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui_ex/recents/model/Task$ComponentNameKey;->getComponentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "currentId":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 154
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui_ex/recents/LockedStateManager;->saveLockedState(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/recents/LockedStateManager;->remvoeLockedState(Ljava/lang/String;)V

    goto :goto_0
.end method
