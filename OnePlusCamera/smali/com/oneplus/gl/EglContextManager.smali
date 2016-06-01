.class public final Lcom/oneplus/gl/EglContextManager;
.super Ljava/lang/Object;
.source "EglContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gl/EglContextManager$1;,
        Lcom/oneplus/gl/EglContextManager$EglContextState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EglContextManager"

.field private static final m_CurrentEglContextState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/oneplus/gl/EglContextManager$EglContextState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/gl/EglContextManager;->m_CurrentEglContextState:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getEglContextState(Z)Lcom/oneplus/gl/EglContextManager$EglContextState;
    .locals 2
    .param p0, "createNew"    # Z

    .prologue
    .line 34
    sget-object v1, Lcom/oneplus/gl/EglContextManager;->m_CurrentEglContextState:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/EglContextManager$EglContextState;

    .line 35
    .local v0, "state":Lcom/oneplus/gl/EglContextManager$EglContextState;
    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 37
    new-instance v0, Lcom/oneplus/gl/EglContextManager$EglContextState;

    .end local v0    # "state":Lcom/oneplus/gl/EglContextManager$EglContextState;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/gl/EglContextManager$EglContextState;-><init>(Lcom/oneplus/gl/EglContextManager$1;)V

    .line 38
    .restart local v0    # "state":Lcom/oneplus/gl/EglContextManager$EglContextState;
    sget-object v1, Lcom/oneplus/gl/EglContextManager;->m_CurrentEglContextState:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 40
    :cond_0
    return-object v0
.end method

.method public static isEglContextReady()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-static {v1}, Lcom/oneplus/gl/EglContextManager;->getEglContextState(Z)Lcom/oneplus/gl/EglContextManager$EglContextState;

    move-result-object v0

    .line 51
    .local v0, "contextState":Lcom/oneplus/gl/EglContextManager$EglContextState;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/oneplus/gl/EglContextManager$EglContextState;->isEglContextReady:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static notifyEglContextDestroying()V
    .locals 12

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oneplus/gl/EglContextManager;->getEglContextState(Z)Lcom/oneplus/gl/EglContextManager$EglContextState;

    move-result-object v6

    .line 62
    .local v6, "contextState":Lcom/oneplus/gl/EglContextManager$EglContextState;
    if-eqz v6, :cond_0

    iget-boolean v0, v6, Lcom/oneplus/gl/EglContextManager$EglContextState;->isEglContextReady:Z

    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/oneplus/gl/EglContextManager$EglContextState;->isEglContextReady:Z

    .line 69
    const/4 v9, 0x0

    .line 70
    .local v9, "notifiedCount":I
    const/4 v11, 0x0

    .line 71
    .local v11, "recycledCount":I
    iget-object v7, v6, Lcom/oneplus/gl/EglContextManager$EglContextState;->activeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    .line 72
    .local v7, "holder":Lcom/oneplus/gl/EglObjectHolder;
    :goto_1
    if-eqz v7, :cond_3

    .line 74
    iget-object v8, v7, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 75
    .local v8, "nextHolder":Lcom/oneplus/gl/EglObjectHolder;
    iget-object v0, v7, Lcom/oneplus/gl/EglObjectHolder;->eglObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gl/EglObject;

    .line 76
    .local v10, "obj":Lcom/oneplus/gl/EglObject;
    if-eqz v10, :cond_2

    .line 78
    add-int/lit8 v9, v9, 0x1

    .line 79
    invoke-virtual {v10}, Lcom/oneplus/gl/EglObject;->onEglContextDestroying()V

    .line 86
    :goto_2
    move-object v7, v8

    .line 87
    goto :goto_1

    .line 83
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 84
    invoke-static {v6, v7}, Lcom/oneplus/gl/EglContextManager;->recycleEglObjectHolder(Lcom/oneplus/gl/EglContextManager$EglContextState;Lcom/oneplus/gl/EglObjectHolder;)V

    goto :goto_2

    .line 88
    .end local v8    # "nextHolder":Lcom/oneplus/gl/EglObjectHolder;
    .end local v10    # "obj":Lcom/oneplus/gl/EglObject;
    :cond_3
    const-string v0, "EglContextManager"

    const-string v1, "notifyEglContextDestroying() - "

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " notified, "

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " recycled"

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static notifyEglContextReady()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    .line 98
    invoke-static {v1}, Lcom/oneplus/gl/EglContextManager;->getEglContextState(Z)Lcom/oneplus/gl/EglContextManager$EglContextState;

    move-result-object v6

    .line 99
    .local v6, "contextState":Lcom/oneplus/gl/EglContextManager$EglContextState;
    iget-boolean v0, v6, Lcom/oneplus/gl/EglContextManager$EglContextState;->isEglContextReady:Z

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 103
    :cond_0
    iput-boolean v1, v6, Lcom/oneplus/gl/EglContextManager$EglContextState;->isEglContextReady:Z

    .line 106
    const/4 v9, 0x0

    .line 107
    .local v9, "notifiedCount":I
    const/4 v11, 0x0

    .line 108
    .local v11, "recycledCount":I
    iget-object v7, v6, Lcom/oneplus/gl/EglContextManager$EglContextState;->activeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    .line 109
    .local v7, "holder":Lcom/oneplus/gl/EglObjectHolder;
    :goto_1
    if-eqz v7, :cond_2

    .line 111
    iget-object v8, v7, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 112
    .local v8, "nextHolder":Lcom/oneplus/gl/EglObjectHolder;
    iget-object v0, v7, Lcom/oneplus/gl/EglObjectHolder;->eglObject:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gl/EglObject;

    .line 113
    .local v10, "obj":Lcom/oneplus/gl/EglObject;
    if-eqz v10, :cond_1

    .line 115
    add-int/lit8 v9, v9, 0x1

    .line 116
    invoke-virtual {v10}, Lcom/oneplus/gl/EglObject;->onEglContextReady()V

    .line 123
    :goto_2
    move-object v7, v8

    .line 124
    goto :goto_1

    .line 120
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 121
    invoke-static {v6, v7}, Lcom/oneplus/gl/EglContextManager;->recycleEglObjectHolder(Lcom/oneplus/gl/EglContextManager$EglContextState;Lcom/oneplus/gl/EglObjectHolder;)V

    goto :goto_2

    .line 125
    .end local v8    # "nextHolder":Lcom/oneplus/gl/EglObjectHolder;
    .end local v10    # "obj":Lcom/oneplus/gl/EglObject;
    :cond_2
    const-string v0, "EglContextManager"

    const-string v1, "notifyEglContextReady() - "

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " notified, "

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, " recycled"

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static recycleEglObjectHolder(Lcom/oneplus/gl/EglContextManager$EglContextState;Lcom/oneplus/gl/EglObjectHolder;)V
    .locals 3
    .param p0, "contextState"    # Lcom/oneplus/gl/EglContextManager$EglContextState;
    .param p1, "holder"    # Lcom/oneplus/gl/EglObjectHolder;

    .prologue
    const/4 v2, 0x0

    .line 132
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 134
    iget-object v0, p1, Lcom/oneplus/gl/EglObjectHolder;->prevHolder:Lcom/oneplus/gl/EglObjectHolder;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p1, Lcom/oneplus/gl/EglObjectHolder;->prevHolder:Lcom/oneplus/gl/EglObjectHolder;

    iget-object v1, p1, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    iput-object v1, v0, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 136
    :cond_0
    iget-object v0, p1, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p1, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    iget-object v1, p1, Lcom/oneplus/gl/EglObjectHolder;->prevHolder:Lcom/oneplus/gl/EglObjectHolder;

    iput-object v1, v0, Lcom/oneplus/gl/EglObjectHolder;->prevHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 138
    :cond_1
    iput-object v2, p1, Lcom/oneplus/gl/EglObjectHolder;->prevHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 139
    iget-object v0, p0, Lcom/oneplus/gl/EglContextManager$EglContextState;->freeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    iput-object v0, p1, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 140
    iget-object v0, p0, Lcom/oneplus/gl/EglContextManager$EglContextState;->freeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/oneplus/gl/EglContextManager$EglContextState;->freeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    iput-object p1, v0, Lcom/oneplus/gl/EglObjectHolder;->prevHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 142
    :cond_2
    iput-object p1, p0, Lcom/oneplus/gl/EglContextManager$EglContextState;->freeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    .line 143
    iput-object v2, p1, Lcom/oneplus/gl/EglObjectHolder;->eglObject:Ljava/lang/ref/WeakReference;

    .line 145
    :cond_3
    return-void
.end method

.method static registerEglObject(Lcom/oneplus/gl/EglObject;)V
    .locals 4
    .param p0, "obj"    # Lcom/oneplus/gl/EglObject;

    .prologue
    const/4 v3, 0x0

    .line 151
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/oneplus/gl/EglContextManager;->getEglContextState(Z)Lcom/oneplus/gl/EglContextManager$EglContextState;

    move-result-object v0

    .line 152
    .local v0, "contextState":Lcom/oneplus/gl/EglContextManager$EglContextState;
    iget-object v1, v0, Lcom/oneplus/gl/EglContextManager$EglContextState;->freeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    .line 153
    .local v1, "holder":Lcom/oneplus/gl/EglObjectHolder;
    if-eqz v1, :cond_2

    .line 155
    iput-object v3, v1, Lcom/oneplus/gl/EglObjectHolder;->prevHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 156
    iget-object v2, v1, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, v1, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    iput-object v3, v2, Lcom/oneplus/gl/EglObjectHolder;->prevHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 161
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/oneplus/gl/EglObjectHolder;->eglObject:Ljava/lang/ref/WeakReference;

    .line 162
    iget-object v2, v0, Lcom/oneplus/gl/EglContextManager$EglContextState;->activeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    iput-object v2, v1, Lcom/oneplus/gl/EglObjectHolder;->nextHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 163
    iget-object v2, v0, Lcom/oneplus/gl/EglContextManager$EglContextState;->activeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    if-eqz v2, :cond_1

    .line 164
    iget-object v2, v0, Lcom/oneplus/gl/EglContextManager$EglContextState;->activeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

    iput-object v1, v2, Lcom/oneplus/gl/EglObjectHolder;->prevHolder:Lcom/oneplus/gl/EglObjectHolder;

    .line 165
    :cond_1
    iput-object v1, p0, Lcom/oneplus/gl/EglObject;->holder:Lcom/oneplus/gl/EglObjectHolder;

    .line 166
    return-void

    .line 160
    :cond_2
    new-instance v1, Lcom/oneplus/gl/EglObjectHolder;

    .end local v1    # "holder":Lcom/oneplus/gl/EglObjectHolder;
    invoke-direct {v1}, Lcom/oneplus/gl/EglObjectHolder;-><init>()V

    .restart local v1    # "holder":Lcom/oneplus/gl/EglObjectHolder;
    goto :goto_0
.end method

.method static unregisterEglObject(Lcom/oneplus/gl/EglObject;)V
    .locals 2
    .param p0, "obj"    # Lcom/oneplus/gl/EglObject;

    .prologue
    .line 172
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/oneplus/gl/EglContextManager;->getEglContextState(Z)Lcom/oneplus/gl/EglContextManager$EglContextState;

    move-result-object v0

    .line 173
    .local v0, "contextState":Lcom/oneplus/gl/EglContextManager$EglContextState;
    iget-object v1, p0, Lcom/oneplus/gl/EglObject;->holder:Lcom/oneplus/gl/EglObjectHolder;

    invoke-static {v0, v1}, Lcom/oneplus/gl/EglContextManager;->recycleEglObjectHolder(Lcom/oneplus/gl/EglContextManager$EglContextState;Lcom/oneplus/gl/EglObjectHolder;)V

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/gl/EglObject;->holder:Lcom/oneplus/gl/EglObjectHolder;

    .line 175
    return-void
.end method
